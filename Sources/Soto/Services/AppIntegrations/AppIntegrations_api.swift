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

/// Service object for interacting with AWS AppIntegrations service.
///
/// The Amazon AppIntegrations service enables you to configure and reuse connections to external applications. For information about how you can use external applications with Amazon Connect, see Set up pre-built integrations and Deliver information to agents using Amazon Connect Wisdom in the Amazon Connect Administrator Guide.
public struct AppIntegrations: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppIntegrations client
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
            serviceName: "AppIntegrations",
            serviceIdentifier: "app-integrations",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-29",
            endpoint: endpoint,
            errorType: AppIntegrationsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates and persists a DataIntegration resource.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.
    @Sendable
    public func createDataIntegration(_ input: CreateDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDataIntegrationResponse {
        return try await self.client.execute(
            operation: "CreateDataIntegration", 
            path: "/dataIntegrations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an EventIntegration, given a specified name, description, and a reference to an Amazon EventBridge bus in your account and a partner event source that pushes events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.
    @Sendable
    public func createEventIntegration(_ input: CreateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEventIntegrationResponse {
        return try await self.client.execute(
            operation: "CreateEventIntegration", 
            path: "/eventIntegrations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the DataIntegration. Only DataIntegrations that don't have any DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the underlying Amazon AppFlow flow and service linked role.   You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    @Sendable
    public func deleteDataIntegration(_ input: DeleteDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDataIntegrationResponse {
        return try await self.client.execute(
            operation: "DeleteDataIntegration", 
            path: "/dataIntegrations/{DataIntegrationIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.
    @Sendable
    public func deleteEventIntegration(_ input: DeleteEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteEventIntegrationResponse {
        return try await self.client.execute(
            operation: "DeleteEventIntegration", 
            path: "/eventIntegrations/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the DataIntegration.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    @Sendable
    public func getDataIntegration(_ input: GetDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataIntegrationResponse {
        return try await self.client.execute(
            operation: "GetDataIntegration", 
            path: "/dataIntegrations/{Identifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the event integration.
    @Sendable
    public func getEventIntegration(_ input: GetEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEventIntegrationResponse {
        return try await self.client.execute(
            operation: "GetEventIntegration", 
            path: "/eventIntegrations/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of DataIntegration associations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    @Sendable
    public func listDataIntegrationAssociations(_ input: ListDataIntegrationAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataIntegrationAssociationsResponse {
        return try await self.client.execute(
            operation: "ListDataIntegrationAssociations", 
            path: "/dataIntegrations/{DataIntegrationIdentifier}/associations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of DataIntegrations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    @Sendable
    public func listDataIntegrations(_ input: ListDataIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataIntegrationsResponse {
        return try await self.client.execute(
            operation: "ListDataIntegrations", 
            path: "/dataIntegrations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of event integration associations in the account.
    @Sendable
    public func listEventIntegrationAssociations(_ input: ListEventIntegrationAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventIntegrationAssociationsResponse {
        return try await self.client.execute(
            operation: "ListEventIntegrationAssociations", 
            path: "/eventIntegrations/{EventIntegrationName}/associations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of event integrations in the account.
    @Sendable
    public func listEventIntegrations(_ input: ListEventIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventIntegrationsResponse {
        return try await self.client.execute(
            operation: "ListEventIntegrations", 
            path: "/eventIntegrations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for the specified resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds the specified tags to the specified resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the description of a DataIntegration.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    @Sendable
    public func updateDataIntegration(_ input: UpdateDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDataIntegrationResponse {
        return try await self.client.execute(
            operation: "UpdateDataIntegration", 
            path: "/dataIntegrations/{Identifier}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the description of an event integration.
    @Sendable
    public func updateEventIntegration(_ input: UpdateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEventIntegrationResponse {
        return try await self.client.execute(
            operation: "UpdateEventIntegration", 
            path: "/eventIntegrations/{Name}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension AppIntegrations {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AppIntegrations, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
