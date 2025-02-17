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

/// Service object for interacting with AWS ChimeSDKMeetings service.
///
/// The Amazon Chime SDK meetings APIs in this section allow software developers to create Amazon Chime SDK meetings, set the Amazon Web Services Regions for meetings, create and manage users, and send and  receive meeting notifications. For more information about the meeting APIs, see  Amazon Chime SDK meetings.
public struct ChimeSDKMeetings: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ChimeSDKMeetings client
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
            serviceName: "ChimeSDKMeetings",
            serviceIdentifier: "meetings-chime",
            signingName: "chime",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-15",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ChimeSDKMeetingsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "meetings-chime-fips.ca-central-1.amazonaws.com",
            "us-east-1": "meetings-chime-fips.us-east-1.amazonaws.com",
            "us-gov-east-1": "meetings-chime-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "meetings-chime-fips.us-gov-west-1.amazonaws.com",
            "us-west-2": "meetings-chime-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func batchCreateAttendee(_ input: BatchCreateAttendeeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchCreateAttendeeResponse {
        return try await self.client.execute(
            operation: "BatchCreateAttendee", 
            path: "/meetings/{MeetingId}/attendees?operation=batch-create", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates AttendeeCapabilities except the capabilities listed in an ExcludedAttendeeIds table.  You use the capabilities with a set of values that control what the capabilities can do, such as SendReceive data. For more information about those values, see  .  When using capabilities, be aware of these corner cases:   If you specify MeetingFeatures:Video:MaxResolution:None when you create a meeting, all API requests  that include SendReceive, Send, or Receive for AttendeeCapabilities:Video will be rejected with ValidationError 400.   If you specify MeetingFeatures:Content:MaxResolution:None when you create a meeting, all API requests that include SendReceive, Send, or  Receive for AttendeeCapabilities:Content will be rejected with ValidationError 400.   You can't set content capabilities to SendReceive or Receive unless you also set video capabilities to SendReceive  or Receive. If you don't set the video capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your video capability  to receive and you set your content capability to not receive.   When you change an audio capability from None or Receive to Send or SendReceive ,  and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.   When you change a video or content capability from None or Receive to Send or SendReceive ,  and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.
    @Sendable
    public func batchUpdateAttendeeCapabilitiesExcept(_ input: BatchUpdateAttendeeCapabilitiesExceptRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "BatchUpdateAttendeeCapabilitiesExcept", 
            path: "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    @Sendable
    public func createAttendee(_ input: CreateAttendeeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAttendeeResponse {
        return try await self.client.execute(
            operation: "CreateAttendee", 
            path: "/meetings/{MeetingId}/attendees", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see  Amazon Chime SDK Media Regions in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    @Sendable
    public func createMeeting(_ input: CreateMeetingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMeetingResponse {
        return try await self.client.execute(
            operation: "CreateMeeting", 
            path: "/meetings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see  Amazon Chime SDK Media Regions in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func createMeetingWithAttendees(_ input: CreateMeetingWithAttendeesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMeetingWithAttendeesResponse {
        return try await self.client.execute(
            operation: "CreateMeetingWithAttendees", 
            path: "/meetings?operation=create-attendees", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their  JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func deleteAttendee(_ input: DeleteAttendeeRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteAttendee", 
            path: "/meetings/{MeetingId}/attendees/{AttendeeId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from  joining the meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    @Sendable
    public func deleteMeeting(_ input: DeleteMeetingRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteMeeting", 
            path: "/meetings/{MeetingId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func getAttendee(_ input: GetAttendeeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAttendeeResponse {
        return try await self.client.execute(
            operation: "GetAttendee", 
            path: "/meetings/{MeetingId}/attendees/{AttendeeId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func getMeeting(_ input: GetMeetingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMeetingResponse {
        return try await self.client.execute(
            operation: "GetMeeting", 
            path: "/meetings/{MeetingId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @Sendable
    public func listAttendees(_ input: ListAttendeesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAttendeesResponse {
        return try await self.client.execute(
            operation: "ListAttendees", 
            path: "/meetings/{MeetingId}/attendees", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the tags available for the specified resource.
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

    /// Starts transcription for the specified meetingId. For more information, refer to  Using Amazon Chime SDK live transcription in the Amazon Chime SDK Developer Guide. If you specify an invalid configuration, a TranscriptFailed event will be sent with the contents of the BadRequestException generated by Amazon Transcribe.   For more information on each parameter and which combinations are valid, refer to the  StartStreamTranscription API in the  Amazon Transcribe Developer Guide.  By default, Amazon Transcribe may use and store audio content processed by the service to develop and improve Amazon Web Services AI/ML services as  further described in section 50 of the Amazon Web Services Service Terms. Using Amazon Transcribe  may be subject to federal and state laws or regulations regarding the recording or interception of electronic communications. It is your and your end users’  responsibility to comply with all applicable laws regarding the recording, including properly notifying all participants in a recorded session or communication  that the session or communication is being recorded, and obtaining all necessary consents. You can opt out from Amazon Web Services using audio content to develop and  improve AWS AI/ML services by configuring an AI services opt out policy using Amazon Web Services Organizations.
    @Sendable
    public func startMeetingTranscription(_ input: StartMeetingTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "StartMeetingTranscription", 
            path: "/meetings/{MeetingId}/transcription?operation=start", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops transcription for the specified meetingId. For more information, refer to  Using Amazon Chime SDK live transcription in the Amazon Chime SDK Developer Guide.  By default, Amazon Transcribe may use and store audio content processed by the service to develop and improve Amazon Web Services AI/ML services as  further described in section 50 of the Amazon Web Services Service Terms. Using Amazon Transcribe  may be subject to federal and state laws or regulations regarding the recording or interception of electronic communications. It is your and your end users’  responsibility to comply with all applicable laws regarding the recording, including properly notifying all participants in a recorded session or communication  that the session or communication is being recorded, and obtaining all necessary consents. You can opt out from Amazon Web Services using audio content to develop and  improve Amazon Web Services AI/ML services by configuring an AI services opt out policy using Amazon Web Services Organizations.
    @Sendable
    public func stopMeetingTranscription(_ input: StopMeetingTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "StopMeetingTranscription", 
            path: "/meetings/{MeetingId}/transcription?operation=stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// The resource that supports tags.
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

    /// Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you  attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information,  see the documentation for the service whose resource you want to untag.   You can only tag resources that are located in the specified Amazon Web Services Region for the calling Amazon Web Services account.    Minimum permissions  In addition to the tag:UntagResources permission required by this operation, you must also have the remove tags permission defined by the service that created the resource.  For example, to remove the tags from an Amazon EC2 instance using the UntagResources operation, you must have both of the following permissions:  tag:UntagResource   ChimeSDKMeetings:DeleteTags
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

    /// The capabilities that you want to update.  You use the capabilities with a set of values that control what the capabilities can do, such as SendReceive data. For more information about those values, see  .  When using capabilities, be aware of these corner cases:   If you specify MeetingFeatures:Video:MaxResolution:None when you create a meeting, all API requests  that include SendReceive, Send, or Receive for AttendeeCapabilities:Video will be rejected with ValidationError 400.   If you specify MeetingFeatures:Content:MaxResolution:None when you create a meeting, all API requests that include SendReceive, Send, or  Receive for AttendeeCapabilities:Content will be rejected with ValidationError 400.   You can't set content capabilities to SendReceive or Receive unless you also set video capabilities to SendReceive  or Receive. If you don't set the video capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your video capability  to receive and you set your content capability to not receive.   When you change an audio capability from None or Receive to Send or SendReceive ,  and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.   When you change a video or content capability from None or Receive to Send or SendReceive ,  and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.
    @Sendable
    public func updateAttendeeCapabilities(_ input: UpdateAttendeeCapabilitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAttendeeCapabilitiesResponse {
        return try await self.client.execute(
            operation: "UpdateAttendeeCapabilities", 
            path: "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ChimeSDKMeetings {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ChimeSDKMeetings, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ChimeSDKMeetings {
    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAttendeesPaginator(
        _ input: ListAttendeesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAttendeesRequest, ListAttendeesResponse> {
        return .init(
            input: input,
            command: self.listAttendees,
            inputKey: \ListAttendeesRequest.nextToken,
            outputKey: \ListAttendeesResponse.nextToken,
            logger: logger
        )
    }
}

extension ChimeSDKMeetings.ListAttendeesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMeetings.ListAttendeesRequest {
        return .init(
            maxResults: self.maxResults,
            meetingId: self.meetingId,
            nextToken: token
        )
    }
}
