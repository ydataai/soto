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
extension AuditManager {
    // MARK: Async API Calls

    ///  Associates an evidence folder to an assessment report in a Audit Manager assessment.
    public func associateAssessmentReportEvidenceFolder(_ input: AssociateAssessmentReportEvidenceFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateAssessmentReportEvidenceFolderResponse {
        return try await self.client.execute(operation: "AssociateAssessmentReportEvidenceFolder", path: "/assessments/{assessmentId}/associateToAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associates a list of evidence to an assessment report in an Audit Manager assessment.
    public func batchAssociateAssessmentReportEvidence(_ input: BatchAssociateAssessmentReportEvidenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateAssessmentReportEvidenceResponse {
        return try await self.client.execute(operation: "BatchAssociateAssessmentReportEvidence", path: "/assessments/{assessmentId}/batchAssociateToAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a batch of delegations for an assessment in Audit Manager.
    public func batchCreateDelegationByAssessment(_ input: BatchCreateDelegationByAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchCreateDelegationByAssessmentResponse {
        return try await self.client.execute(operation: "BatchCreateDelegationByAssessment", path: "/assessments/{assessmentId}/delegations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a batch of delegations for an assessment in Audit Manager.
    public func batchDeleteDelegationByAssessment(_ input: BatchDeleteDelegationByAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteDelegationByAssessmentResponse {
        return try await self.client.execute(operation: "BatchDeleteDelegationByAssessment", path: "/assessments/{assessmentId}/delegations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Disassociates a list of evidence from an assessment report in Audit Manager.
    public func batchDisassociateAssessmentReportEvidence(_ input: BatchDisassociateAssessmentReportEvidenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateAssessmentReportEvidenceResponse {
        return try await self.client.execute(operation: "BatchDisassociateAssessmentReportEvidence", path: "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Uploads one or more pieces of evidence to a control in an Audit Manager assessment.
    public func batchImportEvidenceToAssessmentControl(_ input: BatchImportEvidenceToAssessmentControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchImportEvidenceToAssessmentControlResponse {
        return try await self.client.execute(operation: "BatchImportEvidenceToAssessmentControl", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an assessment in Audit Manager.
    public func createAssessment(_ input: CreateAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssessmentResponse {
        return try await self.client.execute(operation: "CreateAssessment", path: "/assessments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a custom framework in Audit Manager.
    public func createAssessmentFramework(_ input: CreateAssessmentFrameworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssessmentFrameworkResponse {
        return try await self.client.execute(operation: "CreateAssessmentFramework", path: "/assessmentFrameworks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an assessment report for the specified assessment.
    public func createAssessmentReport(_ input: CreateAssessmentReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssessmentReportResponse {
        return try await self.client.execute(operation: "CreateAssessmentReport", path: "/assessments/{assessmentId}/reports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new custom control in Audit Manager.
    public func createControl(_ input: CreateControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateControlResponse {
        return try await self.client.execute(operation: "CreateControl", path: "/controls", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an assessment in Audit Manager.
    public func deleteAssessment(_ input: DeleteAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssessmentResponse {
        return try await self.client.execute(operation: "DeleteAssessment", path: "/assessments/{assessmentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a custom framework in Audit Manager.
    public func deleteAssessmentFramework(_ input: DeleteAssessmentFrameworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssessmentFrameworkResponse {
        return try await self.client.execute(operation: "DeleteAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a share request for a custom framework in Audit Manager.
    public func deleteAssessmentFrameworkShare(_ input: DeleteAssessmentFrameworkShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssessmentFrameworkShareResponse {
        return try await self.client.execute(operation: "DeleteAssessmentFrameworkShare", path: "/assessmentFrameworkShareRequests/{requestId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an assessment report in Audit Manager.  When you run the DeleteAssessmentReport operation, Audit Manager attempts to delete the following data:   The specified assessment report that’s stored in your S3 bucket   The associated metadata that’s stored in Audit Manager   If Audit Manager can’t access the assessment report in your S3 bucket, the report isn’t deleted. In this event, the DeleteAssessmentReport operation doesn’t fail. Instead, it proceeds to delete the associated metadata only. You must then delete the assessment report from the S3 bucket yourself.  This scenario happens when Audit Manager receives a 403 (Forbidden) or 404 (Not Found) error from Amazon S3. To avoid this, make sure that your S3 bucket is available, and that you configured the correct permissions for Audit Manager to delete resources in your S3 bucket. For an example permissions policy that you can use, see Assessment report destination permissions in the Audit Manager User Guide. For information about the issues that could cause a 403 (Forbidden) or 404 (Not Found) error from Amazon S3, see List of Error Codes in the Amazon Simple Storage Service API Reference.
    public func deleteAssessmentReport(_ input: DeleteAssessmentReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssessmentReportResponse {
        return try await self.client.execute(operation: "DeleteAssessmentReport", path: "/assessments/{assessmentId}/reports/{assessmentReportId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a custom control in Audit Manager.
    public func deleteControl(_ input: DeleteControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteControlResponse {
        return try await self.client.execute(operation: "DeleteControl", path: "/controls/{controlId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deregisters an account in Audit Manager.   When you deregister your account from Audit Manager, your data isn’t deleted. If you want to delete your resource data, you must perform that task separately before you deregister your account. Either, you can do this in the Audit Manager console. Or, you can use one of the delete API operations that are provided by Audit Manager.  To delete your Audit Manager resource data, see the following instructions:     DeleteAssessment (see also: Deleting an assessment in the Audit Manager User Guide)    DeleteAssessmentFramework (see also: Deleting a custom framework in the Audit Manager User Guide)    DeleteAssessmentFrameworkShare (see also: Deleting a share request in the Audit Manager User Guide)    DeleteAssessmentReport (see also: Deleting an assessment report in the Audit Manager User Guide)    DeleteControl (see also: Deleting a custom control in the Audit Manager User Guide)   At this time, Audit Manager doesn't provide an option to delete evidence. All available delete operations are listed above.
    public func deregisterAccount(_ input: DeregisterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterAccountResponse {
        return try await self.client.execute(operation: "DeregisterAccount", path: "/account/deregisterAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified Amazon Web Services account as a delegated administrator for Audit Manager.   When you remove a delegated administrator from your Audit Manager settings, you continue to have access to the evidence that you previously collected under that account. This is also the case when you deregister a delegated administrator from Organizations. However, Audit Manager will stop collecting and attaching evidence to that delegated administrator account moving forward.   When you deregister a delegated administrator account for Audit Manager, the data for that account isn’t deleted. If you want to delete resource data for a delegated administrator account, you must perform that task separately before you deregister the account. Either, you can do this in the Audit Manager console. Or, you can use one of the delete API operations that are provided by Audit Manager.  To delete your Audit Manager resource data, see the following instructions:     DeleteAssessment (see also: Deleting an assessment in the Audit Manager User Guide)    DeleteAssessmentFramework (see also: Deleting a custom framework in the Audit Manager User Guide)    DeleteAssessmentFrameworkShare (see also: Deleting a share request in the Audit Manager User Guide)    DeleteAssessmentReport (see also: Deleting an assessment report in the Audit Manager User Guide)    DeleteControl (see also: Deleting a custom control in the Audit Manager User Guide)   At this time, Audit Manager doesn't provide an option to delete evidence. All available delete operations are listed above.
    public func deregisterOrganizationAdminAccount(_ input: DeregisterOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "DeregisterOrganizationAdminAccount", path: "/account/deregisterOrganizationAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Disassociates an evidence folder from the specified assessment report in Audit Manager.
    public func disassociateAssessmentReportEvidenceFolder(_ input: DisassociateAssessmentReportEvidenceFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateAssessmentReportEvidenceFolderResponse {
        return try await self.client.execute(operation: "DisassociateAssessmentReportEvidenceFolder", path: "/assessments/{assessmentId}/disassociateFromAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the registration status of an account in Audit Manager.
    public func getAccountStatus(_ input: GetAccountStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccountStatusResponse {
        return try await self.client.execute(operation: "GetAccountStatus", path: "/account/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an assessment from Audit Manager.
    public func getAssessment(_ input: GetAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssessmentResponse {
        return try await self.client.execute(operation: "GetAssessment", path: "/assessments/{assessmentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a framework from Audit Manager.
    public func getAssessmentFramework(_ input: GetAssessmentFrameworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssessmentFrameworkResponse {
        return try await self.client.execute(operation: "GetAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the URL of an assessment report in Audit Manager.
    public func getAssessmentReportUrl(_ input: GetAssessmentReportUrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssessmentReportUrlResponse {
        return try await self.client.execute(operation: "GetAssessmentReportUrl", path: "/assessments/{assessmentId}/reports/{assessmentReportId}/url", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of changelogs from Audit Manager.
    public func getChangeLogs(_ input: GetChangeLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChangeLogsResponse {
        return try await self.client.execute(operation: "GetChangeLogs", path: "/assessments/{assessmentId}/changelogs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a control from Audit Manager.
    public func getControl(_ input: GetControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetControlResponse {
        return try await self.client.execute(operation: "GetControl", path: "/controls/{controlId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of delegations from an audit owner to a delegate.
    public func getDelegations(_ input: GetDelegationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDelegationsResponse {
        return try await self.client.execute(operation: "GetDelegations", path: "/delegations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns evidence from Audit Manager.
    public func getEvidence(_ input: GetEvidenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEvidenceResponse {
        return try await self.client.execute(operation: "GetEvidence", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns all evidence from a specified evidence folder in Audit Manager.
    public func getEvidenceByEvidenceFolder(_ input: GetEvidenceByEvidenceFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEvidenceByEvidenceFolderResponse {
        return try await self.client.execute(operation: "GetEvidenceByEvidenceFolder", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an evidence folder from the specified assessment in Audit Manager.
    public func getEvidenceFolder(_ input: GetEvidenceFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEvidenceFolderResponse {
        return try await self.client.execute(operation: "GetEvidenceFolder", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the evidence folders from a specified assessment in Audit Manager.
    public func getEvidenceFoldersByAssessment(_ input: GetEvidenceFoldersByAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEvidenceFoldersByAssessmentResponse {
        return try await self.client.execute(operation: "GetEvidenceFoldersByAssessment", path: "/assessments/{assessmentId}/evidenceFolders", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of evidence folders that are associated with a specified control of an assessment in Audit Manager.
    public func getEvidenceFoldersByAssessmentControl(_ input: GetEvidenceFoldersByAssessmentControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEvidenceFoldersByAssessmentControlResponse {
        return try await self.client.execute(operation: "GetEvidenceFoldersByAssessmentControl", path: "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the latest analytics data for all your current active assessments.
    public func getInsights(_ input: GetInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightsResponse {
        return try await self.client.execute(operation: "GetInsights", path: "/insights", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the latest analytics data for a specific active assessment.
    public func getInsightsByAssessment(_ input: GetInsightsByAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightsByAssessmentResponse {
        return try await self.client.execute(operation: "GetInsightsByAssessment", path: "/insights/assessments/{assessmentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the name of the delegated Amazon Web Services administrator account for the organization.
    public func getOrganizationAdminAccount(_ input: GetOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "GetOrganizationAdminAccount", path: "/account/organizationAdminAccount", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the in-scope Amazon Web Services for the specified assessment.
    public func getServicesInScope(_ input: GetServicesInScopeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServicesInScopeResponse {
        return try await self.client.execute(operation: "GetServicesInScope", path: "/services", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the settings for the specified Amazon Web Services account.
    public func getSettings(_ input: GetSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSettingsResponse {
        return try await self.client.execute(operation: "GetSettings", path: "/settings/{attribute}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the latest analytics data for controls within a specific control domain and a specific active assessment.  Control insights are listed only if the control belongs to the control domain and assessment that was specified. Moreover, the control must have collected evidence on the lastUpdated date of controlInsightsByAssessment. If neither of these conditions are met, no data is listed for that control.
    public func listAssessmentControlInsightsByControlDomain(_ input: ListAssessmentControlInsightsByControlDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentControlInsightsByControlDomainResponse {
        return try await self.client.execute(operation: "ListAssessmentControlInsightsByControlDomain", path: "/insights/controls-by-assessment", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of sent or received share requests for custom frameworks in Audit Manager.
    public func listAssessmentFrameworkShareRequests(_ input: ListAssessmentFrameworkShareRequestsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentFrameworkShareRequestsResponse {
        return try await self.client.execute(operation: "ListAssessmentFrameworkShareRequests", path: "/assessmentFrameworkShareRequests", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the frameworks that are available in the Audit Manager framework library.
    public func listAssessmentFrameworks(_ input: ListAssessmentFrameworksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentFrameworksResponse {
        return try await self.client.execute(operation: "ListAssessmentFrameworks", path: "/assessmentFrameworks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of assessment reports created in Audit Manager.
    public func listAssessmentReports(_ input: ListAssessmentReportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentReportsResponse {
        return try await self.client.execute(operation: "ListAssessmentReports", path: "/assessmentReports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of current and past assessments from Audit Manager.
    public func listAssessments(_ input: ListAssessmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentsResponse {
        return try await self.client.execute(operation: "ListAssessments", path: "/assessments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the latest analytics data for control domains across all of your active assessments.   A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that control domain.
    public func listControlDomainInsights(_ input: ListControlDomainInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListControlDomainInsightsResponse {
        return try await self.client.execute(operation: "ListControlDomainInsights", path: "/insights/control-domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists analytics data for control domains within a specified active assessment.  A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that domain.
    public func listControlDomainInsightsByAssessment(_ input: ListControlDomainInsightsByAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListControlDomainInsightsByAssessmentResponse {
        return try await self.client.execute(operation: "ListControlDomainInsightsByAssessment", path: "/insights/control-domains-by-assessment", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the latest analytics data for controls within a specific control domain across all active assessments.   Control insights are listed only if the control belongs to the control domain that was specified and the control collected evidence on the lastUpdated date of controlInsightsMetadata. If neither of these conditions are met, no data is listed for that control.
    public func listControlInsightsByControlDomain(_ input: ListControlInsightsByControlDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListControlInsightsByControlDomainResponse {
        return try await self.client.execute(operation: "ListControlInsightsByControlDomain", path: "/insights/controls", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of controls from Audit Manager.
    public func listControls(_ input: ListControlsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListControlsResponse {
        return try await self.client.execute(operation: "ListControls", path: "/controls", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of keywords that are pre-mapped to the specified control data source.
    public func listKeywordsForDataSource(_ input: ListKeywordsForDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKeywordsForDataSourceResponse {
        return try await self.client.execute(operation: "ListKeywordsForDataSource", path: "/dataSourceKeywords", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of all Audit Manager notifications.
    public func listNotifications(_ input: ListNotificationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNotificationsResponse {
        return try await self.client.execute(operation: "ListNotifications", path: "/notifications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of tags for the specified resource in Audit Manager.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables Audit Manager for the specified Amazon Web Services account.
    public func registerAccount(_ input: RegisterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterAccountResponse {
        return try await self.client.execute(operation: "RegisterAccount", path: "/account/registerAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables an Amazon Web Services account within the organization as the delegated administrator for Audit Manager.
    public func registerOrganizationAdminAccount(_ input: RegisterOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "RegisterOrganizationAdminAccount", path: "/account/registerOrganizationAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a share request for a custom framework in Audit Manager.  The share request specifies a recipient and notifies them that a custom framework is available. Recipients have 120 days to accept or decline the request. If no action is taken, the share request expires. When you create a share request, Audit Manager stores a snapshot of your custom framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager also stores a backup of the same snapshot in the US West (Oregon) Amazon Web Services Region. Audit Manager deletes the snapshot and the backup snapshot when one of the following events occurs:   The sender revokes the share request.   The recipient declines the share request.   The recipient encounters an error and doesn't successfully accept the share request.   The share request expires before the recipient responds to the request.   When a sender resends a share request, the snapshot is replaced with an updated version that corresponds with the latest version of the custom framework.  When a recipient accepts a share request, the snapshot is replicated into their Amazon Web Services account under the Amazon Web Services Region that was specified in the share request.   When you invoke the StartAssessmentFrameworkShare API, you are about to share a custom framework with another Amazon Web Services account. You may not share a custom framework that is derived from a standard framework if the standard framework is designated as not eligible for sharing by Amazon Web Services, unless you have obtained permission to do so from the owner of the standard framework. To learn more about which standard frameworks are eligible for sharing, see Framework sharing eligibility in the Audit Manager User Guide.
    public func startAssessmentFrameworkShare(_ input: StartAssessmentFrameworkShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAssessmentFrameworkShareResponse {
        return try await self.client.execute(operation: "StartAssessmentFrameworkShare", path: "/assessmentFrameworks/{frameworkId}/shareRequests", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Tags the specified resource in Audit Manager.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a tag from a resource in Audit Manager.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Edits an Audit Manager assessment.
    public func updateAssessment(_ input: UpdateAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentResponse {
        return try await self.client.execute(operation: "UpdateAssessment", path: "/assessments/{assessmentId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a control within an assessment in Audit Manager.
    public func updateAssessmentControl(_ input: UpdateAssessmentControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentControlResponse {
        return try await self.client.execute(operation: "UpdateAssessmentControl", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the status of a control set in an Audit Manager assessment.
    public func updateAssessmentControlSetStatus(_ input: UpdateAssessmentControlSetStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentControlSetStatusResponse {
        return try await self.client.execute(operation: "UpdateAssessmentControlSetStatus", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/status", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a custom framework in Audit Manager.
    public func updateAssessmentFramework(_ input: UpdateAssessmentFrameworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentFrameworkResponse {
        return try await self.client.execute(operation: "UpdateAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a share request for a custom framework in Audit Manager.
    public func updateAssessmentFrameworkShare(_ input: UpdateAssessmentFrameworkShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentFrameworkShareResponse {
        return try await self.client.execute(operation: "UpdateAssessmentFrameworkShare", path: "/assessmentFrameworkShareRequests/{requestId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the status of an assessment in Audit Manager.
    public func updateAssessmentStatus(_ input: UpdateAssessmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssessmentStatusResponse {
        return try await self.client.execute(operation: "UpdateAssessmentStatus", path: "/assessments/{assessmentId}/status", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a custom control in Audit Manager.
    public func updateControl(_ input: UpdateControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateControlResponse {
        return try await self.client.execute(operation: "UpdateControl", path: "/controls/{controlId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates Audit Manager settings for the current user account.
    public func updateSettings(_ input: UpdateSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSettingsResponse {
        return try await self.client.execute(operation: "UpdateSettings", path: "/settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Validates the integrity of an assessment report in Audit Manager.
    public func validateAssessmentReportIntegrity(_ input: ValidateAssessmentReportIntegrityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateAssessmentReportIntegrityResponse {
        return try await self.client.execute(operation: "ValidateAssessmentReportIntegrity", path: "/assessmentReports/integrity", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
