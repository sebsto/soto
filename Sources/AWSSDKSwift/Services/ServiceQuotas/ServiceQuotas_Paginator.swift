// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ServiceQuotas {

    ///  Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 
    public func listAWSDefaultServiceQuotasPaginator(_ input: ListAWSDefaultServiceQuotasRequest, onPage: @escaping (ListAWSDefaultServiceQuotasResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAWSDefaultServiceQuotas, tokenKey: \ListAWSDefaultServiceQuotasResponse.nextToken, onPage: onPage)
    }

    ///  Requests a list of the changes to quotas for a service.
    public func listRequestedServiceQuotaChangeHistoryPaginator(_ input: ListRequestedServiceQuotaChangeHistoryRequest, onPage: @escaping (ListRequestedServiceQuotaChangeHistoryResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRequestedServiceQuotaChangeHistory, tokenKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken, onPage: onPage)
    }

    ///  Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator(_ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest, onPage: @escaping (ListRequestedServiceQuotaChangeHistoryByQuotaResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRequestedServiceQuotaChangeHistoryByQuota, tokenKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of the quota increase requests in the template. 
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator(_ input: ListServiceQuotaIncreaseRequestsInTemplateRequest, onPage: @escaping (ListServiceQuotaIncreaseRequestsInTemplateResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServiceQuotaIncreaseRequestsInTemplate, tokenKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken, onPage: onPage)
    }

    ///  Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 
    public func listServiceQuotasPaginator(_ input: ListServiceQuotasRequest, onPage: @escaping (ListServiceQuotasResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServiceQuotas, tokenKey: \ListServiceQuotasResponse.nextToken, onPage: onPage)
    }

    ///  Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.
    public func listServicesPaginator(_ input: ListServicesRequest, onPage: @escaping (ListServicesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServices, tokenKey: \ListServicesResponse.nextToken, onPage: onPage)
    }

}

extension ServiceQuotas.ListAWSDefaultServiceQuotasRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListAWSDefaultServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            serviceCode: self.serviceCode
        )

    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            serviceCode: self.serviceCode, 
            status: self.status
        )

    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest: AWSPaginateStringToken {
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

extension ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest {
        return .init(
            awsRegion: self.awsRegion, 
            maxResults: self.maxResults, 
            nextToken: token, 
            serviceCode: self.serviceCode
        )

    }
}

extension ServiceQuotas.ListServiceQuotasRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            serviceCode: self.serviceCode
        )

    }
}

extension ServiceQuotas.ListServicesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServicesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


