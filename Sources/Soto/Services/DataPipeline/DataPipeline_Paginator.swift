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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension DataPipeline {
    ///  Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeObjectsPaginator<Result>(
        _ input: DescribeObjectsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeObjectsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeObjects,
            tokenKey: \DescribeObjectsOutput.marker,
            moreResultsKey: \DescribeObjectsOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeObjectsPaginator(
        _ input: DescribeObjectsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeObjectsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeObjects,
            tokenKey: \DescribeObjectsOutput.marker,
            moreResultsKey: \DescribeObjectsOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeObjectsPaginator(
        _ input: DescribeObjectsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeObjectsInput, DescribeObjectsOutput> {
        return .init(
            input: input,
            command: describeObjects,
            inputKey: \DescribeObjectsInput.marker,
            outputKey: \DescribeObjectsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the pipeline identifiers for all active pipelines that you have permission to access.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPipelinesPaginator<Result>(
        _ input: ListPipelinesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPipelinesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPipelines,
            tokenKey: \ListPipelinesOutput.marker,
            moreResultsKey: \ListPipelinesOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPipelinesPaginator(
        _ input: ListPipelinesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPipelinesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelines,
            tokenKey: \ListPipelinesOutput.marker,
            moreResultsKey: \ListPipelinesOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPipelinesPaginator(
        _ input: ListPipelinesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPipelinesInput, ListPipelinesOutput> {
        return .init(
            input: input,
            command: listPipelines,
            inputKey: \ListPipelinesInput.marker,
            outputKey: \ListPipelinesOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Queries the specified pipeline for the names of objects that match the specified set of conditions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func queryObjectsPaginator<Result>(
        _ input: QueryObjectsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, QueryObjectsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: queryObjects,
            tokenKey: \QueryObjectsOutput.marker,
            moreResultsKey: \QueryObjectsOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func queryObjectsPaginator(
        _ input: QueryObjectsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (QueryObjectsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: queryObjects,
            tokenKey: \QueryObjectsOutput.marker,
            moreResultsKey: \QueryObjectsOutput.hasMoreResults,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func queryObjectsPaginator(
        _ input: QueryObjectsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<QueryObjectsInput, QueryObjectsOutput> {
        return .init(
            input: input,
            command: queryObjects,
            inputKey: \QueryObjectsInput.marker,
            outputKey: \QueryObjectsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }
}

extension DataPipeline.DescribeObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.DescribeObjectsInput {
        return .init(
            evaluateExpressions: self.evaluateExpressions,
            marker: token,
            objectIds: self.objectIds,
            pipelineId: self.pipelineId
        )
    }
}

extension DataPipeline.ListPipelinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.ListPipelinesInput {
        return .init(
            marker: token
        )
    }
}

extension DataPipeline.QueryObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.QueryObjectsInput {
        return .init(
            limit: self.limit,
            marker: token,
            pipelineId: self.pipelineId,
            query: self.query,
            sphere: self.sphere
        )
    }
}
