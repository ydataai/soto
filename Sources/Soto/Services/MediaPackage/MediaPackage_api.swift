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

/// Service object for interacting with AWS MediaPackage service.
///
/// AWS Elemental MediaPackage
public struct MediaPackage: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaPackage client
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
            service: "mediapackage",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-12",
            endpoint: endpoint,
            errorType: MediaPackageErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Changes the Channel's properities to configure log subscription
    @Sendable
    public func configureLogs(_ input: ConfigureLogsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConfigureLogsResponse {
        return try await self.client.execute(
            operation: "ConfigureLogs", 
            path: "/channels/{Id}/configure_logs", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new Channel.
    @Sendable
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateChannelResponse {
        return try await self.client.execute(
            operation: "CreateChannel", 
            path: "/channels", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new HarvestJob record.
    @Sendable
    public func createHarvestJob(_ input: CreateHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHarvestJobResponse {
        return try await self.client.execute(
            operation: "CreateHarvestJob", 
            path: "/harvest_jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new OriginEndpoint record.
    @Sendable
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateOriginEndpointResponse {
        return try await self.client.execute(
            operation: "CreateOriginEndpoint", 
            path: "/origin_endpoints", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing Channel.
    @Sendable
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteChannelResponse {
        return try await self.client.execute(
            operation: "DeleteChannel", 
            path: "/channels/{Id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing OriginEndpoint.
    @Sendable
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteOriginEndpointResponse {
        return try await self.client.execute(
            operation: "DeleteOriginEndpoint", 
            path: "/origin_endpoints/{Id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets details about a Channel.
    @Sendable
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeChannelResponse {
        return try await self.client.execute(
            operation: "DescribeChannel", 
            path: "/channels/{Id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets details about an existing HarvestJob.
    @Sendable
    public func describeHarvestJob(_ input: DescribeHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHarvestJobResponse {
        return try await self.client.execute(
            operation: "DescribeHarvestJob", 
            path: "/harvest_jobs/{Id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets details about an existing OriginEndpoint.
    @Sendable
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeOriginEndpointResponse {
        return try await self.client.execute(
            operation: "DescribeOriginEndpoint", 
            path: "/origin_endpoints/{Id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a collection of Channels.
    @Sendable
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListChannelsResponse {
        return try await self.client.execute(
            operation: "ListChannels", 
            path: "/channels", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a collection of HarvestJob records.
    @Sendable
    public func listHarvestJobs(_ input: ListHarvestJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHarvestJobsResponse {
        return try await self.client.execute(
            operation: "ListHarvestJobs", 
            path: "/harvest_jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a collection of OriginEndpoint records.
    @Sendable
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListOriginEndpointsResponse {
        return try await self.client.execute(
            operation: "ListOriginEndpoints", 
            path: "/origin_endpoints", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

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

    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    @Sendable
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RotateChannelCredentialsResponse {
        return try await self.client.execute(
            operation: "RotateChannelCredentials", 
            path: "/channels/{Id}/credentials", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    @Sendable
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RotateIngestEndpointCredentialsResponse {
        return try await self.client.execute(
            operation: "RotateIngestEndpointCredentials", 
            path: "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing Channel.
    @Sendable
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateChannelResponse {
        return try await self.client.execute(
            operation: "UpdateChannel", 
            path: "/channels/{Id}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing OriginEndpoint.
    @Sendable
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateOriginEndpointResponse {
        return try await self.client.execute(
            operation: "UpdateOriginEndpoint", 
            path: "/origin_endpoints/{Id}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension MediaPackage {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaPackage, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaPackage {
    /// Returns a collection of Channels.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: self.listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a collection of HarvestJob records.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listHarvestJobsPaginator(
        _ input: ListHarvestJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListHarvestJobsRequest, ListHarvestJobsResponse> {
        return .init(
            input: input,
            command: self.listHarvestJobs,
            inputKey: \ListHarvestJobsRequest.nextToken,
            outputKey: \ListHarvestJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a collection of OriginEndpoint records.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listOriginEndpointsPaginator(
        _ input: ListOriginEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListOriginEndpointsRequest, ListOriginEndpointsResponse> {
        return .init(
            input: input,
            command: self.listOriginEndpoints,
            inputKey: \ListOriginEndpointsRequest.nextToken,
            outputKey: \ListOriginEndpointsResponse.nextToken,
            logger: logger
        )
    }
}

extension MediaPackage.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListChannelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MediaPackage.ListHarvestJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListHarvestJobsRequest {
        return .init(
            includeChannelId: self.includeChannelId,
            includeStatus: self.includeStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MediaPackage.ListOriginEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListOriginEndpointsRequest {
        return .init(
            channelId: self.channelId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
