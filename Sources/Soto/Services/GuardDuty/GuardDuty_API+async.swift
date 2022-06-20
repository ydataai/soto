//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GuardDuty {
    // MARK: Async API Calls

    /// Accepts the invitation to be a member account and get monitored by a GuardDuty administrator account that sent the invitation.
    public func acceptAdministratorInvitation(_ input: AcceptAdministratorInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptAdministratorInvitationResponse {
        return try await self.client.execute(operation: "AcceptAdministratorInvitation", path: "/detector/{DetectorId}/administrator", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Accepts the invitation to be monitored by a GuardDuty administrator account.
    @available(*, deprecated, message: "This operation is deprecated, use AcceptAdministratorInvitation instead")
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInvitationResponse {
        return try await self.client.execute(operation: "AcceptInvitation", path: "/detector/{DetectorId}/master", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Archives GuardDuty findings that are specified by the list of finding IDs.  Only the administrator account can archive findings. Member accounts don't have permission to archive findings from their accounts.
    public func archiveFindings(_ input: ArchiveFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ArchiveFindingsResponse {
        return try await self.client.execute(operation: "ArchiveFindings", path: "/detector/{DetectorId}/findings/archive", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.
    public func createDetector(_ input: CreateDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDetectorResponse {
        return try await self.client.execute(operation: "CreateDetector", path: "/detector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a filter using the specified finding criteria.
    public func createFilter(_ input: CreateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFilterResponse {
        return try await self.client.execute(operation: "CreateFilter", path: "/detector/{DetectorId}/filter", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with Amazon Web Services infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the administrator account can use this operation.
    public func createIPSet(_ input: CreateIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPSetResponse {
        return try await self.client.execute(operation: "CreateIPSet", path: "/detector/{DetectorId}/ipset", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization. When using Create Members as an organizations delegated administrator this action will enable GuardDuty in the added member accounts, with the exception of the organization delegated administrator account, which must enable GuardDuty prior to being added as a member. If you are adding accounts by invitation use this action after GuardDuty has been enabled in potential member accounts and before using  Invite Members .
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMembersResponse {
        return try await self.client.execute(operation: "CreateMembers", path: "/detector/{DetectorId}/member", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.
    public func createPublishingDestination(_ input: CreatePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublishingDestinationResponse {
        return try await self.client.execute(operation: "CreatePublishingDestination", path: "/detector/{DetectorId}/publishingDestination", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSampleFindingsResponse {
        return try await self.client.execute(operation: "CreateSampleFindings", path: "/detector/{DetectorId}/findings/create", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the administrator account can use this operation.
    public func createThreatIntelSet(_ input: CreateThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateThreatIntelSetResponse {
        return try await self.client.execute(operation: "CreateThreatIntelSet", path: "/detector/{DetectorId}/threatintelset", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Declines invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.
    public func declineInvitations(_ input: DeclineInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeclineInvitationsResponse {
        return try await self.client.execute(operation: "DeclineInvitations", path: "/invitation/decline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon GuardDuty detector that is specified by the detector ID.
    public func deleteDetector(_ input: DeleteDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDetectorResponse {
        return try await self.client.execute(operation: "DeleteDetector", path: "/detector/{DetectorId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the filter specified by the filter name.
    public func deleteFilter(_ input: DeleteFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilterResponse {
        return try await self.client.execute(operation: "DeleteFilter", path: "/detector/{DetectorId}/filter/{FilterName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the IPSet specified by the ipSetId. IPSets are called trusted IP lists in the console user interface.
    public func deleteIPSet(_ input: DeleteIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIPSetResponse {
        return try await self.client.execute(operation: "DeleteIPSet", path: "/detector/{DetectorId}/ipset/{IpSetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInvitationsResponse {
        return try await self.client.execute(operation: "DeleteInvitations", path: "/invitation/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMembersResponse {
        return try await self.client.execute(operation: "DeleteMembers", path: "/detector/{DetectorId}/member/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the publishing definition with the specified destinationId.
    public func deletePublishingDestination(_ input: DeletePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePublishingDestinationResponse {
        return try await self.client.execute(operation: "DeletePublishingDestination", path: "/detector/{DetectorId}/publishingDestination/{DestinationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func deleteThreatIntelSet(_ input: DeleteThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteThreatIntelSetResponse {
        return try await self.client.execute(operation: "DeleteThreatIntelSet", path: "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the account selected as the delegated administrator for GuardDuty.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/detector/{DetectorId}/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the publishing destination specified by the provided destinationId.
    public func describePublishingDestination(_ input: DescribePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublishingDestinationResponse {
        return try await self.client.execute(operation: "DescribePublishingDestination", path: "/detector/{DetectorId}/publishingDestination/{DestinationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables an Amazon Web Services account within the Organization as the GuardDuty delegated administrator.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/admin/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the current GuardDuty member account from its administrator account.
    public func disassociateFromAdministratorAccount(_ input: DisassociateFromAdministratorAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFromAdministratorAccountResponse {
        return try await self.client.execute(operation: "DisassociateFromAdministratorAccount", path: "/detector/{DetectorId}/administrator/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the current GuardDuty member account from its administrator account.
    @available(*, deprecated, message: "This operation is deprecated, use DisassociateFromAdministratorAccount instead")
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFromMasterAccountResponse {
        return try await self.client.execute(operation: "DisassociateFromMasterAccount", path: "/detector/{DetectorId}/master/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.
    public func disassociateMembers(_ input: DisassociateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateMembersResponse {
        return try await self.client.execute(operation: "DisassociateMembers", path: "/detector/{DetectorId}/member/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables an Amazon Web Services account within the organization as the GuardDuty delegated administrator.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/admin/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account.
    public func getAdministratorAccount(_ input: GetAdministratorAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAdministratorAccountResponse {
        return try await self.client.execute(operation: "GetAdministratorAccount", path: "/detector/{DetectorId}/administrator", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an Amazon GuardDuty detector specified by the detectorId.
    public func getDetector(_ input: GetDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDetectorResponse {
        return try await self.client.execute(operation: "GetDetector", path: "/detector/{DetectorId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details of the filter specified by the filter name.
    public func getFilter(_ input: GetFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFilterResponse {
        return try await self.client.execute(operation: "GetFilter", path: "/detector/{DetectorId}/filter/{FilterName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes Amazon GuardDuty findings specified by finding IDs.
    public func getFindings(_ input: GetFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsResponse {
        return try await self.client.execute(operation: "GetFindings", path: "/detector/{DetectorId}/findings/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty findings statistics for the specified detector ID.
    public func getFindingsStatistics(_ input: GetFindingsStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsStatisticsResponse {
        return try await self.client.execute(operation: "GetFindingsStatistics", path: "/detector/{DetectorId}/findings/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the IPSet specified by the ipSetId.
    public func getIPSet(_ input: GetIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIPSetResponse {
        return try await self.client.execute(operation: "GetIPSet", path: "/detector/{DetectorId}/ipset/{IpSetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInvitationsCountResponse {
        return try await self.client.execute(operation: "GetInvitationsCount", path: "/invitation/count", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account.
    @available(*, deprecated, message: "This operation is deprecated, use GetAdministratorAccount instead")
    public func getMasterAccount(_ input: GetMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMasterAccountResponse {
        return try await self.client.execute(operation: "GetMasterAccount", path: "/detector/{DetectorId}/master", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes which data sources are enabled for the member account's detector.
    public func getMemberDetectors(_ input: GetMemberDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMemberDetectorsResponse {
        return try await self.client.execute(operation: "GetMemberDetectors", path: "/detector/{DetectorId}/member/detector/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by the account IDs.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMembersResponse {
        return try await self.client.execute(operation: "GetMembers", path: "/detector/{DetectorId}/member/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides the number of days left for each data source used in the free trial period.
    public func getRemainingFreeTrialDays(_ input: GetRemainingFreeTrialDaysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRemainingFreeTrialDaysResponse {
        return try await self.client.execute(operation: "GetRemainingFreeTrialDays", path: "/detector/{DetectorId}/freeTrial/daysRemaining", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
    public func getThreatIntelSet(_ input: GetThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetThreatIntelSetResponse {
        return try await self.client.execute(operation: "GetThreatIntelSet", path: "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources, the cost returned will include only the usage so far under 30 days. This may differ from the cost metrics in the console, which project usage over 30 days to provide a monthly cost estimate. For more information, see Understanding How Usage Costs are Calculated.
    public func getUsageStatistics(_ input: GetUsageStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUsageStatisticsResponse {
        return try await self.client.execute(operation: "GetUsageStatistics", path: "/detector/{DetectorId}/usage/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Invites other Amazon Web Services accounts (created as members of the current Amazon Web Services account by CreateMembers) to enable GuardDuty, and allow the current Amazon Web Services account to view and manage these accounts' findings on their behalf as the GuardDuty administrator account.
    public func inviteMembers(_ input: InviteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InviteMembersResponse {
        return try await self.client.execute(operation: "InviteMembers", path: "/detector/{DetectorId}/member/invite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectors(_ input: ListDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDetectorsResponse {
        return try await self.client.execute(operation: "ListDetectors", path: "/detector", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of the current filters.
    public func listFilters(_ input: ListFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFiltersResponse {
        return try await self.client.execute(operation: "ListFilters", path: "/detector/{DetectorId}/filter", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingsResponse {
        return try await self.client.execute(operation: "ListFindings", path: "/detector/{DetectorId}/findings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated administrator account.
    public func listIPSets(_ input: ListIPSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIPSetsResponse {
        return try await self.client.execute(operation: "ListIPSets", path: "/detector/{DetectorId}/ipset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all GuardDuty membership invitations that were sent to the current Amazon Web Services account.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvitationsResponse {
        return try await self.client.execute(operation: "ListInvitations", path: "/invitation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details about all member accounts for the current GuardDuty administrator account.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/detector/{DetectorId}/member", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the accounts configured as GuardDuty delegated administrators.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationAdminAccountsResponse {
        return try await self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of publishing destinations associated with the specified detectorId.
    public func listPublishingDestinations(_ input: ListPublishingDestinationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPublishingDestinationsResponse {
        return try await self.client.execute(operation: "ListPublishingDestinations", path: "/detector/{DetectorId}/publishingDestination", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the administrator account are returned.
    public func listThreatIntelSets(_ input: ListThreatIntelSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListThreatIntelSetsResponse {
        return try await self.client.execute(operation: "ListThreatIntelSets", path: "/detector/{DetectorId}/threatintelset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.
    public func startMonitoringMembers(_ input: StartMonitoringMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMonitoringMembersResponse {
        return try await self.client.execute(operation: "StartMonitoringMembers", path: "/detector/{DetectorId}/member/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops GuardDuty monitoring for the specified member accounts. Use the StartMonitoringMembers operation to restart monitoring for those accounts.
    public func stopMonitoringMembers(_ input: StopMonitoringMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMonitoringMembersResponse {
        return try await self.client.execute(operation: "StopMonitoringMembers", path: "/detector/{DetectorId}/member/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unarchives GuardDuty findings specified by the findingIds.
    public func unarchiveFindings(_ input: UnarchiveFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnarchiveFindingsResponse {
        return try await self.client.execute(operation: "UnarchiveFindings", path: "/detector/{DetectorId}/findings/unarchive", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Amazon GuardDuty detector specified by the detectorId.
    public func updateDetector(_ input: UpdateDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDetectorResponse {
        return try await self.client.execute(operation: "UpdateDetector", path: "/detector/{DetectorId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the filter specified by the filter name.
    public func updateFilter(_ input: UpdateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFilterResponse {
        return try await self.client.execute(operation: "UpdateFilter", path: "/detector/{DetectorId}/filter/{FilterName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Marks the specified GuardDuty findings as useful or not useful.
    public func updateFindingsFeedback(_ input: UpdateFindingsFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFindingsFeedbackResponse {
        return try await self.client.execute(operation: "UpdateFindingsFeedback", path: "/detector/{DetectorId}/findings/feedback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the IPSet specified by the IPSet ID.
    public func updateIPSet(_ input: UpdateIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIPSetResponse {
        return try await self.client.execute(operation: "UpdateIPSet", path: "/detector/{DetectorId}/ipset/{IpSetId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Contains information on member accounts to be updated.
    public func updateMemberDetectors(_ input: UpdateMemberDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMemberDetectorsResponse {
        return try await self.client.execute(operation: "UpdateMemberDetectors", path: "/detector/{DetectorId}/member/detector/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the delegated administrator account with the values provided.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/detector/{DetectorId}/admin", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about the publishing destination specified by the destinationId.
    public func updatePublishingDestination(_ input: UpdatePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePublishingDestinationResponse {
        return try await self.client.execute(operation: "UpdatePublishingDestination", path: "/detector/{DetectorId}/publishingDestination/{DestinationId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func updateThreatIntelSet(_ input: UpdateThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateThreatIntelSetResponse {
        return try await self.client.execute(operation: "UpdateThreatIntelSet", path: "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
