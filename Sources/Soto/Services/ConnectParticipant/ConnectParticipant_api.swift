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

/// Service object for interacting with AWS ConnectParticipant service.
///
/// Amazon Connect is an easy-to-use omnichannel cloud contact center service that enables companies of any size to deliver superior customer service at a lower cost. Amazon Connect communications capabilities make it easy for companies to deliver personalized interactions across communication channels, including chat.  Use the Amazon Connect Participant Service to manage participants (for example, agents, customers, and managers listening in), and to send messages and events within a chat contact. The APIs in the service enable the following: sending chat messages, attachment sharing, managing a participant's connection state and message events, and retrieving chat transcripts.
public struct ConnectParticipant: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ConnectParticipant client
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
            serviceName: "ConnectParticipant",
            serviceIdentifier: "participant.connect",
            signingName: "execute-api",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-07",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ConnectParticipantErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "participant.connect-fips.us-east-1.amazonaws.com",
            "us-gov-west-1": "participant.connect.us-gov-west-1.amazonaws.com",
            "us-west-2": "participant.connect-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API. A conflict exception is thrown when an attachment with that identifier is already being uploaded.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func completeAttachmentUpload(_ input: CompleteAttachmentUploadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CompleteAttachmentUploadResponse {
        return try await self.client.execute(
            operation: "CompleteAttachmentUpload", 
            path: "/participant/complete-attachment-upload", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates the participant's connection.    ParticipantToken is used for invoking this API instead of ConnectionToken.  The participant token is valid for the lifetime of the participant – until they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.  Message streaming support: This API can also be used together with the StartContactStreaming API to create a participant connection for chat contacts that are not using a websocket. For more information about message streaming, Enable real-time chat message streaming in the Amazon Connect Administrator Guide.  Feature specifications: For information about feature specifications, such as the allowed number of open websocket connections per participant, see Feature specifications in the Amazon Connect Administrator Guide.   The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func createParticipantConnection(_ input: CreateParticipantConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateParticipantConnectionResponse {
        return try await self.client.execute(
            operation: "CreateParticipantConnection", 
            path: "/participant/connection", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the view for the specified view token.
    @Sendable
    public func describeView(_ input: DescribeViewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeViewResponse {
        return try await self.client.execute(
            operation: "DescribeView", 
            path: "/participant/views/{ViewToken}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disconnects a participant.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func disconnectParticipant(_ input: DisconnectParticipantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisconnectParticipantResponse {
        return try await self.client.execute(
            operation: "DisconnectParticipant", 
            path: "/participant/disconnect", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a pre-signed URL for download of a completed attachment. This is an asynchronous API for use with active contacts.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func getAttachment(_ input: GetAttachmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAttachmentResponse {
        return try await self.client.execute(
            operation: "GetAttachment", 
            path: "/participant/attachment", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a transcript of the session, including details about any attachments. For information about accessing past chat contact transcripts for a persistent chat, see Enable persistent chat.  If you have a process that consumes events in the transcript of an chat that has ended, note that chat transcripts contain the following event content types if the event has occurred during the chat session:    application/vnd.amazonaws.connect.event.participant.left     application/vnd.amazonaws.connect.event.participant.joined     application/vnd.amazonaws.connect.event.chat.ended     application/vnd.amazonaws.connect.event.transfer.succeeded     application/vnd.amazonaws.connect.event.transfer.failed      ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func getTranscript(_ input: GetTranscriptRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTranscriptResponse {
        return try await self.client.execute(
            operation: "GetTranscript", 
            path: "/participant/transcript", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  The application/vnd.amazonaws.connect.event.connection.acknowledged ContentType will no longer be supported starting December 31, 2024. This event has been migrated to the CreateParticipantConnection API using the ConnectParticipant field.  Sends an event. Message receipts are not supported when there are more than two active participants in the chat. Using the SendEvent API for message receipts when a supervisor is barged-in will result in a conflict exception.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func sendEvent(_ input: SendEventRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendEventResponse {
        return try await self.client.execute(
            operation: "SendEvent", 
            path: "/participant/event", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends a message.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func sendMessage(_ input: SendMessageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendMessageResponse {
        return try await self.client.execute(
            operation: "SendMessage", 
            path: "/participant/message", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    @Sendable
    public func startAttachmentUpload(_ input: StartAttachmentUploadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartAttachmentUploadResponse {
        return try await self.client.execute(
            operation: "StartAttachmentUpload", 
            path: "/participant/start-attachment-upload", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ConnectParticipant {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ConnectParticipant, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ConnectParticipant {
    /// Retrieves a transcript of the session, including details about any attachments. For information about accessing past chat contact transcripts for a persistent chat, see Enable persistent chat.  If you have a process that consumes events in the transcript of an chat that has ended, note that chat transcripts contain the following event content types if the event has occurred during the chat session:    application/vnd.amazonaws.connect.event.participant.left     application/vnd.amazonaws.connect.event.participant.joined     application/vnd.amazonaws.connect.event.chat.ended     application/vnd.amazonaws.connect.event.transfer.succeeded     application/vnd.amazonaws.connect.event.transfer.failed      ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getTranscriptPaginator(
        _ input: GetTranscriptRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetTranscriptRequest, GetTranscriptResponse> {
        return .init(
            input: input,
            command: self.getTranscript,
            inputKey: \GetTranscriptRequest.nextToken,
            outputKey: \GetTranscriptResponse.nextToken,
            logger: logger
        )
    }
}

extension ConnectParticipant.GetTranscriptRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectParticipant.GetTranscriptRequest {
        return .init(
            connectionToken: self.connectionToken,
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token,
            scanDirection: self.scanDirection,
            sortOrder: self.sortOrder,
            startPosition: self.startPosition
        )
    }
}
