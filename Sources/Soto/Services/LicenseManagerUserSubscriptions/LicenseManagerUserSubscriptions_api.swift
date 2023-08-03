//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

/// Service object for interacting with AWS LicenseManagerUserSubscriptions service.
///
/// With License Manager, you can create user-based subscriptions to utilize licensed software with a per user subscription fee on Amazon EC2 instances.
public struct LicenseManagerUserSubscriptions: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LicenseManagerUserSubscriptions client
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
            serviceName: "LicenseManagerUserSubscriptions",
            serviceIdentifier: "license-manager-user-subscriptions",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: LicenseManagerUserSubscriptionsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "license-manager-user-subscriptions-fips.us-east-1.amazonaws.com",
            "us-east-2": "license-manager-user-subscriptions-fips.us-east-2.amazonaws.com",
            "us-west-1": "license-manager-user-subscriptions-fips.us-west-1.amazonaws.com",
            "us-west-2": "license-manager-user-subscriptions-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates the user to an EC2 instance to utilize user-based subscriptions.  Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as Pending billing status) in Amazon Web Services Billing. For more information, see Viewing your monthly charges in the Amazon Web Services Billing User Guide.
    @Sendable
    public func associateUser(_ input: AssociateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateUserResponse {
        return try await self.client.execute(
            operation: "AssociateUser", 
            path: "/user/AssociateUser", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deregisters the identity provider from providing user-based subscriptions.
    @Sendable
    public func deregisterIdentityProvider(_ input: DeregisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeregisterIdentityProviderResponse {
        return try await self.client.execute(
            operation: "DeregisterIdentityProvider", 
            path: "/identity-provider/DeregisterIdentityProvider", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates the user from an EC2 instance providing user-based subscriptions.
    @Sendable
    public func disassociateUser(_ input: DisassociateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateUserResponse {
        return try await self.client.execute(
            operation: "DisassociateUser", 
            path: "/user/DisassociateUser", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the identity providers for user-based subscriptions.
    @Sendable
    public func listIdentityProviders(_ input: ListIdentityProvidersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListIdentityProvidersResponse {
        return try await self.client.execute(
            operation: "ListIdentityProviders", 
            path: "/identity-provider/ListIdentityProviders", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the EC2 instances providing user-based subscriptions.
    @Sendable
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListInstancesResponse {
        return try await self.client.execute(
            operation: "ListInstances", 
            path: "/instance/ListInstances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the user-based subscription products available from an identity provider.
    @Sendable
    public func listProductSubscriptions(_ input: ListProductSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProductSubscriptionsResponse {
        return try await self.client.execute(
            operation: "ListProductSubscriptions", 
            path: "/user/ListProductSubscriptions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists user associations for an identity provider.
    @Sendable
    public func listUserAssociations(_ input: ListUserAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUserAssociationsResponse {
        return try await self.client.execute(
            operation: "ListUserAssociations", 
            path: "/user/ListUserAssociations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers an identity provider for user-based subscriptions.
    @Sendable
    public func registerIdentityProvider(_ input: RegisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterIdentityProviderResponse {
        return try await self.client.execute(
            operation: "RegisterIdentityProvider", 
            path: "/identity-provider/RegisterIdentityProvider", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a product subscription for a user with the specified identity provider.  Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as Pending billing status) in Amazon Web Services Billing. For more information, see Viewing your monthly charges in the Amazon Web Services Billing User Guide.
    @Sendable
    public func startProductSubscription(_ input: StartProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartProductSubscriptionResponse {
        return try await self.client.execute(
            operation: "StartProductSubscription", 
            path: "/user/StartProductSubscription", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops a product subscription for a user with the specified identity provider.
    @Sendable
    public func stopProductSubscription(_ input: StopProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopProductSubscriptionResponse {
        return try await self.client.execute(
            operation: "StopProductSubscription", 
            path: "/user/StopProductSubscription", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates additional product configuration settings for the registered identity provider.
    @Sendable
    public func updateIdentityProviderSettings(_ input: UpdateIdentityProviderSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateIdentityProviderSettingsResponse {
        return try await self.client.execute(
            operation: "UpdateIdentityProviderSettings", 
            path: "/identity-provider/UpdateIdentityProviderSettings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension LicenseManagerUserSubscriptions {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LicenseManagerUserSubscriptions, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LicenseManagerUserSubscriptions {
    /// Lists the identity providers for user-based subscriptions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListIdentityProvidersRequest, ListIdentityProvidersResponse> {
        return .init(
            input: input,
            command: self.listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the EC2 instances providing user-based subscriptions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: self.listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the user-based subscription products available from an identity provider.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProductSubscriptionsPaginator(
        _ input: ListProductSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProductSubscriptionsRequest, ListProductSubscriptionsResponse> {
        return .init(
            input: input,
            command: self.listProductSubscriptions,
            inputKey: \ListProductSubscriptionsRequest.nextToken,
            outputKey: \ListProductSubscriptionsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists user associations for an identity provider.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listUserAssociationsPaginator(
        _ input: ListUserAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListUserAssociationsRequest, ListUserAssociationsResponse> {
        return .init(
            input: input,
            command: self.listUserAssociations,
            inputKey: \ListUserAssociationsRequest.nextToken,
            outputKey: \ListUserAssociationsResponse.nextToken,
            logger: logger
        )
    }
}

extension LicenseManagerUserSubscriptions.ListIdentityProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListIdentityProvidersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LicenseManagerUserSubscriptions.ListInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListInstancesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LicenseManagerUserSubscriptions.ListProductSubscriptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListProductSubscriptionsRequest {
        return .init(
            filters: self.filters,
            identityProvider: self.identityProvider,
            maxResults: self.maxResults,
            nextToken: token,
            product: self.product
        )
    }
}

extension LicenseManagerUserSubscriptions.ListUserAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListUserAssociationsRequest {
        return .init(
            filters: self.filters,
            identityProvider: self.identityProvider,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
