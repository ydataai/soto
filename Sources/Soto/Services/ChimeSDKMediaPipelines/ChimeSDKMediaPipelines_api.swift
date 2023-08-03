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

/// Service object for interacting with AWS ChimeSDKMediaPipelines service.
///
/// The Amazon Chime SDK media pipeline APIs in this section allow software developers to create Amazon Chime SDK media pipelines that capture, concatenate, or stream your Amazon Chime SDK meetings. For more information about media pipelines, see Amazon Chime SDK media pipelines.
public struct ChimeSDKMediaPipelines: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ChimeSDKMediaPipelines client
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
            serviceName: "ChimeSDKMediaPipelines",
            serviceIdentifier: "media-pipelines-chime",
            signingName: "chime",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-15",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ChimeSDKMediaPipelinesErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "media-pipelines-chime-fips.us-east-1.amazonaws.com",
            "us-west-2": "media-pipelines-chime-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates a media pipeline.
    @Sendable
    public func createMediaCapturePipeline(_ input: CreateMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMediaCapturePipelineResponse {
        return try await self.client.execute(
            operation: "CreateMediaCapturePipeline", 
            path: "/sdk-media-capture-pipelines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a media concatenation pipeline.
    @Sendable
    public func createMediaConcatenationPipeline(_ input: CreateMediaConcatenationPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMediaConcatenationPipelineResponse {
        return try await self.client.execute(
            operation: "CreateMediaConcatenationPipeline", 
            path: "/sdk-media-concatenation-pipelines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a media insights pipeline.
    @Sendable
    public func createMediaInsightsPipeline(_ input: CreateMediaInsightsPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMediaInsightsPipelineResponse {
        return try await self.client.execute(
            operation: "CreateMediaInsightsPipeline", 
            path: "/media-insights-pipelines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A structure that contains the static configurations for a media insights pipeline.
    @Sendable
    public func createMediaInsightsPipelineConfiguration(_ input: CreateMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMediaInsightsPipelineConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateMediaInsightsPipelineConfiguration", 
            path: "/media-insights-pipeline-configurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a media live connector pipeline in an Amazon Chime SDK meeting.
    @Sendable
    public func createMediaLiveConnectorPipeline(_ input: CreateMediaLiveConnectorPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMediaLiveConnectorPipelineResponse {
        return try await self.client.execute(
            operation: "CreateMediaLiveConnectorPipeline", 
            path: "/sdk-media-live-connector-pipelines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the media pipeline.
    @Sendable
    public func deleteMediaCapturePipeline(_ input: DeleteMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteMediaCapturePipeline", 
            path: "/sdk-media-capture-pipelines/{MediaPipelineId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified configuration settings.
    @Sendable
    public func deleteMediaInsightsPipelineConfiguration(_ input: DeleteMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteMediaInsightsPipelineConfiguration", 
            path: "/media-insights-pipeline-configurations/{Identifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the media pipeline.
    @Sendable
    public func deleteMediaPipeline(_ input: DeleteMediaPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteMediaPipeline", 
            path: "/sdk-media-pipelines/{MediaPipelineId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets an existing media pipeline.
    @Sendable
    public func getMediaCapturePipeline(_ input: GetMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMediaCapturePipelineResponse {
        return try await self.client.execute(
            operation: "GetMediaCapturePipeline", 
            path: "/sdk-media-capture-pipelines/{MediaPipelineId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the configuration settings for a media insights pipeline.
    @Sendable
    public func getMediaInsightsPipelineConfiguration(_ input: GetMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMediaInsightsPipelineConfigurationResponse {
        return try await self.client.execute(
            operation: "GetMediaInsightsPipelineConfiguration", 
            path: "/media-insights-pipeline-configurations/{Identifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets an existing media pipeline.
    @Sendable
    public func getMediaPipeline(_ input: GetMediaPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMediaPipelineResponse {
        return try await self.client.execute(
            operation: "GetMediaPipeline", 
            path: "/sdk-media-pipelines/{MediaPipelineId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of media pipelines.
    @Sendable
    public func listMediaCapturePipelines(_ input: ListMediaCapturePipelinesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMediaCapturePipelinesResponse {
        return try await self.client.execute(
            operation: "ListMediaCapturePipelines", 
            path: "/sdk-media-capture-pipelines", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the available media insights pipeline configurations.
    @Sendable
    public func listMediaInsightsPipelineConfigurations(_ input: ListMediaInsightsPipelineConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMediaInsightsPipelineConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListMediaInsightsPipelineConfigurations", 
            path: "/media-insights-pipeline-configurations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of media pipelines.
    @Sendable
    public func listMediaPipelines(_ input: ListMediaPipelinesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMediaPipelinesResponse {
        return try await self.client.execute(
            operation: "ListMediaPipelines", 
            path: "/sdk-media-pipelines", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags available for a media pipeline.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// The ARN of the media pipeline that you want to tag. Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags?operation=tag-resource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes any tags from a media pipeline.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags?operation=untag-resource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the media insights pipeline's configuration settings.
    @Sendable
    public func updateMediaInsightsPipelineConfiguration(_ input: UpdateMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateMediaInsightsPipelineConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateMediaInsightsPipelineConfiguration", 
            path: "/media-insights-pipeline-configurations/{Identifier}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the status of a media insights pipeline.
    @Sendable
    public func updateMediaInsightsPipelineStatus(_ input: UpdateMediaInsightsPipelineStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UpdateMediaInsightsPipelineStatus", 
            path: "/media-insights-pipeline-status/{Identifier}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ChimeSDKMediaPipelines {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ChimeSDKMediaPipelines, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ChimeSDKMediaPipelines {
    /// Returns a list of media pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMediaCapturePipelinesPaginator(
        _ input: ListMediaCapturePipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMediaCapturePipelinesRequest, ListMediaCapturePipelinesResponse> {
        return .init(
            input: input,
            command: self.listMediaCapturePipelines,
            inputKey: \ListMediaCapturePipelinesRequest.nextToken,
            outputKey: \ListMediaCapturePipelinesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the available media insights pipeline configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMediaInsightsPipelineConfigurationsPaginator(
        _ input: ListMediaInsightsPipelineConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMediaInsightsPipelineConfigurationsRequest, ListMediaInsightsPipelineConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listMediaInsightsPipelineConfigurations,
            inputKey: \ListMediaInsightsPipelineConfigurationsRequest.nextToken,
            outputKey: \ListMediaInsightsPipelineConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of media pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMediaPipelinesPaginator(
        _ input: ListMediaPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMediaPipelinesRequest, ListMediaPipelinesResponse> {
        return .init(
            input: input,
            command: self.listMediaPipelines,
            inputKey: \ListMediaPipelinesRequest.nextToken,
            outputKey: \ListMediaPipelinesResponse.nextToken,
            logger: logger
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaCapturePipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaCapturePipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaInsightsPipelineConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaInsightsPipelineConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaPipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
