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

/// Service object for interacting with AWS ConnectContactLens service.
///
/// Contact Lens for Amazon Connect enables you to analyze conversations between customer and agents, by using speech transcription, natural language processing, and intelligent search capabilities. It performs sentiment analysis, detects issues, and enables you to automatically categorize contacts. Contact Lens for Amazon Connect provides both real-time and post-call analytics of customer-agent conversations. For more information, see Analyze conversations using Contact Lens in the Amazon Connect Administrator Guide.
public struct ConnectContactLens: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ConnectContactLens client
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
            service: "contact-lens",
            signingName: "connect",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-21",
            endpoint: endpoint,
            errorType: ConnectContactLensErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Provides a list of analysis segments for a real-time analysis session.
    @Sendable
    public func listRealtimeContactAnalysisSegments(_ input: ListRealtimeContactAnalysisSegmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRealtimeContactAnalysisSegmentsResponse {
        return try await self.client.execute(
            operation: "ListRealtimeContactAnalysisSegments", 
            path: "/realtime-contact-analysis/analysis-segments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ConnectContactLens {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ConnectContactLens, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ConnectContactLens {
    /// Provides a list of analysis segments for a real-time analysis session.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRealtimeContactAnalysisSegmentsPaginator(
        _ input: ListRealtimeContactAnalysisSegmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRealtimeContactAnalysisSegmentsRequest, ListRealtimeContactAnalysisSegmentsResponse> {
        return .init(
            input: input,
            command: self.listRealtimeContactAnalysisSegments,
            inputKey: \ListRealtimeContactAnalysisSegmentsRequest.nextToken,
            outputKey: \ListRealtimeContactAnalysisSegmentsResponse.nextToken,
            logger: logger
        )
    }
}

extension ConnectContactLens.ListRealtimeContactAnalysisSegmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectContactLens.ListRealtimeContactAnalysisSegmentsRequest {
        return .init(
            contactId: self.contactId,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
