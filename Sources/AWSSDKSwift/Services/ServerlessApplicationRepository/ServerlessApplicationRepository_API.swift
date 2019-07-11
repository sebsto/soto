// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
 and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
 see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
 all levels can get started with serverless computing without needing to learn anything new. You can use category 
 keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
 You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
 configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately
 within your team or across your organization. To publish a serverless application (or app), you can use the
 AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
 code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
 For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
 GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer
 experiences available:
 
 Consuming Applications – Browse for applications and view information about them, including
 source code and readme files. Also install, configure, and deploy applications of your choosing. 
 Publishing Applications – Configure and upload applications to make them available to other
 developers, and publish new versions of applications. 
 
 
*/
public struct ServerlessApplicationRepository {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "serverlessrepo",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ServerlessApplicationRepositoryErrorType.self]
        )
    }

    ///  Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    public func createApplication(_ input: CreateApplicationRequest) throws -> Future<CreateApplicationResponse> {
        return try client.send(operation: "CreateApplication", path: "/applications", httpMethod: "POST", input: input)
    }

    ///  Creates an application version.
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest) throws -> Future<CreateApplicationVersionResponse> {
        return try client.send(operation: "CreateApplicationVersion", path: "/applications/{applicationId}/versions/{semanticVersion}", httpMethod: "PUT", input: input)
    }

    ///  Creates an AWS CloudFormation change set for the given application.
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest) throws -> Future<CreateCloudFormationChangeSetResponse> {
        return try client.send(operation: "CreateCloudFormationChangeSet", path: "/applications/{applicationId}/changesets", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS CloudFormation template.
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest) throws -> Future<CreateCloudFormationTemplateResponse> {
        return try client.send(operation: "CreateCloudFormationTemplate", path: "/applications/{applicationId}/templates", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: "DELETE", input: input)
    }

    ///  Gets the specified application.
    public func getApplication(_ input: GetApplicationRequest) throws -> Future<GetApplicationResponse> {
        return try client.send(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the policy for the application.
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest) throws -> Future<GetApplicationPolicyResponse> {
        return try client.send(operation: "GetApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "GET", input: input)
    }

    ///  Gets the specified AWS CloudFormation template.
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest) throws -> Future<GetCloudFormationTemplateResponse> {
        return try client.send(operation: "GetCloudFormationTemplate", path: "/applications/{applicationId}/templates/{templateId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest) throws -> Future<ListApplicationDependenciesResponse> {
        return try client.send(operation: "ListApplicationDependencies", path: "/applications/{applicationId}/dependencies", httpMethod: "GET", input: input)
    }

    ///  Lists versions for the specified application.
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest) throws -> Future<ListApplicationVersionsResponse> {
        return try client.send(operation: "ListApplicationVersions", path: "/applications/{applicationId}/versions", httpMethod: "GET", input: input)
    }

    ///  Lists applications owned by the requester.
    public func listApplications(_ input: ListApplicationsRequest) throws -> Future<ListApplicationsResponse> {
        return try client.send(operation: "ListApplications", path: "/applications", httpMethod: "GET", input: input)
    }

    ///  Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///   Application 
    ///   Permissions
    ///   .
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest) throws -> Future<PutApplicationPolicyResponse> {
        return try client.send(operation: "PutApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "PUT", input: input)
    }

    ///  Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest) throws -> Future<UpdateApplicationResponse> {
        return try client.send(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: "PATCH", input: input)
    }

}
