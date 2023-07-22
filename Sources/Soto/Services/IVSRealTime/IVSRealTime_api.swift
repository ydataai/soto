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

/// Service object for interacting with AWS IVSRealTime service.
///
///  Introduction  The Amazon Interactive Video Service (IVS) stage API is REST compatible, using a standard HTTP
/// 	  API and an AWS EventBridge event stream for responses. JSON is used for both requests and responses,
/// 	  including errors.  Terminology:   The IVS stage API sometimes is referred to as the IVS RealTime API.   A participant token is an authorization token used to publish/subscribe to a stage.   A participant object represents participants (people) in the stage and contains information about them. When a token is created, it includes a participant ID; when a participant uses that token to join a stage, the participant is associated with that participant ID There is a 1:1 mapping between participant tokens and participants.    Resources  The following resources contain information about your IVS live stream (see Getting Started with Amazon IVS):    Stage — A stage is a virtual space where multiple participants can exchange audio and video in real time.    Tagging  A tag is a metadata label that you assign to an AWS resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See Tagging AWS Resources for more information, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS stages has no service-specific constraints beyond what is documented there. Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see Access Tags). The Amazon IVS stage API has these tag-related endpoints: TagResource, UntagResource, and ListTagsForResource. The following resource supports tagging: Stage. At most 50 tags can be applied to a resource.  Stages Endpoints     CreateParticipantToken — Creates an additional token for a specified stage. This can be done after stage creation or when tokens expire.    CreateStage — Creates a new stage (and optionally participant tokens).    DeleteStage — Shuts down and deletes the specified stage (disconnecting all participants).    DisconnectParticipant — Disconnects a specified participant and revokes the participant permanently from a specified stage.    GetParticipant — Gets information about the specified participant token.    GetStage — Gets information for the specified stage.    GetStageSession — Gets information for the specified stage session.    ListParticipantEvents — Lists events for a specified participant that occurred during a specified stage session.    ListParticipants — Lists all participants in a specified stage session.    ListStages — Gets summary information about all stages in your account, in the AWS region where the API request is processed.    ListStageSessions — Gets all sessions for a specified stage.    UpdateStage — Updates a stage’s configuration.    Tags Endpoints     ListTagsForResource — Gets information about AWS tags for the specified ARN.    TagResource — Adds or updates tags for the AWS resource with the specified ARN.    UntagResource — Removes tags from the resource with the specified ARN.
public struct IVSRealTime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IVSRealTime client
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
            service: "ivsrealtime",
            signingName: "ivs",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-14",
            endpoint: endpoint,
            errorType: IVSRealTimeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an additional token for a specified stage. This can be done after stage creation or when tokens expire. Tokens always are scoped to the stage for which they are created. Encryption keys are owned by Amazon IVS and never used directly by your application.
    @Sendable
    public func createParticipantToken(_ input: CreateParticipantTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateParticipantTokenResponse {
        return try await self.client.execute(
            operation: "CreateParticipantToken", 
            path: "/CreateParticipantToken", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new stage (and optionally participant tokens).
    @Sendable
    public func createStage(_ input: CreateStageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateStageResponse {
        return try await self.client.execute(
            operation: "CreateStage", 
            path: "/CreateStage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Shuts down and deletes the specified stage (disconnecting all participants).
    @Sendable
    public func deleteStage(_ input: DeleteStageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteStageResponse {
        return try await self.client.execute(
            operation: "DeleteStage", 
            path: "/DeleteStage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disconnects a specified participant and revokes the participant permanently from a specified stage.
    @Sendable
    public func disconnectParticipant(_ input: DisconnectParticipantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisconnectParticipantResponse {
        return try await self.client.execute(
            operation: "DisconnectParticipant", 
            path: "/DisconnectParticipant", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about the specified participant token.
    @Sendable
    public func getParticipant(_ input: GetParticipantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetParticipantResponse {
        return try await self.client.execute(
            operation: "GetParticipant", 
            path: "/GetParticipant", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information for the specified stage.
    @Sendable
    public func getStage(_ input: GetStageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetStageResponse {
        return try await self.client.execute(
            operation: "GetStage", 
            path: "/GetStage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information for the specified stage session.
    @Sendable
    public func getStageSession(_ input: GetStageSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetStageSessionResponse {
        return try await self.client.execute(
            operation: "GetStageSession", 
            path: "/GetStageSession", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists events for a specified participant that occurred during a specified stage session.
    @Sendable
    public func listParticipantEvents(_ input: ListParticipantEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListParticipantEventsResponse {
        return try await self.client.execute(
            operation: "ListParticipantEvents", 
            path: "/ListParticipantEvents", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all participants in a specified stage session.
    @Sendable
    public func listParticipants(_ input: ListParticipantsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListParticipantsResponse {
        return try await self.client.execute(
            operation: "ListParticipants", 
            path: "/ListParticipants", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets all sessions for a specified stage.
    @Sendable
    public func listStageSessions(_ input: ListStageSessionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListStageSessionsResponse {
        return try await self.client.execute(
            operation: "ListStageSessions", 
            path: "/ListStageSessions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all stages in your account, in the AWS region where the API request is processed.
    @Sendable
    public func listStages(_ input: ListStagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListStagesResponse {
        return try await self.client.execute(
            operation: "ListStages", 
            path: "/ListStages", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about AWS tags for the specified ARN.
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

    /// Adds or updates tags for the AWS resource with the specified ARN.
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

    /// Removes tags from the resource with the specified ARN.
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

    /// Updates a stage’s configuration.
    @Sendable
    public func updateStage(_ input: UpdateStageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateStageResponse {
        return try await self.client.execute(
            operation: "UpdateStage", 
            path: "/UpdateStage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension IVSRealTime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IVSRealTime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IVSRealTime {
    /// Lists events for a specified participant that occurred during a specified stage session.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listParticipantEventsPaginator(
        _ input: ListParticipantEventsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListParticipantEventsRequest, ListParticipantEventsResponse> {
        return .init(
            input: input,
            command: self.listParticipantEvents,
            inputKey: \ListParticipantEventsRequest.nextToken,
            outputKey: \ListParticipantEventsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all participants in a specified stage session.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listParticipantsPaginator(
        _ input: ListParticipantsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListParticipantsRequest, ListParticipantsResponse> {
        return .init(
            input: input,
            command: self.listParticipants,
            inputKey: \ListParticipantsRequest.nextToken,
            outputKey: \ListParticipantsResponse.nextToken,
            logger: logger
        )
    }

    /// Gets all sessions for a specified stage.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listStageSessionsPaginator(
        _ input: ListStageSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListStageSessionsRequest, ListStageSessionsResponse> {
        return .init(
            input: input,
            command: self.listStageSessions,
            inputKey: \ListStageSessionsRequest.nextToken,
            outputKey: \ListStageSessionsResponse.nextToken,
            logger: logger
        )
    }

    /// Gets summary information about all stages in your account, in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listStagesPaginator(
        _ input: ListStagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListStagesRequest, ListStagesResponse> {
        return .init(
            input: input,
            command: self.listStages,
            inputKey: \ListStagesRequest.nextToken,
            outputKey: \ListStagesResponse.nextToken,
            logger: logger
        )
    }
}

extension IVSRealTime.ListParticipantEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListParticipantEventsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            participantId: self.participantId,
            sessionId: self.sessionId,
            stageArn: self.stageArn
        )
    }
}

extension IVSRealTime.ListParticipantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListParticipantsRequest {
        return .init(
            filterByPublished: self.filterByPublished,
            filterByState: self.filterByState,
            filterByUserId: self.filterByUserId,
            maxResults: self.maxResults,
            nextToken: token,
            sessionId: self.sessionId,
            stageArn: self.stageArn
        )
    }
}

extension IVSRealTime.ListStageSessionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListStageSessionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            stageArn: self.stageArn
        )
    }
}

extension IVSRealTime.ListStagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListStagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
