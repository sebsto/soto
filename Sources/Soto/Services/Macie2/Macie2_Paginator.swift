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

extension Macie2 {
    ///   Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
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
    public func describeBucketsPaginator<Result>(
        _ input: DescribeBucketsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeBucketsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeBuckets,
            tokenKey: \DescribeBucketsResponse.nextToken,
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
    public func describeBucketsPaginator(
        _ input: DescribeBucketsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeBucketsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeBuckets,
            tokenKey: \DescribeBucketsResponse.nextToken,
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
    public func describeBucketsPaginator(
        _ input: DescribeBucketsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBucketsRequest, DescribeBucketsResponse> {
        return .init(
            input: input,
            command: describeBuckets,
            inputKey: \DescribeBucketsRequest.nextToken,
            outputKey: \DescribeBucketsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
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
    public func getUsageStatisticsPaginator<Result>(
        _ input: GetUsageStatisticsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetUsageStatisticsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getUsageStatistics,
            tokenKey: \GetUsageStatisticsResponse.nextToken,
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
    public func getUsageStatisticsPaginator(
        _ input: GetUsageStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetUsageStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getUsageStatistics,
            tokenKey: \GetUsageStatisticsResponse.nextToken,
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
    public func getUsageStatisticsPaginator(
        _ input: GetUsageStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsageStatisticsRequest, GetUsageStatisticsResponse> {
        return .init(
            input: input,
            command: getUsageStatistics,
            inputKey: \GetUsageStatisticsRequest.nextToken,
            outputKey: \GetUsageStatisticsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about one or more classification jobs.
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
    public func listClassificationJobsPaginator<Result>(
        _ input: ListClassificationJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListClassificationJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listClassificationJobs,
            tokenKey: \ListClassificationJobsResponse.nextToken,
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
    public func listClassificationJobsPaginator(
        _ input: ListClassificationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListClassificationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listClassificationJobs,
            tokenKey: \ListClassificationJobsResponse.nextToken,
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
    public func listClassificationJobsPaginator(
        _ input: ListClassificationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClassificationJobsRequest, ListClassificationJobsResponse> {
        return .init(
            input: input,
            command: listClassificationJobs,
            inputKey: \ListClassificationJobsRequest.nextToken,
            outputKey: \ListClassificationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about all the custom data identifiers for an account.
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
    public func listCustomDataIdentifiersPaginator<Result>(
        _ input: ListCustomDataIdentifiersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomDataIdentifiersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomDataIdentifiers,
            tokenKey: \ListCustomDataIdentifiersResponse.nextToken,
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
    public func listCustomDataIdentifiersPaginator(
        _ input: ListCustomDataIdentifiersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomDataIdentifiersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomDataIdentifiers,
            tokenKey: \ListCustomDataIdentifiersResponse.nextToken,
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
    public func listCustomDataIdentifiersPaginator(
        _ input: ListCustomDataIdentifiersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomDataIdentifiersRequest, ListCustomDataIdentifiersResponse> {
        return .init(
            input: input,
            command: listCustomDataIdentifiers,
            inputKey: \ListCustomDataIdentifiersRequest.nextToken,
            outputKey: \ListCustomDataIdentifiersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Retrieves a subset of information about one or more findings.
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
    public func listFindingsPaginator<Result>(
        _ input: ListFindingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindings,
            tokenKey: \ListFindingsResponse.nextToken,
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
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindings,
            tokenKey: \ListFindingsResponse.nextToken,
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
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsRequest, ListFindingsResponse> {
        return .init(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about all the findings filters for an account.
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
    public func listFindingsFiltersPaginator<Result>(
        _ input: ListFindingsFiltersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingsFiltersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindingsFilters,
            tokenKey: \ListFindingsFiltersResponse.nextToken,
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
    public func listFindingsFiltersPaginator(
        _ input: ListFindingsFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingsFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindingsFilters,
            tokenKey: \ListFindingsFiltersResponse.nextToken,
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
    public func listFindingsFiltersPaginator(
        _ input: ListFindingsFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsFiltersRequest, ListFindingsFiltersResponse> {
        return .init(
            input: input,
            command: listFindingsFilters,
            inputKey: \ListFindingsFiltersRequest.nextToken,
            outputKey: \ListFindingsFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about all the Amazon Macie membership invitations that were received by an account.
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
    public func listInvitationsPaginator<Result>(
        _ input: ListInvitationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInvitationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInvitations,
            tokenKey: \ListInvitationsResponse.nextToken,
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
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInvitationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInvitations,
            tokenKey: \ListInvitationsResponse.nextToken,
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
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInvitationsRequest, ListInvitationsResponse> {
        return .init(
            input: input,
            command: listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the accounts that are associated with an Amazon Macie master account.
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
    public func listMembersPaginator<Result>(
        _ input: ListMembersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMembersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMembers,
            tokenKey: \ListMembersResponse.nextToken,
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
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMembersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMembers,
            tokenKey: \ListMembersResponse.nextToken,
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
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMembersRequest, ListMembersResponse> {
        return .init(
            input: input,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the delegated Amazon Macie administrator account for an AWS organization.
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
    public func listOrganizationAdminAccountsPaginator<Result>(
        _ input: ListOrganizationAdminAccountsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOrganizationAdminAccountsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listOrganizationAdminAccounts,
            tokenKey: \ListOrganizationAdminAccountsResponse.nextToken,
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
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOrganizationAdminAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listOrganizationAdminAccounts,
            tokenKey: \ListOrganizationAdminAccountsResponse.nextToken,
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
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationAdminAccountsRequest, ListOrganizationAdminAccountsResponse> {
        return .init(
            input: input,
            command: listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

extension Macie2.DescribeBucketsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.DescribeBucketsRequest {
        return .init(
            criteria: self.criteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension Macie2.GetUsageStatisticsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.GetUsageStatisticsRequest {
        return .init(
            filterBy: self.filterBy,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Macie2.ListClassificationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListClassificationJobsRequest {
        return .init(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension Macie2.ListCustomDataIdentifiersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListCustomDataIdentifiersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Macie2.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListFindingsRequest {
        return .init(
            findingCriteria: self.findingCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension Macie2.ListFindingsFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListFindingsFiltersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Macie2.ListInvitationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListInvitationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Macie2.ListMembersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListMembersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )
    }
}

extension Macie2.ListOrganizationAdminAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListOrganizationAdminAccountsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
