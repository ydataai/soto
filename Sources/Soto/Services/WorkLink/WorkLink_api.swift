//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2024 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS WorkLink service.
///
/// Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS and Android phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.
public struct WorkLink: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WorkLink client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "WorkLink",
            serviceIdentifier: "worklink",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-25",
            endpoint: endpoint,
            errorType: WorkLinkErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Specifies a domain to be associated to Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func associateDomain(_ input: AssociateDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateDomainResponse {
        return try await self.client.execute(
            operation: "AssociateDomain", 
            path: "/associateDomain", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func associateWebsiteAuthorizationProvider(_ input: AssociateWebsiteAuthorizationProviderRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateWebsiteAuthorizationProviderResponse {
        return try await self.client.execute(
            operation: "AssociateWebsiteAuthorizationProvider", 
            path: "/associateWebsiteAuthorizationProvider", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func associateWebsiteCertificateAuthority(_ input: AssociateWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(
            operation: "AssociateWebsiteCertificateAuthority", 
            path: "/associateWebsiteCertificateAuthority", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFleetResponse {
        return try await self.client.execute(
            operation: "CreateFleet", 
            path: "/createFleet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a fleet. Prevents users from accessing previously associated websites.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func deleteFleet(_ input: DeleteFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteFleetResponse {
        return try await self.client.execute(
            operation: "DeleteFleet", 
            path: "/deleteFleet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the configuration for delivering audit streams to the customer account.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeAuditStreamConfiguration(_ input: DescribeAuditStreamConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAuditStreamConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeAuditStreamConfiguration", 
            path: "/describeAuditStreamConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the networking configuration to access the internal websites associated with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeCompanyNetworkConfiguration(_ input: DescribeCompanyNetworkConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCompanyNetworkConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeCompanyNetworkConfiguration", 
            path: "/describeCompanyNetworkConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about a user's device.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDeviceResponse {
        return try await self.client.execute(
            operation: "DescribeDevice", 
            path: "/describeDevice", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the device policy configuration for the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeDevicePolicyConfiguration(_ input: DescribeDevicePolicyConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDevicePolicyConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeDevicePolicyConfiguration", 
            path: "/describeDevicePolicyConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about the domain.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDomainResponse {
        return try await self.client.execute(
            operation: "DescribeDomain", 
            path: "/describeDomain", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeFleetMetadata(_ input: DescribeFleetMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFleetMetadataResponse {
        return try await self.client.execute(
            operation: "DescribeFleetMetadata", 
            path: "/describeFleetMetadata", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the identity provider configuration of the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeIdentityProviderConfiguration(_ input: DescribeIdentityProviderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeIdentityProviderConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeIdentityProviderConfiguration", 
            path: "/describeIdentityProviderConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about the certificate authority.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func describeWebsiteCertificateAuthority(_ input: DescribeWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(
            operation: "DescribeWebsiteCertificateAuthority", 
            path: "/describeWebsiteCertificateAuthority", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func disassociateDomain(_ input: DisassociateDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateDomainResponse {
        return try await self.client.execute(
            operation: "DisassociateDomain", 
            path: "/disassociateDomain", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func disassociateWebsiteAuthorizationProvider(_ input: DisassociateWebsiteAuthorizationProviderRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateWebsiteAuthorizationProviderResponse {
        return try await self.client.execute(
            operation: "DisassociateWebsiteAuthorizationProvider", 
            path: "/disassociateWebsiteAuthorizationProvider", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a certificate authority (CA).
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func disassociateWebsiteCertificateAuthority(_ input: DisassociateWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(
            operation: "DisassociateWebsiteCertificateAuthority", 
            path: "/disassociateWebsiteCertificateAuthority", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of devices registered with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevicesResponse {
        return try await self.client.execute(
            operation: "ListDevices", 
            path: "/listDevices", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of domains associated to a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDomainsResponse {
        return try await self.client.execute(
            operation: "ListDomains", 
            path: "/listDomains", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of fleets for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listFleets(_ input: ListFleetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFleetsResponse {
        return try await self.client.execute(
            operation: "ListFleets", 
            path: "/listFleets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of tags for the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of website authorization providers associated with a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listWebsiteAuthorizationProviders(_ input: ListWebsiteAuthorizationProvidersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWebsiteAuthorizationProvidersResponse {
        return try await self.client.execute(
            operation: "ListWebsiteAuthorizationProviders", 
            path: "/listWebsiteAuthorizationProviders", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of certificate authorities added for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func listWebsiteCertificateAuthorities(_ input: ListWebsiteCertificateAuthoritiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWebsiteCertificateAuthoritiesResponse {
        return try await self.client.execute(
            operation: "ListWebsiteCertificateAuthorities", 
            path: "/listWebsiteCertificateAuthorities", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Moves a domain to ACTIVE status if it was in the INACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func restoreDomainAccess(_ input: RestoreDomainAccessRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RestoreDomainAccessResponse {
        return try await self.client.execute(
            operation: "RestoreDomainAccess", 
            path: "/restoreDomainAccess", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Moves a domain to INACTIVE status if it was in the ACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func revokeDomainAccess(_ input: RevokeDomainAccessRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RevokeDomainAccessResponse {
        return try await self.client.execute(
            operation: "RevokeDomainAccess", 
            path: "/revokeDomainAccess", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func signOutUser(_ input: SignOutUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SignOutUserResponse {
        return try await self.client.execute(
            operation: "SignOutUser", 
            path: "/signOutUser", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the audit stream configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateAuditStreamConfiguration(_ input: UpdateAuditStreamConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAuditStreamConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateAuditStreamConfiguration", 
            path: "/updateAuditStreamConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the company network configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateCompanyNetworkConfiguration(_ input: UpdateCompanyNetworkConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateCompanyNetworkConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateCompanyNetworkConfiguration", 
            path: "/updateCompanyNetworkConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the device policy configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateDevicePolicyConfiguration(_ input: UpdateDevicePolicyConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDevicePolicyConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateDevicePolicyConfiguration", 
            path: "/updateDevicePolicyConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates domain metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateDomainMetadata(_ input: UpdateDomainMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDomainMetadataResponse {
        return try await self.client.execute(
            operation: "UpdateDomainMetadata", 
            path: "/updateDomainMetadata", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates fleet metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateFleetMetadata(_ input: UpdateFleetMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateFleetMetadataResponse {
        return try await self.client.execute(
            operation: "UpdateFleetMetadata", 
            path: "/UpdateFleetMetadata", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the identity provider configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    @Sendable
    public func updateIdentityProviderConfiguration(_ input: UpdateIdentityProviderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateIdentityProviderConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateIdentityProviderConfiguration", 
            path: "/updateIdentityProviderConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension WorkLink {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: WorkLink, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension WorkLink {
    /// Retrieves a list of devices registered with the specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDevicesRequest, ListDevicesResponse> {
        return .init(
            input: input,
            command: self.listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of domains associated to a specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: self.listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of fleets for the current account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listFleetsPaginator(
        _ input: ListFleetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFleetsRequest, ListFleetsResponse> {
        return .init(
            input: input,
            command: self.listFleets,
            inputKey: \ListFleetsRequest.nextToken,
            outputKey: \ListFleetsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of website authorization providers associated with a specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteAuthorizationProvidersPaginator(
        _ input: ListWebsiteAuthorizationProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWebsiteAuthorizationProvidersRequest, ListWebsiteAuthorizationProvidersResponse> {
        return .init(
            input: input,
            command: self.listWebsiteAuthorizationProviders,
            inputKey: \ListWebsiteAuthorizationProvidersRequest.nextToken,
            outputKey: \ListWebsiteAuthorizationProvidersResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of certificate authorities added for the current account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteCertificateAuthoritiesPaginator(
        _ input: ListWebsiteCertificateAuthoritiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWebsiteCertificateAuthoritiesRequest, ListWebsiteCertificateAuthoritiesResponse> {
        return .init(
            input: input,
            command: self.listWebsiteCertificateAuthorities,
            inputKey: \ListWebsiteCertificateAuthoritiesRequest.nextToken,
            outputKey: \ListWebsiteCertificateAuthoritiesResponse.nextToken,
            logger: logger
        )
    }
}

extension WorkLink.ListDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListDevicesRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkLink.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListDomainsRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkLink.ListFleetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListFleetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkLink.ListWebsiteAuthorizationProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListWebsiteAuthorizationProvidersRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkLink.ListWebsiteCertificateAuthoritiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListWebsiteCertificateAuthoritiesRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
