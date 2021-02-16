//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import AsyncHTTPClient
import Foundation
import NIO
import NIOHTTP1
import SotoCore
import XCTest

@testable import SotoS3

class S3Tests: XCTestCase {
    static var client: AWSClient!
    static var s3: S3!

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }

        Self.client = AWSClient(credentialProvider: TestEnvironment.credentialProvider, middlewares: TestEnvironment.middlewares, httpClientProvider: .createNew)
        Self.s3 = S3(
            client: S3Tests.client,
            region: .useast1,
            endpoint: TestEnvironment.getEndPoint(environment: "LOCALSTACK_ENDPOINT")
        )
    }

    override class func tearDown() {
        XCTAssertNoThrow(try Self.client.syncShutdown())
    }

    static func createRandomBuffer(size: Int) -> Data {
        // create buffer
        var data = Data(count: size)
        for i in 0..<size {
            data[i] = UInt8.random(in: 0...255)
        }
        return data
    }

    static func createBucket(name: String, s3: S3) async throws {
        do {
            _ = try await s3.createBucket(.init(bucket: name))
        } catch {
            switch error {
            case let error as S3ErrorType:
                switch error {
                case .bucketAlreadyOwnedByYou:
                    return
                case .bucketAlreadyExists:
                    // local stack returns bucketAlreadyExists instead of bucketAlreadyOwnedByYou
                    if !TestEnvironment.isUsingLocalstack {
                        throw error
                    }
                default:
                    throw error
                }
            default:
                throw error
            }
        }
    }
    
    static func createBucket(name: String, s3: S3) -> EventLoopFuture<Void> {
        let bucketRequest = S3.CreateBucketRequest(bucket: name)
        return s3.createBucket(bucketRequest)
            .map { _ in }
            .flatMapErrorThrowing { error in
                switch error {
                case let error as S3ErrorType:
                    switch error {
                    case .bucketAlreadyOwnedByYou:
                        return
                    case .bucketAlreadyExists:
                        // local stack returns bucketAlreadyExists instead of bucketAlreadyOwnedByYou
                        if !TestEnvironment.isUsingLocalstack {
                            throw error
                        }
                    default:
                        throw error
                    }
                default:
                    throw error
                }
            }
    }

    static func deleteBucket(name: String, s3: S3) async throws {
        let listResponse = try await s3.listObjectsV2(.init(bucket: name))
        if let objects = listResponse.contents {
            for object in objects {
                guard let key = object.key else { continue }
                _ = try await s3.deleteObject(.init(bucket: name, key: key))
            }
        }
        do {
            _ = try await s3.deleteBucket(.init(bucket: name))
        } catch {
            // when using LocalStack ignore errors from deleting buckets
            guard !TestEnvironment.isUsingLocalstack else { return }
            throw error
        }
    }

    static func deleteBucket(name: String, s3: S3) -> EventLoopFuture<Void> {
        let request = S3.ListObjectsV2Request(bucket: name)
        return s3.listObjectsV2(request)
            .flatMap { response -> EventLoopFuture<Void> in
                let eventLoop = s3.client.eventLoopGroup.next()
                guard let objects = response.contents else { return eventLoop.makeSucceededFuture(()) }
                let deleteFutureResults = objects.compactMap { $0.key.map { s3.deleteObject(.init(bucket: name, key: $0)) } }
                return EventLoopFuture.andAllSucceed(deleteFutureResults, on: eventLoop)
            }
            .flatMap { _ in
                let request = S3.DeleteBucketRequest(bucket: name)
                return s3.deleteBucket(request).map { _ in }
            }
            .flatMapErrorThrowing { error in
                // when using LocalStack ignore errors from deleting buckets
                guard !TestEnvironment.isUsingLocalstack else { return }
                throw error
            }
    }

    /// Runs test: construct bucket with supplied name, runs process and deletes bucket
    func s3Test(bucket name: String, s3: S3 = S3Tests.s3, _ process: @escaping () async throws -> ()) {
        runDetached {
            try await Self.createBucket(name: name, s3: s3)
            do {
                try await process()
            } catch {
                XCTFail("\(error)")
            }
            try await Self.deleteBucket(name: name, s3: s3)
        }
    }
    // MARK: TESTS

    func testHeadBucket() throws {
        let name = TestEnvironment.generateResourceName()
        s3Test(bucket: name) {
            try await Self.s3.headBucket(.init(bucket: name))
        }
    }

    func testPutGetObject() {
        let name = TestEnvironment.generateResourceName()
        let filename = "testfile.txt"
        let contents = "testing S3.PutObject and S3.GetObject"
        s3Test(bucket: name) {
            let putRequest = S3.PutObjectRequest(
                acl: .publicRead,
                body: .string(contents),
                bucket: name,
                contentLength: Int64(contents.utf8.count),
                key: filename
            )
            let putObjectResponse = try await Self.s3.putObject(putRequest)
            XCTAssertNotNil(putObjectResponse.eTag)
            let getObjectResponse = try await Self.s3.getObject(.init(bucket: name, key: filename, responseExpires: Date()))
            XCTAssertEqual(getObjectResponse.body?.asString(), contents)
            XCTAssertNotNil(getObjectResponse.lastModified)
        }
    }

    func testPutGetObjectWithSpecialName() {
        let name = TestEnvironment.generateResourceName()
        let filename = "test $filé+!@£$%2F%^&*()_=-[]{}\\|';:\",./?><~`.txt"
        let contents = "testing S3.PutObject and S3.GetObject"
        s3Test(bucket: name) {
            let putRequest = S3.PutObjectRequest(
                acl: .publicRead,
                body: .string(contents),
                bucket: name,
                contentLength: Int64(contents.utf8.count),
                key: filename
            )
            let putObjectResponse = try await Self.s3.putObject(putRequest)
            XCTAssertNotNil(putObjectResponse.eTag)
            let getObjectResponse = try await Self.s3.getObject(.init(bucket: name, key: filename, responseExpires: Date()))
            XCTAssertEqual(getObjectResponse.body?.asString(), contents)
            XCTAssertNotNil(getObjectResponse.lastModified)
        }
    }

    func testCopy() {
        let name = TestEnvironment.generateResourceName()
        let keyName = "file1"
        let newKeyName = "file2"
        let contents = "testing S3.PutObject and S3.GetObject"
        s3Test(bucket: name) {
            _ = try await Self.s3.putObject(.init(body: .string(contents), bucket: name, key: keyName))
            _ = try await Self.s3.copyObject(.init(bucket: name, copySource: "\(name)/\(keyName)", key: newKeyName))
            let getResponse = try await Self.s3.getObject(.init(bucket: name, key: newKeyName))
            XCTAssertEqual(getResponse.body?.asString(), contents)
        }
    }

    /// test uploaded objects are returned in ListObjects
    func testListObjects() {
        let name = TestEnvironment.generateResourceName()
        let contents = "testing S3.ListObjectsV2"

        s3Test(bucket: name) {
            let putResponse = try await Self.s3.putObject(.init(body: .string(contents), bucket: name, key: name))
            let eTag = try XCTUnwrap(putResponse.eTag)
            let listResponse = try await Self.s3.listObjectsV2(.init(bucket: name))
            XCTAssertEqual(listResponse.contents?.first?.key, name)
            XCTAssertEqual(listResponse.contents?.first?.size, Int64(contents.utf8.count))
            XCTAssertEqual(listResponse.contents?.first?.eTag, eTag)
            XCTAssertNotNil(listResponse.contents?.first?.lastModified)
        }
    }

    func testStreamPutObject() {
        let s3 = Self.s3.with(timeout: .minutes(2))
        let name = TestEnvironment.generateResourceName()
        let dataSize = 240 * 1024
        let blockSize = 64 * 1024
        let data = Self.createRandomBuffer(size: 240 * 1024)
        var byteBuffer = ByteBufferAllocator().buffer(capacity: dataSize)
        byteBuffer.writeBytes(data)

        s3Test(bucket: name) {
            let payload = AWSPayload.stream(size: dataSize) { eventLoop in
                let size = min(blockSize, byteBuffer.readableBytes)
                if size == 0 {
                    return eventLoop.makeSucceededFuture(.end)
                }
                let slice = byteBuffer.readSlice(length: size)!
                return eventLoop.makeSucceededFuture(.byteBuffer(slice))
            }
            let putRequest = S3.PutObjectRequest(body: payload, bucket: name, key: "tempfile")
            _ = try await s3.putObject(putRequest)
            let getResponse = try await s3.getObject(.init(bucket: name, key: "tempfile"))
            XCTAssertEqual(getResponse.body?.asData(), data)
        }
    }

    /// test lifecycle rules are uploaded and downloaded ok
    func testLifecycleRule() {
        let name = TestEnvironment.generateResourceName()

        s3Test(bucket: name) {
            // set lifecycle rules
            let incompleteMultipartUploads = S3.AbortIncompleteMultipartUpload(daysAfterInitiation: 7) // clear incomplete multipart uploads after 7 days
            let filter = S3.LifecycleRuleFilter(prefix: "") // everything
            let transitions = [S3.Transition(days: 14, storageClass: .glacier)] // transition objects to glacier after 14 days
            let lifecycleRules = S3.LifecycleRule(
                abortIncompleteMultipartUpload: incompleteMultipartUploads,
                filter: filter,
                id: "aws-test",
                status: .enabled,
                transitions: transitions
            )
            let request = S3.PutBucketLifecycleConfigurationRequest(bucket: name, lifecycleConfiguration: .init(rules: [lifecycleRules]))
            _ = try await Self.s3.putBucketLifecycleConfiguration(request)
            let getResponse = try await Self.s3.getBucketLifecycleConfiguration(.init(bucket: name))

            XCTAssertEqual(getResponse.rules?[0].transitions?[0].storageClass, .glacier)
            XCTAssertEqual(getResponse.rules?[0].transitions?[0].days, 14)
            XCTAssertEqual(getResponse.rules?[0].abortIncompleteMultipartUpload?.daysAfterInitiation, 7)
        }
    }

    func testMultipleUpload() {
        let name = TestEnvironment.generateResourceName()
        s3Test(bucket: name) {
            try await Task.withGroup(resultType: Void.self) { group in
                for index in 1...16 {
                    await group.add {
                        let body = "testMultipleUpload - " + index.description
                        let filename = "file" + index.description
                        _ = try await Self.s3.putObject(.init(body: .string(body), bucket: name, key: filename))
                        let bodyOutput = try await Self.s3.getObject(.init(bucket: name, key: filename)).body
                        XCTAssertEqual(bodyOutput?.asString(), body)
                    }
                }
            }
        }
    }

    /// testing decoding of values in xml attributes
    func testGetAclRequestPayer() {
        let name = TestEnvironment.generateResourceName()
        let contents = "testing xml attributes header"

        s3Test(bucket: name) {
            let putRequest = S3.PutObjectRequest(
                body: .string(contents),
                bucket: name,
                key: name
            )
            _ = try await Self.s3.putObject(putRequest)
            _ = try await Self.s3.getObjectAcl(.init(bucket: name, key: name, requestPayer: .requester))
        }
    }

    func testListPaginator() {
        let name = TestEnvironment.generateResourceName()
        let eventLoop = Self.s3.client.eventLoopGroup.next()
        var list: [S3.Object] = []
        var list2: [S3.Object] = []
        let response = Self.createBucket(name: name, s3: Self.s3)
            .flatMap { (_) -> EventLoopFuture<Void> in
                // put 16 files into bucket
                let futureResults: [EventLoopFuture<S3.PutObjectOutput>] = (1...16).map {
                    let body = "testMultipleUpload - " + $0.description
                    let filename = "file" + $0.description
                    return Self.s3.putObject(.init(body: .string(body), bucket: name, key: filename))
                }
                return EventLoopFuture.whenAllSucceed(futureResults, on: eventLoop).map { _ in }
            }
            .flatMap { _ in
                return Self.s3.listObjectsV2Paginator(.init(bucket: name, maxKeys: 5)) { result, eventLoop in
                    list.append(contentsOf: result.contents ?? [])
                    return eventLoop.makeSucceededFuture(true)
                }
            }
            .flatMap { _ in
                // test both types of paginator
                return Self.s3.listObjectsV2Paginator(.init(bucket: name, maxKeys: 5), []) { list, result, eventLoop in
                    return eventLoop.makeSucceededFuture((true, list + (result.contents ?? [])))
                }
            }
            .flatMap { result in
                list2 = result
                return Self.s3.listObjectsV2(.init(bucket: name))
            }
            .map { (response: S3.ListObjectsV2Output) in
                XCTAssertEqual(list.count, response.contents?.count)
                for i in 0..<list.count {
                    XCTAssertEqual(list[i].key, response.contents?[i].key)
                    XCTAssertEqual(list2[i].key, response.contents?[i].key)
                }
            }
            .flatAlways { _ in
                return Self.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testStreamRequestObject() {
        // testing eventLoop so need to use MultiThreadedEventLoopGroup
        let elg = MultiThreadedEventLoopGroup(numberOfThreads: 3)
        let httpClient = HTTPClient(eventLoopGroupProvider: .shared(elg))
        let client = AWSClient(
            credentialProvider: TestEnvironment.credentialProvider,
            middlewares: TestEnvironment.middlewares,
            httpClientProvider: .shared(httpClient)
        )
        let s3 = S3(
            client: client,
            region: .useast1,
            endpoint: TestEnvironment.getEndPoint(environment: "LOCALSTACK_ENDPOINT")
        )
        defer {
            XCTAssertNoThrow(try client.syncShutdown())
            XCTAssertNoThrow(try httpClient.syncShutdown())
            XCTAssertNoThrow(try elg.syncShutdownGracefully())
        }

        let runOnEventLoop = s3.client.eventLoopGroup.next()

        // create buffer
        let dataSize = 457_017
        var data = Data(count: dataSize)
        for i in 0..<dataSize {
            data[i] = UInt8.random(in: 0...255)
        }
        var byteBuffer = ByteBufferAllocator().buffer(data: data)
        let payload = AWSPayload.stream(size: dataSize) { eventLoop in
            XCTAssertTrue(eventLoop === runOnEventLoop)
            let size = min(100_000, byteBuffer.readableBytes)
            let slice = byteBuffer.readSlice(length: size)!
            return eventLoop.makeSucceededFuture(.byteBuffer(slice))
        }
        let name = TestEnvironment.generateResourceName()

        s3Test(bucket: name, s3: s3) {
            let putRequest = S3.PutObjectRequest(body: payload, bucket: name, key: "tempfile")
            _ = try await s3.putObject(putRequest, on: runOnEventLoop)
            let getRequest = S3.GetObjectRequest(bucket: name, key: "tempfile")
            let getResponse = try await s3.getObject(getRequest, on: runOnEventLoop)
            XCTAssertEqual(data, getResponse.body?.asData())
        }
    }

    func testStreamResponseObject() {
        // testing eventLoop so need to use MultiThreadedEventLoopGroup
        let elg = MultiThreadedEventLoopGroup(numberOfThreads: 3)
        let httpClient = HTTPClient(eventLoopGroupProvider: .shared(elg))
        let client = AWSClient(
            credentialProvider: TestEnvironment.credentialProvider,
            middlewares: TestEnvironment.middlewares,
            httpClientProvider: .shared(httpClient)
        )
        let s3 = S3(
            client: client,
            region: .euwest1,
            endpoint: TestEnvironment.getEndPoint(environment: "LOCALSTACK_ENDPOINT")
        )
        defer {
            XCTAssertNoThrow(try client.syncShutdown())
            XCTAssertNoThrow(try httpClient.syncShutdown())
            XCTAssertNoThrow(try elg.syncShutdownGracefully())
        }

        // create buffer
        let dataSize = 257 * 1024
        var data = Data(count: dataSize)
        for i in 0..<dataSize {
            data[i] = UInt8.random(in: 0...255)
        }

        let name = TestEnvironment.generateResourceName()
        let runOnEventLoop = s3.client.eventLoopGroup.next()
        var byteBufferCollate = ByteBufferAllocator().buffer(capacity: dataSize)

        s3Test(bucket: name, s3: s3) {
            let putRequest = S3.PutObjectRequest(body: .data(data), bucket: name, key: "tempfile")
            _ = try await s3.putObject(putRequest, on: runOnEventLoop)
            let getRequest = S3.GetObjectRequest(bucket: name, key: "tempfile")
            _ = try await s3.getObjectStreaming(getRequest, on: runOnEventLoop) { byteBuffer, eventLoop in
                XCTAssertTrue(eventLoop === runOnEventLoop)
                var byteBuffer = byteBuffer
                byteBufferCollate.writeBuffer(&byteBuffer)
                return eventLoop.makeSucceededFuture(())
            }
            XCTAssertEqual(data, byteBufferCollate.getData(at: 0, length: byteBufferCollate.readableBytes))
        }
    }

    /// testing Date format in response headers
    func testMultipartAbortDate() {
        let name = TestEnvironment.generateResourceName()

        s3Test(bucket: name) {
            let rule = S3.LifecycleRule(abortIncompleteMultipartUpload: .init(daysAfterInitiation: 7), filter: .init(prefix: ""), id: "multipart-upload", status: .enabled)
            let request = S3.PutBucketLifecycleConfigurationRequest(
                bucket: name,
                lifecycleConfiguration: .init(rules: [rule])
            )
            _ = try await Self.s3.putBucketLifecycleConfiguration(request)
            let createResponse = try await Self.s3.createMultipartUpload(.init(bucket: name, key: "test"))
            guard let uploadId = createResponse.uploadId else { throw AWSClientError.missingParameter }
            _ = try await Self.s3.abortMultipartUpload(.init(bucket: name, key: "test", uploadId: uploadId))
        }
    }

    func testSignedURL() {
        // doesnt work with LocalStack
        guard !TestEnvironment.isUsingLocalstack else { return }

        let name = TestEnvironment.generateResourceName()
        let httpClient = HTTPClient(eventLoopGroupProvider: .createNew)
        defer { XCTAssertNoThrow(try httpClient.syncShutdown()) }
        let s3Url = URL(string: "https://\(name).s3.us-east-1.amazonaws.com/\(name)!=%25+/*()_.txt")!

        s3Test(bucket: name) {
            let putURL = try await Self.s3.signURL(url: s3Url, httpMethod: .PUT, expires: .minutes(5)).get()
            let buffer = ByteBufferAllocator().buffer(string: "Testing upload via signed URL")

            let response = try await httpClient.put(url: putURL.absoluteString, body: .byteBuffer(buffer), deadline: .now() + .minutes(5)).get()
            XCTAssertEqual(response.status, .ok)

            let contents = try await Self.s3.listObjectsV2(.init(bucket: name)).contents
            XCTAssertEqual(contents?.first?.key, "\(name)!=%+/*()_.txt")

            let getURL = try await Self.s3.signURL(url: s3Url, httpMethod: .GET, expires: .minutes(5)).get()
            let getResponse = try await httpClient.get(url: getURL.absoluteString).get()

            XCTAssertEqual(getResponse.status, .ok)
            let buffer2 = try XCTUnwrap(getResponse.body)
            XCTAssertEqual(String(buffer: buffer2), "Testing upload via signed URL")
        }
    }

    func testDualStack() {
        // doesnt work with LocalStack
        guard !TestEnvironment.isUsingLocalstack else { return }

        let s3 = Self.s3.with(options: .s3UseDualStackEndpoint)
        let name = TestEnvironment.generateResourceName()
        let filename = "testfile.txt"
        let contents = "testing S3.PutObject and S3.GetObject"
        s3Test(bucket: name, s3: s3) {
            let putRequest = S3.PutObjectRequest(
                acl: .publicRead,
                body: .string(contents),
                bucket: name,
                contentLength: Int64(contents.utf8.count),
                key: filename
            )
            let putObjectResponse = try await s3.putObject(putRequest)
            XCTAssertNotNil(putObjectResponse.eTag)
            let getObjectResponse = try await s3.getObject(.init(bucket: name, key: filename, responseExpires: Date()))
            XCTAssertEqual(getObjectResponse.body?.asString(), contents)
            XCTAssertNotNil(getObjectResponse.lastModified)
        }
    }

    func testTransferAccelerated() {
        // doesnt work with LocalStack
        guard !TestEnvironment.isUsingLocalstack else { return }

        let s3Accelerated = Self.s3.with(options: .s3UseTransferAcceleratedEndpoint)
        let name = TestEnvironment.generateResourceName()
        let filename = "testfile.txt"
        let contents = "testing S3.PutObject and S3.GetObject"
        s3Test(bucket: name) {
            let accelerationRequest = S3.PutBucketAccelerateConfigurationRequest(accelerateConfiguration: .init(status: .enabled), bucket: name)
            _ = try await Self.s3.putBucketAccelerateConfiguration(accelerationRequest)
            let putRequest = S3.PutObjectRequest(
                acl: .publicRead,
                body: .string(contents),
                bucket: name,
                contentLength: Int64(contents.utf8.count),
                key: filename
            )
            let putObjectResponse = try await s3Accelerated.putObject(putRequest)
            XCTAssertNotNil(putObjectResponse.eTag)
            let getObjectResponse = try await Self.s3.getObject(.init(bucket: name, key: filename, responseExpires: Date()))
            XCTAssertEqual(getObjectResponse.body?.asString(), contents)
            XCTAssertNotNil(getObjectResponse.lastModified)
        }
    }

    func testError() {
        // get wrong error with LocalStack
        guard !TestEnvironment.isUsingLocalstack else { return }

        runDetached {
            do {
                _ = try await Self.s3.deleteBucket(.init(bucket: "nosuch-bucket-name3458bjhdfgdf"))
            } catch {
                switch error {
                case let error as S3ErrorType where error == .noSuchBucket:
                    XCTAssertNotNil(error.message)
                default:
                    XCTFail("Wrong error: \(error)")
                }
            }
        }
    }
}
