// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Transfer for SFTP is a fully managed service that enables the transfer of files directly into and out of Amazon S3 using the Secure File Transfer Protocol (SFTP)—also known as Secure Shell (SSH) File Transfer Protocol. AWS helps you seamlessly migrate your file transfer workflows to AWS Transfer for SFTP—by integrating with existing authentication systems, and providing DNS routing with Amazon Route 53—so nothing changes for your customers and partners, or their applications. With your data in S3, you can use it with AWS services for processing, analytics, machine learning, and archiving. Getting started with AWS Transfer for SFTP (AWS SFTP) is easy; there is no infrastructure to buy and setup. 
*/
public struct Transfer {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "TransferService",
            service: "transfer",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-05",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [TransferErrorType.self]
        )
    }

    ///  Instantiates an autoscaling virtual server based on Secure File Transfer Protocol (SFTP) in AWS. The call returns the ServerId property assigned by the service to the newly created server. Reference this ServerId property when you make updates to your server, or work with users. The response returns the ServerId value for the newly created server.
    public func createServer(_ input: CreateServerRequest) throws -> Future<CreateServerResponse> {
        return try client.send(operation: "CreateServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a user and associate them with an existing Secure File Transfer Protocol (SFTP) server. Using parameters for CreateUser, you can specify the user name, set the home directory, store the user's public key, and assign the user's AWS Identity and Access Management (IAM) role. You can also optionally add a scope-down policy, and assign metadata with tags that can be used to group and search for users. The response returns the UserName and ServerId values of the new user for that server.
    public func createUser(_ input: CreateUserRequest) throws -> Future<CreateUserResponse> {
        return try client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the Secure File Transfer Protocol (SFTP) server that you specify. If you used SERVICE_MANAGED as your IdentityProviderType, you need to delete all users associated with this server before deleting the server itself No response returns from this call.
    @discardableResult public func deleteServer(_ input: DeleteServerRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a user's Secure Shell (SSH) public key. No response is returned from this call.
    @discardableResult public func deleteSshPublicKey(_ input: DeleteSshPublicKeyRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteSshPublicKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the user belonging to the server you specify. No response returns from this call.  When you delete a user from a server, the user's information is lost. 
    @discardableResult public func deleteUser(_ input: DeleteUserRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the server that you specify by passing the ServerId parameter. The response contains a description of the server's properties.
    public func describeServer(_ input: DescribeServerRequest) throws -> Future<DescribeServerResponse> {
        return try client.send(operation: "DescribeServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the user assigned to a specific server, as identified by its ServerId property. The response from this call returns the properties of the user associated with the ServerId value that was specified.
    public func describeUser(_ input: DescribeUserRequest) throws -> Future<DescribeUserResponse> {
        return try client.send(operation: "DescribeUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a Secure Shell (SSH) public key to a user account identified by a UserName value assigned to a specific server, identified by ServerId. The response returns the UserName value, the ServerId value, and the name of the SshPublicKeyId.
    public func importSshPublicKey(_ input: ImportSshPublicKeyRequest) throws -> Future<ImportSshPublicKeyResponse> {
        return try client.send(operation: "ImportSshPublicKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the Secure File Transfer Protocol (SFTP) servers that are associated with your AWS account.
    public func listServers(_ input: ListServersRequest) throws -> Future<ListServersResponse> {
        return try client.send(operation: "ListServers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the users for the server that you specify by passing the ServerId parameter.
    public func listUsers(_ input: ListUsersRequest) throws -> Future<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the state of a Secure File Transfer Protocol (SFTP) server from OFFLINE to ONLINE. It has no impact on an SFTP server that is already ONLINE. An ONLINE server can accept and process file transfer jobs. The state of STARTING indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of START_FAILED can indicate an error condition.  No response is returned from this call.
    @discardableResult public func startServer(_ input: StartServerRequest) throws -> Future<Void> {
        return try client.send(operation: "StartServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the state of an SFTP server from ONLINE to OFFLINE. An OFFLINE server cannot accept and process file transfer jobs. Information tied to your server such as server and user properties are not affected by stopping your server. Stopping a server will not reduce or impact your Secure File Transfer Protocol (SFTP) endpoint billing. The states of STOPPING indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of STOP_FAILED can indicate an error condition. No response is returned from this call.
    @discardableResult public func stopServer(_ input: StopServerRequest) throws -> Future<Void> {
        return try client.send(operation: "StopServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. There is no response returned from this call.
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  If the IdentityProviderType of the server is API_Gateway, tests whether your API Gateway is set up successfully. We highly recommend that you call this method to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the API Gateway integration to ensure that your users can successfully use the service.
    public func testIdentityProvider(_ input: TestIdentityProviderRequest) throws -> Future<TestIdentityProviderResponse> {
        return try client.send(operation: "TestIdentityProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. No response is returned from this call.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the server properties after that server has been created. The UpdateServer call returns the ServerId of the Secure File Transfer Protocol (SFTP) server you updated.
    public func updateServer(_ input: UpdateServerRequest) throws -> Future<UpdateServerResponse> {
        return try client.send(operation: "UpdateServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the UserName and ServerId you specify. The response returns the ServerId and the UserName for the updated user.
    public func updateUser(_ input: UpdateUserRequest) throws -> Future<UpdateUserResponse> {
        return try client.send(operation: "UpdateUser", path: "/", httpMethod: "POST", input: input)
    }

}
