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

/// Service object for interacting with AWS SSMContacts service.
///
/// Systems Manager Incident Manager is an incident management console designed to help users mitigate and recover from incidents affecting their Amazon Web Services-hosted applications. An incident is any unplanned interruption or reduction in quality of services. Incident Manager increases incident resolution by notifying responders of impact, highlighting relevant troubleshooting data, and providing collaboration tools to get services back up and running. To achieve the primary goal of reducing the time-to-resolution of critical incidents, Incident Manager automates response plans and enables responder team escalation.
public struct SSMContacts: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SSMContacts client
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
            amzTarget: "SSMContacts",
            serviceName: "SSMContacts",
            serviceIdentifier: "ssm-contacts",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2021-05-03",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SSMContactsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "ssm-contacts-fips.us-east-1.amazonaws.com",
            "us-east-2": "ssm-contacts-fips.us-east-2.amazonaws.com",
            "us-west-1": "ssm-contacts-fips.us-west-1.amazonaws.com",
            "us-west-2": "ssm-contacts-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Used to acknowledge an engagement to a contact channel during an incident.
    @Sendable
    public func acceptPage(_ input: AcceptPageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AcceptPageResult {
        return try await self.client.execute(
            operation: "AcceptPage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Activates a contact's contact channel. Incident Manager can't engage a contact until the contact channel has been activated.
    @Sendable
    public func activateContactChannel(_ input: ActivateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ActivateContactChannelResult {
        return try await self.client.execute(
            operation: "ActivateContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Contacts are either the contacts that Incident Manager engages during an incident or the escalation plans that Incident Manager uses to engage contacts in phases during an incident.
    @Sendable
    public func createContact(_ input: CreateContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateContactResult {
        return try await self.client.execute(
            operation: "CreateContact", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A contact channel is the method that Incident Manager uses to engage your contact.
    @Sendable
    public func createContactChannel(_ input: CreateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateContactChannelResult {
        return try await self.client.execute(
            operation: "CreateContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a rotation in an on-call schedule.
    @Sendable
    public func createRotation(_ input: CreateRotationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRotationResult {
        return try await self.client.execute(
            operation: "CreateRotation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an override for a rotation in an on-call schedule.
    @Sendable
    public func createRotationOverride(_ input: CreateRotationOverrideRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRotationOverrideResult {
        return try await self.client.execute(
            operation: "CreateRotationOverride", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// To no longer receive Incident Manager engagements to a contact channel, you can deactivate the channel.
    @Sendable
    public func deactivateContactChannel(_ input: DeactivateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeactivateContactChannelResult {
        return try await self.client.execute(
            operation: "DeactivateContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// To remove a contact from Incident Manager, you can delete the contact. Deleting a contact removes them from all escalation plans and related response plans. Deleting an escalation plan removes it from all related response plans. You will have to recreate the contact and its contact channels before you can use it again.
    @Sendable
    public func deleteContact(_ input: DeleteContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteContactResult {
        return try await self.client.execute(
            operation: "DeleteContact", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// To no longer receive engagements on a contact channel, you can delete the channel from a contact. Deleting the contact channel removes it from the contact's engagement plan. If you delete the only contact channel for a contact, you won't be able to engage that contact during an incident.
    @Sendable
    public func deleteContactChannel(_ input: DeleteContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteContactChannelResult {
        return try await self.client.execute(
            operation: "DeleteContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a rotation from the system. If a rotation belongs to more than one on-call schedule, this operation deletes it from all of them.
    @Sendable
    public func deleteRotation(_ input: DeleteRotationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRotationResult {
        return try await self.client.execute(
            operation: "DeleteRotation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing override for an on-call rotation.
    @Sendable
    public func deleteRotationOverride(_ input: DeleteRotationOverrideRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRotationOverrideResult {
        return try await self.client.execute(
            operation: "DeleteRotationOverride", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Incident Manager uses engagements to engage contacts and escalation plans during an incident. Use this command to describe the engagement that occurred during an incident.
    @Sendable
    public func describeEngagement(_ input: DescribeEngagementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEngagementResult {
        return try await self.client.execute(
            operation: "DescribeEngagement", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists details of the engagement to a contact channel.
    @Sendable
    public func describePage(_ input: DescribePageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribePageResult {
        return try await self.client.execute(
            operation: "DescribePage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the specified contact or escalation plan.
    @Sendable
    public func getContact(_ input: GetContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetContactResult {
        return try await self.client.execute(
            operation: "GetContact", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List details about a specific contact channel.
    @Sendable
    public func getContactChannel(_ input: GetContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetContactChannelResult {
        return try await self.client.execute(
            operation: "GetContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the resource policies attached to the specified contact or escalation plan.
    @Sendable
    public func getContactPolicy(_ input: GetContactPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetContactPolicyResult {
        return try await self.client.execute(
            operation: "GetContactPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an on-call rotation.
    @Sendable
    public func getRotation(_ input: GetRotationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRotationResult {
        return try await self.client.execute(
            operation: "GetRotation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an override to an on-call rotation.
    @Sendable
    public func getRotationOverride(_ input: GetRotationOverrideRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRotationOverrideResult {
        return try await self.client.execute(
            operation: "GetRotationOverride", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all contact channels for the specified contact.
    @Sendable
    public func listContactChannels(_ input: ListContactChannelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListContactChannelsResult {
        return try await self.client.execute(
            operation: "ListContactChannels", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all contacts and escalation plans in Incident Manager.
    @Sendable
    public func listContacts(_ input: ListContactsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListContactsResult {
        return try await self.client.execute(
            operation: "ListContacts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all engagements that have happened in an incident.
    @Sendable
    public func listEngagements(_ input: ListEngagementsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEngagementsResult {
        return try await self.client.execute(
            operation: "ListEngagements", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all of the engagements to contact channels that have been acknowledged.
    @Sendable
    public func listPageReceipts(_ input: ListPageReceiptsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPageReceiptsResult {
        return try await self.client.execute(
            operation: "ListPageReceipts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the resolution path of an engagement. For example, the escalation plan engaged in an incident might target an on-call schedule that includes several contacts in a rotation, but just one contact on-call when the incident starts. The resolution path indicates the hierarchy of escalation plan > on-call schedule > contact.
    @Sendable
    public func listPageResolutions(_ input: ListPageResolutionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPageResolutionsResult {
        return try await self.client.execute(
            operation: "ListPageResolutions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the engagements to a contact's contact channels.
    @Sendable
    public func listPagesByContact(_ input: ListPagesByContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPagesByContactResult {
        return try await self.client.execute(
            operation: "ListPagesByContact", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the engagements to contact channels that occurred by engaging a contact.
    @Sendable
    public func listPagesByEngagement(_ input: ListPagesByEngagementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPagesByEngagementResult {
        return try await self.client.execute(
            operation: "ListPagesByEngagement", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of shifts based on rotation configuration parameters.  The Incident Manager primarily uses this operation to populate the Preview calendar. It is not typically run by end users.
    @Sendable
    public func listPreviewRotationShifts(_ input: ListPreviewRotationShiftsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPreviewRotationShiftsResult {
        return try await self.client.execute(
            operation: "ListPreviewRotationShifts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of overrides currently specified for an on-call rotation.
    @Sendable
    public func listRotationOverrides(_ input: ListRotationOverridesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRotationOverridesResult {
        return try await self.client.execute(
            operation: "ListRotationOverrides", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of shifts generated by an existing rotation in the system.
    @Sendable
    public func listRotationShifts(_ input: ListRotationShiftsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRotationShiftsResult {
        return try await self.client.execute(
            operation: "ListRotationShifts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of on-call rotations.
    @Sendable
    public func listRotations(_ input: ListRotationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRotationsResult {
        return try await self.client.execute(
            operation: "ListRotations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags of an escalation plan or contact.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a resource policy to the specified contact or escalation plan. The resource policy is used to share the contact or escalation plan using Resource Access Manager (RAM). For more information about cross-account sharing, see Setting up cross-account functionality.
    @Sendable
    public func putContactPolicy(_ input: PutContactPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutContactPolicyResult {
        return try await self.client.execute(
            operation: "PutContactPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends an activation code to a contact channel. The contact can use this code to activate the contact channel in the console or with the ActivateChannel operation. Incident Manager can't engage a contact channel until it has been activated.
    @Sendable
    public func sendActivationCode(_ input: SendActivationCodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendActivationCodeResult {
        return try await self.client.execute(
            operation: "SendActivationCode", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an engagement to a contact or escalation plan. The engagement engages each contact specified in the incident.
    @Sendable
    public func startEngagement(_ input: StartEngagementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartEngagementResult {
        return try await self.client.execute(
            operation: "StartEngagement", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an engagement before it finishes the final stage of the escalation plan or engagement plan. Further contacts aren't engaged.
    @Sendable
    public func stopEngagement(_ input: StopEngagementRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopEngagementResult {
        return try await self.client.execute(
            operation: "StopEngagement", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags a contact or escalation plan. You can tag only contacts and escalation plans in the first region of your replication set.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResult {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResult {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the contact or escalation plan specified.
    @Sendable
    public func updateContact(_ input: UpdateContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateContactResult {
        return try await self.client.execute(
            operation: "UpdateContact", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a contact's contact channel.
    @Sendable
    public func updateContactChannel(_ input: UpdateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateContactChannelResult {
        return try await self.client.execute(
            operation: "UpdateContactChannel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the information specified for an on-call rotation.
    @Sendable
    public func updateRotation(_ input: UpdateRotationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRotationResult {
        return try await self.client.execute(
            operation: "UpdateRotation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SSMContacts {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SSMContacts, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSMContacts {
    /// Lists all contact channels for the specified contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listContactChannelsPaginator(
        _ input: ListContactChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListContactChannelsRequest, ListContactChannelsResult> {
        return .init(
            input: input,
            command: self.listContactChannels,
            inputKey: \ListContactChannelsRequest.nextToken,
            outputKey: \ListContactChannelsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all contacts and escalation plans in Incident Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listContactsPaginator(
        _ input: ListContactsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListContactsRequest, ListContactsResult> {
        return .init(
            input: input,
            command: self.listContacts,
            inputKey: \ListContactsRequest.nextToken,
            outputKey: \ListContactsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all engagements that have happened in an incident.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEngagementsPaginator(
        _ input: ListEngagementsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEngagementsRequest, ListEngagementsResult> {
        return .init(
            input: input,
            command: self.listEngagements,
            inputKey: \ListEngagementsRequest.nextToken,
            outputKey: \ListEngagementsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all of the engagements to contact channels that have been acknowledged.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPageReceiptsPaginator(
        _ input: ListPageReceiptsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPageReceiptsRequest, ListPageReceiptsResult> {
        return .init(
            input: input,
            command: self.listPageReceipts,
            inputKey: \ListPageReceiptsRequest.nextToken,
            outputKey: \ListPageReceiptsResult.nextToken,
            logger: logger
        )
    }

    /// Returns the resolution path of an engagement. For example, the escalation plan engaged in an incident might target an on-call schedule that includes several contacts in a rotation, but just one contact on-call when the incident starts. The resolution path indicates the hierarchy of escalation plan > on-call schedule > contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPageResolutionsPaginator(
        _ input: ListPageResolutionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPageResolutionsRequest, ListPageResolutionsResult> {
        return .init(
            input: input,
            command: self.listPageResolutions,
            inputKey: \ListPageResolutionsRequest.nextToken,
            outputKey: \ListPageResolutionsResult.nextToken,
            logger: logger
        )
    }

    /// Lists the engagements to a contact's contact channels.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPagesByContactPaginator(
        _ input: ListPagesByContactRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPagesByContactRequest, ListPagesByContactResult> {
        return .init(
            input: input,
            command: self.listPagesByContact,
            inputKey: \ListPagesByContactRequest.nextToken,
            outputKey: \ListPagesByContactResult.nextToken,
            logger: logger
        )
    }

    /// Lists the engagements to contact channels that occurred by engaging a contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPagesByEngagementPaginator(
        _ input: ListPagesByEngagementRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPagesByEngagementRequest, ListPagesByEngagementResult> {
        return .init(
            input: input,
            command: self.listPagesByEngagement,
            inputKey: \ListPagesByEngagementRequest.nextToken,
            outputKey: \ListPagesByEngagementResult.nextToken,
            logger: logger
        )
    }

    /// Returns a list of shifts based on rotation configuration parameters.  The Incident Manager primarily uses this operation to populate the Preview calendar. It is not typically run by end users.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPreviewRotationShiftsPaginator(
        _ input: ListPreviewRotationShiftsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPreviewRotationShiftsRequest, ListPreviewRotationShiftsResult> {
        return .init(
            input: input,
            command: self.listPreviewRotationShifts,
            inputKey: \ListPreviewRotationShiftsRequest.nextToken,
            outputKey: \ListPreviewRotationShiftsResult.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of overrides currently specified for an on-call rotation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRotationOverridesPaginator(
        _ input: ListRotationOverridesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRotationOverridesRequest, ListRotationOverridesResult> {
        return .init(
            input: input,
            command: self.listRotationOverrides,
            inputKey: \ListRotationOverridesRequest.nextToken,
            outputKey: \ListRotationOverridesResult.nextToken,
            logger: logger
        )
    }

    /// Returns a list of shifts generated by an existing rotation in the system.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRotationShiftsPaginator(
        _ input: ListRotationShiftsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRotationShiftsRequest, ListRotationShiftsResult> {
        return .init(
            input: input,
            command: self.listRotationShifts,
            inputKey: \ListRotationShiftsRequest.nextToken,
            outputKey: \ListRotationShiftsResult.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of on-call rotations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRotationsPaginator(
        _ input: ListRotationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRotationsRequest, ListRotationsResult> {
        return .init(
            input: input,
            command: self.listRotations,
            inputKey: \ListRotationsRequest.nextToken,
            outputKey: \ListRotationsResult.nextToken,
            logger: logger
        )
    }
}

extension SSMContacts.ListContactChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListContactChannelsRequest {
        return .init(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMContacts.ListContactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListContactsRequest {
        return .init(
            aliasPrefix: self.aliasPrefix,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )
    }
}

extension SSMContacts.ListEngagementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListEngagementsRequest {
        return .init(
            incidentId: self.incidentId,
            maxResults: self.maxResults,
            nextToken: token,
            timeRangeValue: self.timeRangeValue
        )
    }
}

extension SSMContacts.ListPageReceiptsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListPageReceiptsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            pageId: self.pageId
        )
    }
}

extension SSMContacts.ListPageResolutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListPageResolutionsRequest {
        return .init(
            nextToken: token,
            pageId: self.pageId
        )
    }
}

extension SSMContacts.ListPagesByContactRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListPagesByContactRequest {
        return .init(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMContacts.ListPagesByEngagementRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListPagesByEngagementRequest {
        return .init(
            engagementId: self.engagementId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMContacts.ListPreviewRotationShiftsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListPreviewRotationShiftsRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            members: self.members,
            nextToken: token,
            overrides: self.overrides,
            recurrence: self.recurrence,
            rotationStartTime: self.rotationStartTime,
            startTime: self.startTime,
            timeZoneId: self.timeZoneId
        )
    }
}

extension SSMContacts.ListRotationOverridesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListRotationOverridesRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            rotationId: self.rotationId,
            startTime: self.startTime
        )
    }
}

extension SSMContacts.ListRotationShiftsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListRotationShiftsRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            rotationId: self.rotationId,
            startTime: self.startTime
        )
    }
}

extension SSMContacts.ListRotationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMContacts.ListRotationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            rotationNamePrefix: self.rotationNamePrefix
        )
    }
}
