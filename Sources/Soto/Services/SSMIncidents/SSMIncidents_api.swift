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

/// Service object for interacting with AWS SSMIncidents service.
///
/// Systems Manager Incident Manager is an incident management console designed to help users mitigate and recover from incidents affecting their Amazon Web Services-hosted applications. An incident is any unplanned interruption or reduction in quality of services.  Incident Manager increases incident resolution by notifying responders of impact, highlighting relevant troubleshooting data, and providing collaboration tools to get services back up and running. To achieve the primary goal of reducing the time-to-resolution of critical incidents, Incident Manager automates response plans and enables responder team escalation.
public struct SSMIncidents: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SSMIncidents client
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
            serviceName: "SSMIncidents",
            serviceIdentifier: "ssm-incidents",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SSMIncidentsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "ssm-incidents-fips.ca-central-1.amazonaws.com",
            "us-east-1": "ssm-incidents-fips.us-east-1.amazonaws.com",
            "us-east-2": "ssm-incidents-fips.us-east-2.amazonaws.com",
            "us-west-1": "ssm-incidents-fips.us-west-1.amazonaws.com",
            "us-west-2": "ssm-incidents-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Retrieves details about all specified findings for an incident, including descriptive details about each finding. A finding represents a recent application environment change made by an CodeDeploy deployment or an CloudFormation stack creation or update that can be investigated as a potential cause of the incident.
    @Sendable
    public func batchGetIncidentFindings(_ input: BatchGetIncidentFindingsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchGetIncidentFindingsOutput {
        return try await self.client.execute(
            operation: "BatchGetIncidentFindings", 
            path: "/batchGetIncidentFindings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A replication set replicates and encrypts your data to the provided Regions with the provided KMS key.
    @Sendable
    public func createReplicationSet(_ input: CreateReplicationSetInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateReplicationSetOutput {
        return try await self.client.execute(
            operation: "CreateReplicationSet", 
            path: "/createReplicationSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a response plan that automates the initial response to incidents. A response plan engages contacts, starts chat channel collaboration, and initiates runbooks at the beginning of an incident.
    @Sendable
    public func createResponsePlan(_ input: CreateResponsePlanInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateResponsePlanOutput {
        return try await self.client.execute(
            operation: "CreateResponsePlan", 
            path: "/createResponsePlan", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a custom timeline event on the incident details page of an incident record. Incident Manager automatically creates timeline events that mark key moments during an incident. You can create custom timeline events to mark important events that Incident Manager can detect automatically.
    @Sendable
    public func createTimelineEvent(_ input: CreateTimelineEventInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTimelineEventOutput {
        return try await self.client.execute(
            operation: "CreateTimelineEvent", 
            path: "/createTimelineEvent", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete an incident record from Incident Manager.
    @Sendable
    public func deleteIncidentRecord(_ input: DeleteIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteIncidentRecordOutput {
        return try await self.client.execute(
            operation: "DeleteIncidentRecord", 
            path: "/deleteIncidentRecord", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes all Regions in your replication set. Deleting the replication set deletes all Incident Manager data.
    @Sendable
    public func deleteReplicationSet(_ input: DeleteReplicationSetInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteReplicationSetOutput {
        return try await self.client.execute(
            operation: "DeleteReplicationSet", 
            path: "/deleteReplicationSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the resource policy that Resource Access Manager uses to share your Incident Manager resource.
    @Sendable
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteResourcePolicyOutput {
        return try await self.client.execute(
            operation: "DeleteResourcePolicy", 
            path: "/deleteResourcePolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch alarms and EventBridge events from creating an incident with this response plan.
    @Sendable
    public func deleteResponsePlan(_ input: DeleteResponsePlanInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteResponsePlanOutput {
        return try await self.client.execute(
            operation: "DeleteResponsePlan", 
            path: "/deleteResponsePlan", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a timeline event from an incident.
    @Sendable
    public func deleteTimelineEvent(_ input: DeleteTimelineEventInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTimelineEventOutput {
        return try await self.client.execute(
            operation: "DeleteTimelineEvent", 
            path: "/deleteTimelineEvent", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details for the specified incident record.
    @Sendable
    public func getIncidentRecord(_ input: GetIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetIncidentRecordOutput {
        return try await self.client.execute(
            operation: "GetIncidentRecord", 
            path: "/getIncidentRecord", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve your Incident Manager replication set.
    @Sendable
    public func getReplicationSet(_ input: GetReplicationSetInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetReplicationSetOutput {
        return try await self.client.execute(
            operation: "GetReplicationSet", 
            path: "/getReplicationSet", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the resource policies attached to the specified response plan.
    @Sendable
    public func getResourcePolicies(_ input: GetResourcePoliciesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResourcePoliciesOutput {
        return try await self.client.execute(
            operation: "GetResourcePolicies", 
            path: "/getResourcePolicies", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the details of the specified response plan.
    @Sendable
    public func getResponsePlan(_ input: GetResponsePlanInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResponsePlanOutput {
        return try await self.client.execute(
            operation: "GetResponsePlan", 
            path: "/getResponsePlan", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a timeline event based on its ID and incident record.
    @Sendable
    public func getTimelineEvent(_ input: GetTimelineEventInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTimelineEventOutput {
        return try await self.client.execute(
            operation: "GetTimelineEvent", 
            path: "/getTimelineEvent", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of the IDs of findings, plus their last modified times, that have been identified for a specified incident. A finding represents a recent application environment change made by an CloudFormation stack creation or update or an CodeDeploy deployment that can be investigated as a potential cause of the incident.
    @Sendable
    public func listIncidentFindings(_ input: ListIncidentFindingsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListIncidentFindingsOutput {
        return try await self.client.execute(
            operation: "ListIncidentFindings", 
            path: "/listIncidentFindings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.
    @Sendable
    public func listIncidentRecords(_ input: ListIncidentRecordsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListIncidentRecordsOutput {
        return try await self.client.execute(
            operation: "ListIncidentRecords", 
            path: "/listIncidentRecords", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List all related items for an incident record.
    @Sendable
    public func listRelatedItems(_ input: ListRelatedItemsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRelatedItemsOutput {
        return try await self.client.execute(
            operation: "ListRelatedItems", 
            path: "/listRelatedItems", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists details about the replication set configured in your account.
    @Sendable
    public func listReplicationSets(_ input: ListReplicationSetsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReplicationSetsOutput {
        return try await self.client.execute(
            operation: "ListReplicationSets", 
            path: "/listReplicationSets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all response plans in your account.
    @Sendable
    public func listResponsePlans(_ input: ListResponsePlansInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResponsePlansOutput {
        return try await self.client.execute(
            operation: "ListResponsePlans", 
            path: "/listResponsePlans", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags that are attached to the specified response plan or incident.
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

    /// Lists timeline events for the specified incident record.
    @Sendable
    public func listTimelineEvents(_ input: ListTimelineEventsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTimelineEventsOutput {
        return try await self.client.execute(
            operation: "ListTimelineEvents", 
            path: "/listTimelineEvents", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a resource policy to the specified response plan. The resource policy is used to share the response plan using Resource Access Manager (RAM). For more information about cross-account sharing, see Cross-Region and cross-account incident management.
    @Sendable
    public func putResourcePolicy(_ input: PutResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutResourcePolicyOutput {
        return try await self.client.execute(
            operation: "PutResourcePolicy", 
            path: "/putResourcePolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Used to start an incident from CloudWatch alarms, EventBridge events, or manually.
    @Sendable
    public func startIncident(_ input: StartIncidentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StartIncidentOutput {
        return try await self.client.execute(
            operation: "StartIncident", 
            path: "/startIncident", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a tag to a response plan.
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

    /// Removes a tag from a resource.
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

    /// Update deletion protection to either allow or deny deletion of the final Region in a replication set.
    @Sendable
    public func updateDeletionProtection(_ input: UpdateDeletionProtectionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDeletionProtectionOutput {
        return try await self.client.execute(
            operation: "UpdateDeletionProtection", 
            path: "/updateDeletionProtection", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update the details of an incident record. You can use this operation to update an incident record from the defined chat channel. For more information about using actions in chat channels, see Interacting through chat.
    @Sendable
    public func updateIncidentRecord(_ input: UpdateIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateIncidentRecordOutput {
        return try await self.client.execute(
            operation: "UpdateIncidentRecord", 
            path: "/updateIncidentRecord", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Add or remove related items from the related items tab of an incident record.
    @Sendable
    public func updateRelatedItems(_ input: UpdateRelatedItemsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRelatedItemsOutput {
        return try await self.client.execute(
            operation: "UpdateRelatedItems", 
            path: "/updateRelatedItems", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Add or delete Regions from your replication set.
    @Sendable
    public func updateReplicationSet(_ input: UpdateReplicationSetInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateReplicationSetOutput {
        return try await self.client.execute(
            operation: "UpdateReplicationSet", 
            path: "/updateReplicationSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified response plan.
    @Sendable
    public func updateResponsePlan(_ input: UpdateResponsePlanInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateResponsePlanOutput {
        return try await self.client.execute(
            operation: "UpdateResponsePlan", 
            path: "/updateResponsePlan", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a timeline event. You can update events of type Custom Event.
    @Sendable
    public func updateTimelineEvent(_ input: UpdateTimelineEventInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateTimelineEventOutput {
        return try await self.client.execute(
            operation: "UpdateTimelineEvent", 
            path: "/updateTimelineEvent", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SSMIncidents {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SSMIncidents, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSMIncidents {
    /// Retrieves the resource policies attached to the specified response plan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput> {
        return .init(
            input: input,
            command: self.getResourcePolicies,
            inputKey: \GetResourcePoliciesInput.nextToken,
            outputKey: \GetResourcePoliciesOutput.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of the IDs of findings, plus their last modified times, that have been identified for a specified incident. A finding represents a recent application environment change made by an CloudFormation stack creation or update or an CodeDeploy deployment that can be investigated as a potential cause of the incident.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listIncidentFindingsPaginator(
        _ input: ListIncidentFindingsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListIncidentFindingsInput, ListIncidentFindingsOutput> {
        return .init(
            input: input,
            command: self.listIncidentFindings,
            inputKey: \ListIncidentFindingsInput.nextToken,
            outputKey: \ListIncidentFindingsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listIncidentRecordsPaginator(
        _ input: ListIncidentRecordsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListIncidentRecordsInput, ListIncidentRecordsOutput> {
        return .init(
            input: input,
            command: self.listIncidentRecords,
            inputKey: \ListIncidentRecordsInput.nextToken,
            outputKey: \ListIncidentRecordsOutput.nextToken,
            logger: logger
        )
    }

    /// List all related items for an incident record.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRelatedItemsPaginator(
        _ input: ListRelatedItemsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRelatedItemsInput, ListRelatedItemsOutput> {
        return .init(
            input: input,
            command: self.listRelatedItems,
            inputKey: \ListRelatedItemsInput.nextToken,
            outputKey: \ListRelatedItemsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists details about the replication set configured in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listReplicationSetsPaginator(
        _ input: ListReplicationSetsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListReplicationSetsInput, ListReplicationSetsOutput> {
        return .init(
            input: input,
            command: self.listReplicationSets,
            inputKey: \ListReplicationSetsInput.nextToken,
            outputKey: \ListReplicationSetsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all response plans in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listResponsePlansPaginator(
        _ input: ListResponsePlansInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListResponsePlansInput, ListResponsePlansOutput> {
        return .init(
            input: input,
            command: self.listResponsePlans,
            inputKey: \ListResponsePlansInput.nextToken,
            outputKey: \ListResponsePlansOutput.nextToken,
            logger: logger
        )
    }

    /// Lists timeline events for the specified incident record.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTimelineEventsPaginator(
        _ input: ListTimelineEventsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTimelineEventsInput, ListTimelineEventsOutput> {
        return .init(
            input: input,
            command: self.listTimelineEvents,
            inputKey: \ListTimelineEventsInput.nextToken,
            outputKey: \ListTimelineEventsOutput.nextToken,
            logger: logger
        )
    }
}

extension SSMIncidents.GetResourcePoliciesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.GetResourcePoliciesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension SSMIncidents.ListIncidentFindingsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListIncidentFindingsInput {
        return .init(
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListIncidentRecordsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListIncidentRecordsInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListRelatedItemsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListRelatedItemsInput {
        return .init(
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListReplicationSetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListReplicationSetsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListResponsePlansInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListResponsePlansInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListTimelineEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListTimelineEventsInput {
        return .init(
            filters: self.filters,
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSMIncidents {
    public func waitUntilWaitForReplicationSetActive(
        _ input: GetReplicationSetInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("replicationSet.status", expected: "ACTIVE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "CREATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "UPDATING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("replicationSet.status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            maxDelayTime: .seconds(30),
            command: self.getReplicationSet
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }

    public func waitUntilWaitForReplicationSetDeleted(
        _ input: GetReplicationSetInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "DELETING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("replicationSet.status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            maxDelayTime: .seconds(30),
            command: self.getReplicationSet
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
