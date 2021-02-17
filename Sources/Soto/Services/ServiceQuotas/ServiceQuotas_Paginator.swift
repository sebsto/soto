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

extension ServiceQuotas {
    ///  Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota increases.
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
    public func listAWSDefaultServiceQuotasPaginator<Result>(
        _ input: ListAWSDefaultServiceQuotasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAWSDefaultServiceQuotasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAWSDefaultServiceQuotas,
            tokenKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
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
    public func listAWSDefaultServiceQuotasPaginator(
        _ input: ListAWSDefaultServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAWSDefaultServiceQuotasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAWSDefaultServiceQuotas,
            tokenKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
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
    public func listAWSDefaultServiceQuotasPaginator(
        _ input: ListAWSDefaultServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAWSDefaultServiceQuotasRequest, ListAWSDefaultServiceQuotasResponse> {
        return .init(
            input: input,
            command: listAWSDefaultServiceQuotas,
            inputKey: \ListAWSDefaultServiceQuotasRequest.nextToken,
            outputKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the quota increase requests for the specified service.
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
    public func listRequestedServiceQuotaChangeHistoryPaginator<Result>(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRequestedServiceQuotaChangeHistoryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRequestedServiceQuotaChangeHistory,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
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
    public func listRequestedServiceQuotaChangeHistoryPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRequestedServiceQuotaChangeHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRequestedServiceQuotaChangeHistory,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
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
    public func listRequestedServiceQuotaChangeHistoryPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRequestedServiceQuotaChangeHistoryRequest, ListRequestedServiceQuotaChangeHistoryResponse> {
        return .init(
            input: input,
            command: listRequestedServiceQuotaChangeHistory,
            inputKey: \ListRequestedServiceQuotaChangeHistoryRequest.nextToken,
            outputKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the quota increase requests for the specified quota.
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
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator<Result>(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRequestedServiceQuotaChangeHistoryByQuotaResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRequestedServiceQuotaChangeHistoryByQuota,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
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
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRequestedServiceQuotaChangeHistoryByQuotaResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRequestedServiceQuotaChangeHistoryByQuota,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
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
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRequestedServiceQuotaChangeHistoryByQuotaRequest, ListRequestedServiceQuotaChangeHistoryByQuotaResponse> {
        return .init(
            input: input,
            command: listRequestedServiceQuotaChangeHistoryByQuota,
            inputKey: \ListRequestedServiceQuotaChangeHistoryByQuotaRequest.nextToken,
            outputKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the quota increase requests in the specified quota request template.
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
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator<Result>(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServiceQuotaIncreaseRequestsInTemplateResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServiceQuotaIncreaseRequestsInTemplate,
            tokenKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
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
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServiceQuotaIncreaseRequestsInTemplateResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServiceQuotaIncreaseRequestsInTemplate,
            tokenKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
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
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceQuotaIncreaseRequestsInTemplateRequest, ListServiceQuotaIncreaseRequestsInTemplateResponse> {
        return .init(
            input: input,
            command: listServiceQuotaIncreaseRequestsInTemplate,
            inputKey: \ListServiceQuotaIncreaseRequestsInTemplateRequest.nextToken,
            outputKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the applied quota values for the specified AWS service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
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
    public func listServiceQuotasPaginator<Result>(
        _ input: ListServiceQuotasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServiceQuotasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServiceQuotas,
            tokenKey: \ListServiceQuotasResponse.nextToken,
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
    public func listServiceQuotasPaginator(
        _ input: ListServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServiceQuotasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServiceQuotas,
            tokenKey: \ListServiceQuotasResponse.nextToken,
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
    public func listServiceQuotasPaginator(
        _ input: ListServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceQuotasRequest, ListServiceQuotasResponse> {
        return .init(
            input: input,
            command: listServiceQuotas,
            inputKey: \ListServiceQuotasRequest.nextToken,
            outputKey: \ListServiceQuotasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the names and codes for the services integrated with Service Quotas.
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
    public func listServicesPaginator<Result>(
        _ input: ListServicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServices,
            tokenKey: \ListServicesResponse.nextToken,
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
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServices,
            tokenKey: \ListServicesResponse.nextToken,
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
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

extension ServiceQuotas.ListAWSDefaultServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListAWSDefaultServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            quotaCode: self.quotaCode,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest {
        return .init(
            awsRegion: self.awsRegion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
