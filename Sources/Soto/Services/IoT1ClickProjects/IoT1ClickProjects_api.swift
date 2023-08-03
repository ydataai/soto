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

/// Service object for interacting with AWS IoT1ClickProjects service.
///
/// The AWS IoT 1-Click Projects API Reference
public struct IoT1ClickProjects: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoT1ClickProjects client
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
            serviceName: "IoT1ClickProjects",
            serviceIdentifier: "projects.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            errorType: IoT1ClickProjectsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Associates a physical device with a placement.
    @Sendable
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateDeviceWithPlacementResponse {
        return try await self.client.execute(
            operation: "AssociateDeviceWithPlacement", 
            path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an empty placement.
    @Sendable
    public func createPlacement(_ input: CreatePlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePlacementResponse {
        return try await self.client.execute(
            operation: "CreatePlacement", 
            path: "/projects/{projectName}/placements", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    @Sendable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProjectResponse {
        return try await self.client.execute(
            operation: "CreateProject", 
            path: "/projects", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable.
    @Sendable
    public func deletePlacement(_ input: DeletePlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePlacementResponse {
        return try await self.client.execute(
            operation: "DeletePlacement", 
            path: "/projects/{projectName}/placements/{placementName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable.
    @Sendable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProjectResponse {
        return try await self.client.execute(
            operation: "DeleteProject", 
            path: "/projects/{projectName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a placement in a project.
    @Sendable
    public func describePlacement(_ input: DescribePlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribePlacementResponse {
        return try await self.client.execute(
            operation: "DescribePlacement", 
            path: "/projects/{projectName}/placements/{placementName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an object describing a project.
    @Sendable
    public func describeProject(_ input: DescribeProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeProjectResponse {
        return try await self.client.execute(
            operation: "DescribeProject", 
            path: "/projects/{projectName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a physical device from a placement.
    @Sendable
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateDeviceFromPlacementResponse {
        return try await self.client.execute(
            operation: "DisassociateDeviceFromPlacement", 
            path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an object enumerating the devices in a placement.
    @Sendable
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDevicesInPlacementResponse {
        return try await self.client.execute(
            operation: "GetDevicesInPlacement", 
            path: "/projects/{projectName}/placements/{placementName}/devices", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the placement(s) of a project.
    @Sendable
    public func listPlacements(_ input: ListPlacementsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPlacementsResponse {
        return try await self.client.execute(
            operation: "ListPlacements", 
            path: "/projects/{projectName}/placements", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    @Sendable
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProjectsResponse {
        return try await self.client.execute(
            operation: "ListProjects", 
            path: "/projects", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags (metadata key/value pairs) which you have assigned to the resource.
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

    /// Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
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

    /// Removes one or more tags (metadata key/value pairs) from a resource.
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

    /// Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    @Sendable
    public func updatePlacement(_ input: UpdatePlacementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePlacementResponse {
        return try await self.client.execute(
            operation: "UpdatePlacement", 
            path: "/projects/{projectName}/placements/{placementName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    @Sendable
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProjectResponse {
        return try await self.client.execute(
            operation: "UpdateProject", 
            path: "/projects/{projectName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension IoT1ClickProjects {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoT1ClickProjects, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IoT1ClickProjects {
    /// Lists the placement(s) of a project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPlacementsPaginator(
        _ input: ListPlacementsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPlacementsRequest, ListPlacementsResponse> {
        return .init(
            input: input,
            command: self.listPlacements,
            inputKey: \ListPlacementsRequest.nextToken,
            outputKey: \ListPlacementsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResponse> {
        return .init(
            input: input,
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger
        )
    }
}

extension IoT1ClickProjects.ListPlacementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoT1ClickProjects.ListPlacementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )
    }
}

extension IoT1ClickProjects.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoT1ClickProjects.ListProjectsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
