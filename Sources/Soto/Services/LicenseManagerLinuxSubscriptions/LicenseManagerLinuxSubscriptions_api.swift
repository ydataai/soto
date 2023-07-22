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

/// Service object for interacting with AWS LicenseManagerLinuxSubscriptions service.
///
/// With License Manager, you can discover and track your commercial Linux subscriptions on running Amazon EC2 instances.
public struct LicenseManagerLinuxSubscriptions: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LicenseManagerLinuxSubscriptions client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "license-manager-linux-subscriptions",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "license-manager-linux-subscriptions-fips.us-east-1.amazonaws.com",
                    "us-east-2": "license-manager-linux-subscriptions-fips.us-east-2.amazonaws.com",
                    "us-west-1": "license-manager-linux-subscriptions-fips.us-west-1.amazonaws.com",
                    "us-west-2": "license-manager-linux-subscriptions-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: LicenseManagerLinuxSubscriptionsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Lists the Linux subscriptions service settings.
    @Sendable
    public func getServiceSettings(_ input: GetServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServiceSettingsResponse {
        return try await self.client.execute(
            operation: "GetServiceSettings", 
            path: "/subscription/GetServiceSettings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the running Amazon EC2 instances that were discovered with commercial Linux subscriptions.
    @Sendable
    public func listLinuxSubscriptionInstances(_ input: ListLinuxSubscriptionInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLinuxSubscriptionInstancesResponse {
        return try await self.client.execute(
            operation: "ListLinuxSubscriptionInstances", 
            path: "/subscription/ListLinuxSubscriptionInstances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the Linux subscriptions that have been discovered. If you have linked your organization, the returned results will include data aggregated across your accounts in Organizations.
    @Sendable
    public func listLinuxSubscriptions(_ input: ListLinuxSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLinuxSubscriptionsResponse {
        return try await self.client.execute(
            operation: "ListLinuxSubscriptions", 
            path: "/subscription/ListLinuxSubscriptions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the service settings for Linux subscriptions.
    @Sendable
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateServiceSettingsResponse {
        return try await self.client.execute(
            operation: "UpdateServiceSettings", 
            path: "/subscription/UpdateServiceSettings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension LicenseManagerLinuxSubscriptions {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LicenseManagerLinuxSubscriptions, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LicenseManagerLinuxSubscriptions {
    /// Lists the running Amazon EC2 instances that were discovered with commercial Linux subscriptions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLinuxSubscriptionInstancesPaginator(
        _ input: ListLinuxSubscriptionInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLinuxSubscriptionInstancesRequest, ListLinuxSubscriptionInstancesResponse> {
        return .init(
            input: input,
            command: self.listLinuxSubscriptionInstances,
            inputKey: \ListLinuxSubscriptionInstancesRequest.nextToken,
            outputKey: \ListLinuxSubscriptionInstancesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the Linux subscriptions that have been discovered. If you have linked your organization, the returned results will include data aggregated across your accounts in Organizations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLinuxSubscriptionsPaginator(
        _ input: ListLinuxSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLinuxSubscriptionsRequest, ListLinuxSubscriptionsResponse> {
        return .init(
            input: input,
            command: self.listLinuxSubscriptions,
            inputKey: \ListLinuxSubscriptionsRequest.nextToken,
            outputKey: \ListLinuxSubscriptionsResponse.nextToken,
            logger: logger
        )
    }
}

extension LicenseManagerLinuxSubscriptions.ListLinuxSubscriptionInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerLinuxSubscriptions.ListLinuxSubscriptionInstancesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LicenseManagerLinuxSubscriptions.ListLinuxSubscriptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerLinuxSubscriptions.ListLinuxSubscriptionsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
