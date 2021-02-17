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

extension ApplicationAutoScaling {
    ///  Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
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
    public func describeScalableTargetsPaginator<Result>(
        _ input: DescribeScalableTargetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeScalableTargetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScalableTargets,
            tokenKey: \DescribeScalableTargetsResponse.nextToken,
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
    public func describeScalableTargetsPaginator(
        _ input: DescribeScalableTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeScalableTargetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalableTargets,
            tokenKey: \DescribeScalableTargetsResponse.nextToken,
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
    public func describeScalableTargetsPaginator(
        _ input: DescribeScalableTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScalableTargetsRequest, DescribeScalableTargetsResponse> {
        return .init(
            input: input,
            command: describeScalableTargets,
            inputKey: \DescribeScalableTargetsRequest.nextToken,
            outputKey: \DescribeScalableTargetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension.
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
    public func describeScalingActivitiesPaginator<Result>(
        _ input: DescribeScalingActivitiesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeScalingActivitiesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScalingActivities,
            tokenKey: \DescribeScalingActivitiesResponse.nextToken,
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
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeScalingActivitiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalingActivities,
            tokenKey: \DescribeScalingActivitiesResponse.nextToken,
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
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScalingActivitiesRequest, DescribeScalingActivitiesResponse> {
        return .init(
            input: input,
            command: describeScalingActivities,
            inputKey: \DescribeScalingActivitiesRequest.nextToken,
            outputKey: \DescribeScalingActivitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target Tracking Scaling Policies and Step Scaling Policies in the Application Auto Scaling User Guide.
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
    public func describeScalingPoliciesPaginator<Result>(
        _ input: DescribeScalingPoliciesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeScalingPoliciesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScalingPolicies,
            tokenKey: \DescribeScalingPoliciesResponse.nextToken,
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
    public func describeScalingPoliciesPaginator(
        _ input: DescribeScalingPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeScalingPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalingPolicies,
            tokenKey: \DescribeScalingPoliciesResponse.nextToken,
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
    public func describeScalingPoliciesPaginator(
        _ input: DescribeScalingPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScalingPoliciesRequest, DescribeScalingPoliciesResponse> {
        return .init(
            input: input,
            command: describeScalingPolicies,
            inputKey: \DescribeScalingPoliciesRequest.nextToken,
            outputKey: \DescribeScalingPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled Scaling in the Application Auto Scaling User Guide.
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
    public func describeScheduledActionsPaginator<Result>(
        _ input: DescribeScheduledActionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeScheduledActionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScheduledActions,
            tokenKey: \DescribeScheduledActionsResponse.nextToken,
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
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeScheduledActionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScheduledActions,
            tokenKey: \DescribeScheduledActionsResponse.nextToken,
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
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScheduledActionsRequest, DescribeScheduledActionsResponse> {
        return .init(
            input: input,
            command: describeScheduledActions,
            inputKey: \DescribeScheduledActionsRequest.nextToken,
            outputKey: \DescribeScheduledActionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

extension ApplicationAutoScaling.DescribeScalableTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalableTargetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceIds: self.resourceIds,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScalingActivitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingActivitiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScalingPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingPoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            policyNames: self.policyNames,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScheduledActionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScheduledActionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            scheduledActionNames: self.scheduledActionNames,
            serviceNamespace: self.serviceNamespace
        )
    }
}
