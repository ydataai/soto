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

/// Service object for interacting with AWS OSIS service.
///
/// Use the Amazon OpenSearch Ingestion API to create and manage ingestion pipelines. OpenSearch Ingestion is a  fully managed data collector that delivers real-time log and trace data to OpenSearch Service domains. For more information, see Getting data into your cluster using OpenSearch Ingestion.
public struct OSIS: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the OSIS client
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
            serviceName: "OSIS",
            serviceIdentifier: "osis",
            serviceProtocol: .restjson,
            apiVersion: "2022-01-01",
            endpoint: endpoint,
            errorType: OSISErrorType.self,
            xmlNamespace: "http://osis.amazonaws.com/doc/2022-01-01",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates an OpenSearch Ingestion pipeline. For more information, see Creating Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func createPipeline(_ input: CreatePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePipelineResponse {
        return try await self.client.execute(
            operation: "CreatePipeline", 
            path: "/2022-01-01/osis/createPipeline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an OpenSearch Ingestion pipeline. For more information, see Deleting Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func deletePipeline(_ input: DeletePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePipelineResponse {
        return try await self.client.execute(
            operation: "DeletePipeline", 
            path: "/2022-01-01/osis/deletePipeline/{PipelineName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an OpenSearch Ingestion pipeline.
    @Sendable
    public func getPipeline(_ input: GetPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPipelineResponse {
        return try await self.client.execute(
            operation: "GetPipeline", 
            path: "/2022-01-01/osis/getPipeline/{PipelineName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about a specific blueprint for OpenSearch Ingestion. Blueprints are templates for the configuration needed for a CreatePipeline request. For more information, see Using blueprints to create a pipeline.
    @Sendable
    public func getPipelineBlueprint(_ input: GetPipelineBlueprintRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPipelineBlueprintResponse {
        return try await self.client.execute(
            operation: "GetPipelineBlueprint", 
            path: "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns progress information for the current change happening on an OpenSearch Ingestion pipeline. Currently, this operation only returns information when a pipeline is being created. For more information, see Tracking the status of pipeline creation.
    @Sendable
    public func getPipelineChangeProgress(_ input: GetPipelineChangeProgressRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPipelineChangeProgressResponse {
        return try await self.client.execute(
            operation: "GetPipelineChangeProgress", 
            path: "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of all available blueprints for Data Prepper. For more information, see Using blueprints to create a pipeline.
    @Sendable
    public func listPipelineBlueprints(_ input: ListPipelineBlueprintsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPipelineBlueprintsResponse {
        return try await self.client.execute(
            operation: "ListPipelineBlueprints", 
            path: "/2022-01-01/osis/listPipelineBlueprints", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see Viewing Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func listPipelines(_ input: ListPipelinesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPipelinesResponse {
        return try await self.client.execute(
            operation: "ListPipelines", 
            path: "/2022-01-01/osis/listPipelines", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all resource tags associated with an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/2022-01-01/osis/listTagsForResource", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an OpenSearch Ingestion pipeline. For more information, see Starting an OpenSearch Ingestion pipeline.
    @Sendable
    public func startPipeline(_ input: StartPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartPipelineResponse {
        return try await self.client.execute(
            operation: "StartPipeline", 
            path: "/2022-01-01/osis/startPipeline/{PipelineName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an OpenSearch Ingestion pipeline. For more information, see Stopping an OpenSearch Ingestion pipeline.
    @Sendable
    public func stopPipeline(_ input: StopPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopPipelineResponse {
        return try await self.client.execute(
            operation: "StopPipeline", 
            path: "/2022-01-01/osis/stopPipeline/{PipelineName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/2022-01-01/osis/tagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/2022-01-01/osis/untagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an OpenSearch Ingestion pipeline. For more information, see Updating Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func updatePipeline(_ input: UpdatePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePipelineResponse {
        return try await self.client.execute(
            operation: "UpdatePipeline", 
            path: "/2022-01-01/osis/updatePipeline/{PipelineName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation. For more information, see Creating Amazon OpenSearch Ingestion pipelines.
    @Sendable
    public func validatePipeline(_ input: ValidatePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ValidatePipelineResponse {
        return try await self.client.execute(
            operation: "ValidatePipeline", 
            path: "/2022-01-01/osis/validatePipeline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension OSIS {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: OSIS, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OSIS {
    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see Viewing Amazon OpenSearch Ingestion pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPipelinesRequest, ListPipelinesResponse> {
        return .init(
            input: input,
            command: self.listPipelines,
            inputKey: \ListPipelinesRequest.nextToken,
            outputKey: \ListPipelinesResponse.nextToken,
            logger: logger
        )
    }
}

extension OSIS.ListPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OSIS.ListPipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
