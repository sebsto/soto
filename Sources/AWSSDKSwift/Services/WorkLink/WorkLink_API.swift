// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.
*/
public struct WorkLink {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "worklink",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-25",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [WorkLinkErrorType.self]
        )
    }

    ///  Specifies a domain to be associated to Amazon WorkLink.
    public func associateDomain(_ input: AssociateDomainRequest) throws -> Future<AssociateDomainResponse> {
        return try client.send(operation: "AssociateDomain", path: "/associateDomain", httpMethod: "POST", input: input)
    }

    ///  Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    public func associateWebsiteAuthorizationProvider(_ input: AssociateWebsiteAuthorizationProviderRequest) throws -> Future<AssociateWebsiteAuthorizationProviderResponse> {
        return try client.send(operation: "AssociateWebsiteAuthorizationProvider", path: "/associateWebsiteAuthorizationProvider", httpMethod: "POST", input: input)
    }

    ///  Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    public func associateWebsiteCertificateAuthority(_ input: AssociateWebsiteCertificateAuthorityRequest) throws -> Future<AssociateWebsiteCertificateAuthorityResponse> {
        return try client.send(operation: "AssociateWebsiteCertificateAuthority", path: "/associateWebsiteCertificateAuthority", httpMethod: "POST", input: input)
    }

    ///  Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    public func createFleet(_ input: CreateFleetRequest) throws -> Future<CreateFleetResponse> {
        return try client.send(operation: "CreateFleet", path: "/createFleet", httpMethod: "POST", input: input)
    }

    ///  Deletes a fleet. Prevents users from accessing previously associated websites. 
    public func deleteFleet(_ input: DeleteFleetRequest) throws -> Future<DeleteFleetResponse> {
        return try client.send(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: "POST", input: input)
    }

    ///  Describes the configuration for delivering audit streams to the customer account.
    public func describeAuditStreamConfiguration(_ input: DescribeAuditStreamConfigurationRequest) throws -> Future<DescribeAuditStreamConfigurationResponse> {
        return try client.send(operation: "DescribeAuditStreamConfiguration", path: "/describeAuditStreamConfiguration", httpMethod: "POST", input: input)
    }

    ///  Describes the networking configuration to access the internal websites associated with the specified fleet.
    public func describeCompanyNetworkConfiguration(_ input: DescribeCompanyNetworkConfigurationRequest) throws -> Future<DescribeCompanyNetworkConfigurationResponse> {
        return try client.send(operation: "DescribeCompanyNetworkConfiguration", path: "/describeCompanyNetworkConfiguration", httpMethod: "POST", input: input)
    }

    ///  Provides information about a user's device.
    public func describeDevice(_ input: DescribeDeviceRequest) throws -> Future<DescribeDeviceResponse> {
        return try client.send(operation: "DescribeDevice", path: "/describeDevice", httpMethod: "POST", input: input)
    }

    ///  Describes the device policy configuration for the specified fleet.
    public func describeDevicePolicyConfiguration(_ input: DescribeDevicePolicyConfigurationRequest) throws -> Future<DescribeDevicePolicyConfigurationResponse> {
        return try client.send(operation: "DescribeDevicePolicyConfiguration", path: "/describeDevicePolicyConfiguration", httpMethod: "POST", input: input)
    }

    ///  Provides information about the domain.
    public func describeDomain(_ input: DescribeDomainRequest) throws -> Future<DescribeDomainResponse> {
        return try client.send(operation: "DescribeDomain", path: "/describeDomain", httpMethod: "POST", input: input)
    }

    ///  Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    public func describeFleetMetadata(_ input: DescribeFleetMetadataRequest) throws -> Future<DescribeFleetMetadataResponse> {
        return try client.send(operation: "DescribeFleetMetadata", path: "/describeFleetMetadata", httpMethod: "POST", input: input)
    }

    ///  Describes the identity provider configuration of the specified fleet.
    public func describeIdentityProviderConfiguration(_ input: DescribeIdentityProviderConfigurationRequest) throws -> Future<DescribeIdentityProviderConfigurationResponse> {
        return try client.send(operation: "DescribeIdentityProviderConfiguration", path: "/describeIdentityProviderConfiguration", httpMethod: "POST", input: input)
    }

    ///  Provides information about the certificate authority.
    public func describeWebsiteCertificateAuthority(_ input: DescribeWebsiteCertificateAuthorityRequest) throws -> Future<DescribeWebsiteCertificateAuthorityResponse> {
        return try client.send(operation: "DescribeWebsiteCertificateAuthority", path: "/describeWebsiteCertificateAuthority", httpMethod: "POST", input: input)
    }

    ///  Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. 
    public func disassociateDomain(_ input: DisassociateDomainRequest) throws -> Future<DisassociateDomainResponse> {
        return try client.send(operation: "DisassociateDomain", path: "/disassociateDomain", httpMethod: "POST", input: input)
    }

    ///  Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    public func disassociateWebsiteAuthorizationProvider(_ input: DisassociateWebsiteAuthorizationProviderRequest) throws -> Future<DisassociateWebsiteAuthorizationProviderResponse> {
        return try client.send(operation: "DisassociateWebsiteAuthorizationProvider", path: "/disassociateWebsiteAuthorizationProvider", httpMethod: "POST", input: input)
    }

    ///  Removes a certificate authority (CA).
    public func disassociateWebsiteCertificateAuthority(_ input: DisassociateWebsiteCertificateAuthorityRequest) throws -> Future<DisassociateWebsiteCertificateAuthorityResponse> {
        return try client.send(operation: "DisassociateWebsiteCertificateAuthority", path: "/disassociateWebsiteCertificateAuthority", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of devices registered with the specified fleet.
    public func listDevices(_ input: ListDevicesRequest) throws -> Future<ListDevicesResponse> {
        return try client.send(operation: "ListDevices", path: "/listDevices", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of domains associated to a specified fleet.
    public func listDomains(_ input: ListDomainsRequest) throws -> Future<ListDomainsResponse> {
        return try client.send(operation: "ListDomains", path: "/listDomains", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of fleets for the current account and Region.
    public func listFleets(_ input: ListFleetsRequest) throws -> Future<ListFleetsResponse> {
        return try client.send(operation: "ListFleets", path: "/listFleets", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of website authorization providers associated with a specified fleet.
    public func listWebsiteAuthorizationProviders(_ input: ListWebsiteAuthorizationProvidersRequest) throws -> Future<ListWebsiteAuthorizationProvidersResponse> {
        return try client.send(operation: "ListWebsiteAuthorizationProviders", path: "/listWebsiteAuthorizationProviders", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of certificate authorities added for the current account and Region.
    public func listWebsiteCertificateAuthorities(_ input: ListWebsiteCertificateAuthoritiesRequest) throws -> Future<ListWebsiteCertificateAuthoritiesResponse> {
        return try client.send(operation: "ListWebsiteCertificateAuthorities", path: "/listWebsiteCertificateAuthorities", httpMethod: "POST", input: input)
    }

    ///  Moves a domain to ACTIVE status if it was in the INACTIVE status.
    public func restoreDomainAccess(_ input: RestoreDomainAccessRequest) throws -> Future<RestoreDomainAccessResponse> {
        return try client.send(operation: "RestoreDomainAccess", path: "/restoreDomainAccess", httpMethod: "POST", input: input)
    }

    ///  Moves a domain to INACTIVE status if it was in the ACTIVE status.
    public func revokeDomainAccess(_ input: RevokeDomainAccessRequest) throws -> Future<RevokeDomainAccessResponse> {
        return try client.send(operation: "RevokeDomainAccess", path: "/revokeDomainAccess", httpMethod: "POST", input: input)
    }

    ///  Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    public func signOutUser(_ input: SignOutUserRequest) throws -> Future<SignOutUserResponse> {
        return try client.send(operation: "SignOutUser", path: "/signOutUser", httpMethod: "POST", input: input)
    }

    ///  Updates the audit stream configuration for the fleet.
    public func updateAuditStreamConfiguration(_ input: UpdateAuditStreamConfigurationRequest) throws -> Future<UpdateAuditStreamConfigurationResponse> {
        return try client.send(operation: "UpdateAuditStreamConfiguration", path: "/updateAuditStreamConfiguration", httpMethod: "POST", input: input)
    }

    ///  Updates the company network configuration for the fleet.
    public func updateCompanyNetworkConfiguration(_ input: UpdateCompanyNetworkConfigurationRequest) throws -> Future<UpdateCompanyNetworkConfigurationResponse> {
        return try client.send(operation: "UpdateCompanyNetworkConfiguration", path: "/updateCompanyNetworkConfiguration", httpMethod: "POST", input: input)
    }

    ///  Updates the device policy configuration for the fleet.
    public func updateDevicePolicyConfiguration(_ input: UpdateDevicePolicyConfigurationRequest) throws -> Future<UpdateDevicePolicyConfigurationResponse> {
        return try client.send(operation: "UpdateDevicePolicyConfiguration", path: "/updateDevicePolicyConfiguration", httpMethod: "POST", input: input)
    }

    ///  Updates domain metadata, such as DisplayName.
    public func updateDomainMetadata(_ input: UpdateDomainMetadataRequest) throws -> Future<UpdateDomainMetadataResponse> {
        return try client.send(operation: "UpdateDomainMetadata", path: "/updateDomainMetadata", httpMethod: "POST", input: input)
    }

    ///  Updates fleet metadata, such as DisplayName.
    public func updateFleetMetadata(_ input: UpdateFleetMetadataRequest) throws -> Future<UpdateFleetMetadataResponse> {
        return try client.send(operation: "UpdateFleetMetadata", path: "/UpdateFleetMetadata", httpMethod: "POST", input: input)
    }

    ///  Updates the identity provider configuration for the fleet.
    public func updateIdentityProviderConfiguration(_ input: UpdateIdentityProviderConfigurationRequest) throws -> Future<UpdateIdentityProviderConfigurationResponse> {
        return try client.send(operation: "UpdateIdentityProviderConfiguration", path: "/updateIdentityProviderConfiguration", httpMethod: "POST", input: input)
    }

}
