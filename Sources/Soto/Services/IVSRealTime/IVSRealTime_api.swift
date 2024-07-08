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

/// Service object for interacting with AWS IVSRealTime service.
///
/// The Amazon Interactive Video Service (IVS) real-time API is REST compatible, using a standard HTTP
/// 	  API and an AWS EventBridge event stream for responses. JSON is used for both requests and responses,
/// 	  including errors.   Key Concepts     Stage — A virtual space where participants can exchange video in real time.    Participant token — A token that authenticates a participant when they join a stage.    Participant object — Represents participants (people) in the stage and contains information about them. When a token is created, it includes a participant ID; when a participant uses that token to join a stage, the participant is associated with that participant ID. There is a 1:1 mapping between participant tokens and participants.   For server-side composition:    Composition process — Composites participants of a stage into a single video and forwards it to a set of outputs (e.g., IVS channels). Composition endpoints support this process.    Composition — Controls the look of the outputs, including how participants are positioned in the video.   For more information about your IVS live stream, also see Getting Started with Amazon IVS Real-Time Streaming.  Tagging  A tag is a metadata label that you assign to an AWS resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See Tagging AWS Resources for more information, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS stages has no service-specific constraints beyond what is documented there. Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see Access Tags). The Amazon IVS real-time API has these tag-related endpoints: TagResource, UntagResource, and ListTagsForResource. The following resource supports tagging: Stage. At most 50 tags can be applied to a resource.
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
            serviceName: "IVSRealTime",
            serviceIdentifier: "ivsrealtime",
            signingName: "ivs",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-14",
            endpoint: endpoint,
            errorType: IVSRealTimeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates an EncoderConfiguration object.
    @Sendable
    public func createEncoderConfiguration(_ input: CreateEncoderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEncoderConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateEncoderConfiguration", 
            path: "/CreateEncoderConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

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

    /// Creates a new storage configuration, used to enable recording to Amazon S3.
    /// 	  When a StorageConfiguration is created, IVS will modify the S3 bucketPolicy of the provided bucket.
    /// 	  This will ensure that IVS has sufficient permissions to write content to the provided bucket.
    @Sendable
    public func createStorageConfiguration(_ input: CreateStorageConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateStorageConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateStorageConfiguration", 
            path: "/CreateStorageConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an EncoderConfiguration resource. Ensures that no Compositions are using this template; otherwise, returns an error.
    @Sendable
    public func deleteEncoderConfiguration(_ input: DeleteEncoderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteEncoderConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteEncoderConfiguration", 
            path: "/DeleteEncoderConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified public key used to sign stage participant tokens.
    /// 	  This invalidates future participant tokens generated using the key pair’s private key.
    @Sendable
    public func deletePublicKey(_ input: DeletePublicKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePublicKeyResponse {
        return try await self.client.execute(
            operation: "DeletePublicKey", 
            path: "/DeletePublicKey", 
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

    /// Deletes the storage configuration for the specified ARN. If you try to delete a storage configuration that is used by a Composition, you will get an error (409 ConflictException).
    /// 	  To avoid this, for all Compositions that reference the storage configuration, first use StopComposition and wait for it to complete,
    /// 	  then use DeleteStorageConfiguration.
    @Sendable
    public func deleteStorageConfiguration(_ input: DeleteStorageConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteStorageConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteStorageConfiguration", 
            path: "/DeleteStorageConfiguration", 
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

    /// Get information about the specified Composition resource.
    @Sendable
    public func getComposition(_ input: GetCompositionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCompositionResponse {
        return try await self.client.execute(
            operation: "GetComposition", 
            path: "/GetComposition", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about the specified EncoderConfiguration resource.
    @Sendable
    public func getEncoderConfiguration(_ input: GetEncoderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEncoderConfigurationResponse {
        return try await self.client.execute(
            operation: "GetEncoderConfiguration", 
            path: "/GetEncoderConfiguration", 
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

    /// Gets information for the specified public key.
    @Sendable
    public func getPublicKey(_ input: GetPublicKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPublicKeyResponse {
        return try await self.client.execute(
            operation: "GetPublicKey", 
            path: "/GetPublicKey", 
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

    /// Gets the storage configuration for the specified ARN.
    @Sendable
    public func getStorageConfiguration(_ input: GetStorageConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetStorageConfigurationResponse {
        return try await self.client.execute(
            operation: "GetStorageConfiguration", 
            path: "/GetStorageConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Import a public key to be used for signing stage participant tokens.
    @Sendable
    public func importPublicKey(_ input: ImportPublicKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportPublicKeyResponse {
        return try await self.client.execute(
            operation: "ImportPublicKey", 
            path: "/ImportPublicKey", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all Compositions in your account, in the AWS region where the API request is processed.
    @Sendable
    public func listCompositions(_ input: ListCompositionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCompositionsResponse {
        return try await self.client.execute(
            operation: "ListCompositions", 
            path: "/ListCompositions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all EncoderConfigurations in your account, in the AWS region where the API request is processed.
    @Sendable
    public func listEncoderConfigurations(_ input: ListEncoderConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEncoderConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListEncoderConfigurations", 
            path: "/ListEncoderConfigurations", 
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

    /// Gets summary information about all public keys in your account, in the AWS region where the API request is processed.
    @Sendable
    public func listPublicKeys(_ input: ListPublicKeysRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPublicKeysResponse {
        return try await self.client.execute(
            operation: "ListPublicKeys", 
            path: "/ListPublicKeys", 
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

    /// Gets summary information about all storage configurations in your account,
    /// 	  in the AWS region where the API request is processed.
    @Sendable
    public func listStorageConfigurations(_ input: ListStorageConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListStorageConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListStorageConfigurations", 
            path: "/ListStorageConfigurations", 
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

    /// Starts a Composition from a stage based on the configuration provided in the request. A Composition is an ephemeral resource that exists after this endpoint returns successfully. Composition stops and the resource is deleted:   When StopComposition is called.   After a 1-minute timeout, when all participants are disconnected from the stage.   After a 1-minute timeout, if there are no participants in the stage when StartComposition is called.   When broadcasting to the IVS channel fails and all retries are exhausted.   When broadcasting is disconnected and all attempts to reconnect are exhausted.
    @Sendable
    public func startComposition(_ input: StartCompositionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartCompositionResponse {
        return try await self.client.execute(
            operation: "StartComposition", 
            path: "/StartComposition", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops and deletes a Composition resource. Any broadcast from the Composition resource is stopped.
    @Sendable
    public func stopComposition(_ input: StopCompositionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopCompositionResponse {
        return try await self.client.execute(
            operation: "StopComposition", 
            path: "/StopComposition", 
            httpMethod: .POST, 
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
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IVSRealTime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IVSRealTime {
    /// Gets summary information about all Compositions in your account, in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCompositionsPaginator(
        _ input: ListCompositionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCompositionsRequest, ListCompositionsResponse> {
        return .init(
            input: input,
            command: self.listCompositions,
            inputKey: \ListCompositionsRequest.nextToken,
            outputKey: \ListCompositionsResponse.nextToken,
            logger: logger
        )
    }

    /// Gets summary information about all EncoderConfigurations in your account, in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEncoderConfigurationsPaginator(
        _ input: ListEncoderConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEncoderConfigurationsRequest, ListEncoderConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listEncoderConfigurations,
            inputKey: \ListEncoderConfigurationsRequest.nextToken,
            outputKey: \ListEncoderConfigurationsResponse.nextToken,
            logger: logger
        )
    }

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

    /// Gets summary information about all public keys in your account, in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPublicKeysPaginator(
        _ input: ListPublicKeysRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPublicKeysRequest, ListPublicKeysResponse> {
        return .init(
            input: input,
            command: self.listPublicKeys,
            inputKey: \ListPublicKeysRequest.nextToken,
            outputKey: \ListPublicKeysResponse.nextToken,
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

    /// Gets summary information about all storage configurations in your account,
    /// 	  in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listStorageConfigurationsPaginator(
        _ input: ListStorageConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListStorageConfigurationsRequest, ListStorageConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listStorageConfigurations,
            inputKey: \ListStorageConfigurationsRequest.nextToken,
            outputKey: \ListStorageConfigurationsResponse.nextToken,
            logger: logger
        )
    }
}

extension IVSRealTime.ListCompositionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListCompositionsRequest {
        return .init(
            filterByEncoderConfigurationArn: self.filterByEncoderConfigurationArn,
            filterByStageArn: self.filterByStageArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IVSRealTime.ListEncoderConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListEncoderConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
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
            filterByRecordingState: self.filterByRecordingState,
            filterByState: self.filterByState,
            filterByUserId: self.filterByUserId,
            maxResults: self.maxResults,
            nextToken: token,
            sessionId: self.sessionId,
            stageArn: self.stageArn
        )
    }
}

extension IVSRealTime.ListPublicKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListPublicKeysRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
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

extension IVSRealTime.ListStorageConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVSRealTime.ListStorageConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
