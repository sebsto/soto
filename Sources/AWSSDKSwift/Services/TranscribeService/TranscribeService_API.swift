// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Operations and objects for transcribing speech to text.
*/
public struct TranscribeService {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [TranscribeServiceErrorType.self]
        )
    }

    ///  Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. 
    public func createVocabulary(_ input: CreateVocabularyRequest) throws -> Future<CreateVocabularyResponse> {
        return try client.send(operation: "CreateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    @discardableResult public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a vocabulary from Amazon Transcribe. 
    @discardableResult public func deleteVocabulary(_ input: DeleteVocabularyRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptionFileUri field.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest) throws -> Future<GetTranscriptionJobResponse> {
        return try client.send(operation: "GetTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a vocabulary. 
    public func getVocabulary(_ input: GetVocabularyRequest) throws -> Future<GetVocabularyResponse> {
        return try client.send(operation: "GetVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest) throws -> Future<ListTranscriptionJobsResponse> {
        return try client.send(operation: "ListTranscriptionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest) throws -> Future<ListVocabulariesResponse> {
        return try client.send(operation: "ListVocabularies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous job to transcribe speech to text. 
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest) throws -> Future<StartTranscriptionJobResponse> {
        return try client.send(operation: "StartTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. 
    public func updateVocabulary(_ input: UpdateVocabularyRequest) throws -> Future<UpdateVocabularyResponse> {
        return try client.send(operation: "UpdateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

}
