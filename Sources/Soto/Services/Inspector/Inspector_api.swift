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

/// Service object for interacting with AWS Inspector service.
///
/// Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see  Amazon Inspector User Guide.
public struct Inspector: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Inspector client
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
            amzTarget: "InspectorService",
            serviceName: "Inspector",
            serviceIdentifier: "inspector",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-02-16",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: InspectorErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "inspector-fips.us-east-1.amazonaws.com",
            "us-east-2": "inspector-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "inspector-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "inspector-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "inspector-fips.us-west-1.amazonaws.com",
            "us-west-2": "inspector-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    @Sendable
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AddAttributesToFindingsResponse {
        return try await self.client.execute(
            operation: "AddAttributesToFindings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    @Sendable
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAssessmentTargetResponse {
        return try await self.client.execute(
            operation: "CreateAssessmentTarget", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    @Sendable
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAssessmentTemplateResponse {
        return try await self.client.execute(
            operation: "CreateAssessmentTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment.
    @Sendable
    public func createExclusionsPreview(_ input: CreateExclusionsPreviewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateExclusionsPreviewResponse {
        return try await self.client.execute(
            operation: "CreateExclusionsPreview", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    @Sendable
    public func createResourceGroup(_ input: CreateResourceGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateResourceGroupResponse {
        return try await self.client.execute(
            operation: "CreateResourceGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the assessment run that is specified by the ARN of the assessment run.
    @Sendable
    public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteAssessmentRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the assessment target that is specified by the ARN of the assessment target.
    @Sendable
    public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteAssessmentTarget", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the assessment template that is specified by the ARN of the assessment template.
    @Sendable
    public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteAssessmentTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the assessment runs that are specified by the ARNs of the assessment runs.
    @Sendable
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAssessmentRunsResponse {
        return try await self.client.execute(
            operation: "DescribeAssessmentRuns", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the assessment targets that are specified by the ARNs of the assessment targets.
    @Sendable
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAssessmentTargetsResponse {
        return try await self.client.execute(
            operation: "DescribeAssessmentTargets", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the assessment templates that are specified by the ARNs of the assessment templates.
    @Sendable
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAssessmentTemplatesResponse {
        return try await self.client.execute(
            operation: "DescribeAssessmentTemplates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the IAM role that enables Amazon Inspector to access your AWS account.
    @Sendable
    public func describeCrossAccountAccessRole(logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCrossAccountAccessRoleResponse {
        return try await self.client.execute(
            operation: "DescribeCrossAccountAccessRole", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Describes the exclusions that are specified by the exclusions' ARNs.
    @Sendable
    public func describeExclusions(_ input: DescribeExclusionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeExclusionsResponse {
        return try await self.client.execute(
            operation: "DescribeExclusions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the findings that are specified by the ARNs of the findings.
    @Sendable
    public func describeFindings(_ input: DescribeFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFindingsResponse {
        return try await self.client.execute(
            operation: "DescribeFindings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the resource groups that are specified by the ARNs of the resource groups.
    @Sendable
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeResourceGroupsResponse {
        return try await self.client.execute(
            operation: "DescribeResourceGroups", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the rules packages that are specified by the ARNs of the rules packages.
    @Sendable
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeRulesPackagesResponse {
        return try await self.client.execute(
            operation: "DescribeRulesPackages", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Produces an assessment report that includes detailed and comprehensive results of a specified assessment run.
    @Sendable
    public func getAssessmentReport(_ input: GetAssessmentReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssessmentReportResponse {
        return try await self.client.execute(
            operation: "GetAssessmentReport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    @Sendable
    public func getExclusionsPreview(_ input: GetExclusionsPreviewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetExclusionsPreviewResponse {
        return try await self.client.execute(
            operation: "GetExclusionsPreview", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Information about the data that is collected for the specified assessment run.
    @Sendable
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTelemetryMetadataResponse {
        return try await self.client.execute(
            operation: "GetTelemetryMetadata", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    @Sendable
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssessmentRunAgentsResponse {
        return try await self.client.execute(
            operation: "ListAssessmentRunAgents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    @Sendable
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssessmentRunsResponse {
        return try await self.client.execute(
            operation: "ListAssessmentRuns", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    @Sendable
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssessmentTargetsResponse {
        return try await self.client.execute(
            operation: "ListAssessmentTargets", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    @Sendable
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssessmentTemplatesResponse {
        return try await self.client.execute(
            operation: "ListAssessmentTemplates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    @Sendable
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventSubscriptionsResponse {
        return try await self.client.execute(
            operation: "ListEventSubscriptions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List exclusions that are generated by the assessment run.
    @Sendable
    public func listExclusions(_ input: ListExclusionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListExclusionsResponse {
        return try await self.client.execute(
            operation: "ListExclusions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    @Sendable
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFindingsResponse {
        return try await self.client.execute(
            operation: "ListFindings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all available Amazon Inspector rules packages.
    @Sendable
    public func listRulesPackages(_ input: ListRulesPackagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRulesPackagesResponse {
        return try await self.client.execute(
            operation: "ListRulesPackages", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all tags associated with an assessment template.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    @Sendable
    public func previewAgents(_ input: PreviewAgentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PreviewAgentsResponse {
        return try await self.client.execute(
            operation: "PreviewAgents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    @Sendable
    public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "RegisterCrossAccountAccessRole", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    @Sendable
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveAttributesFromFindingsResponse {
        return try await self.client.execute(
            operation: "RemoveAttributesFromFindings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    @Sendable
    public func setTagsForResource(_ input: SetTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "SetTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    @Sendable
    public func startAssessmentRun(_ input: StartAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartAssessmentRunResponse {
        return try await self.client.execute(
            operation: "StartAssessmentRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops the assessment run that is specified by the ARN of the assessment run.
    @Sendable
    public func stopAssessmentRun(_ input: StopAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "StopAssessmentRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @Sendable
    public func subscribeToEvent(_ input: SubscribeToEventRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "SubscribeToEvent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @Sendable
    public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UnsubscribeFromEvent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    @Sendable
    public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UpdateAssessmentTarget", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Inspector {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Inspector, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Inspector {
    /// Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getExclusionsPreviewPaginator(
        _ input: GetExclusionsPreviewRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetExclusionsPreviewRequest, GetExclusionsPreviewResponse> {
        return .init(
            input: input,
            command: self.getExclusionsPreview,
            inputKey: \GetExclusionsPreviewRequest.nextToken,
            outputKey: \GetExclusionsPreviewResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssessmentRunAgentsPaginator(
        _ input: ListAssessmentRunAgentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssessmentRunAgentsRequest, ListAssessmentRunAgentsResponse> {
        return .init(
            input: input,
            command: self.listAssessmentRunAgents,
            inputKey: \ListAssessmentRunAgentsRequest.nextToken,
            outputKey: \ListAssessmentRunAgentsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssessmentRunsPaginator(
        _ input: ListAssessmentRunsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssessmentRunsRequest, ListAssessmentRunsResponse> {
        return .init(
            input: input,
            command: self.listAssessmentRuns,
            inputKey: \ListAssessmentRunsRequest.nextToken,
            outputKey: \ListAssessmentRunsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssessmentTargetsPaginator(
        _ input: ListAssessmentTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssessmentTargetsRequest, ListAssessmentTargetsResponse> {
        return .init(
            input: input,
            command: self.listAssessmentTargets,
            inputKey: \ListAssessmentTargetsRequest.nextToken,
            outputKey: \ListAssessmentTargetsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssessmentTemplatesPaginator(
        _ input: ListAssessmentTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssessmentTemplatesRequest, ListAssessmentTemplatesResponse> {
        return .init(
            input: input,
            command: self.listAssessmentTemplates,
            inputKey: \ListAssessmentTemplatesRequest.nextToken,
            outputKey: \ListAssessmentTemplatesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEventSubscriptionsPaginator(
        _ input: ListEventSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEventSubscriptionsRequest, ListEventSubscriptionsResponse> {
        return .init(
            input: input,
            command: self.listEventSubscriptions,
            inputKey: \ListEventSubscriptionsRequest.nextToken,
            outputKey: \ListEventSubscriptionsResponse.nextToken,
            logger: logger
        )
    }

    /// List exclusions that are generated by the assessment run.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listExclusionsPaginator(
        _ input: ListExclusionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListExclusionsRequest, ListExclusionsResponse> {
        return .init(
            input: input,
            command: self.listExclusions,
            inputKey: \ListExclusionsRequest.nextToken,
            outputKey: \ListExclusionsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFindingsRequest, ListFindingsResponse> {
        return .init(
            input: input,
            command: self.listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all available Amazon Inspector rules packages.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRulesPackagesPaginator(
        _ input: ListRulesPackagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRulesPackagesRequest, ListRulesPackagesResponse> {
        return .init(
            input: input,
            command: self.listRulesPackages,
            inputKey: \ListRulesPackagesRequest.nextToken,
            outputKey: \ListRulesPackagesResponse.nextToken,
            logger: logger
        )
    }

    /// Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func previewAgentsPaginator(
        _ input: PreviewAgentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<PreviewAgentsRequest, PreviewAgentsResponse> {
        return .init(
            input: input,
            command: self.previewAgents,
            inputKey: \PreviewAgentsRequest.nextToken,
            outputKey: \PreviewAgentsResponse.nextToken,
            logger: logger
        )
    }
}

extension Inspector.GetExclusionsPreviewRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.GetExclusionsPreviewRequest {
        return .init(
            assessmentTemplateArn: self.assessmentTemplateArn,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            previewToken: self.previewToken
        )
    }
}

extension Inspector.ListAssessmentRunAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentRunAgentsRequest {
        return .init(
            assessmentRunArn: self.assessmentRunArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListAssessmentRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentRunsRequest {
        return .init(
            assessmentTemplateArns: self.assessmentTemplateArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListAssessmentTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentTargetsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListAssessmentTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentTemplatesRequest {
        return .init(
            assessmentTargetArns: self.assessmentTargetArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListEventSubscriptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListEventSubscriptionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension Inspector.ListExclusionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListExclusionsRequest {
        return .init(
            assessmentRunArn: self.assessmentRunArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListFindingsRequest {
        return .init(
            assessmentRunArns: self.assessmentRunArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.ListRulesPackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListRulesPackagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector.PreviewAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.PreviewAgentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            previewAgentsArn: self.previewAgentsArn
        )
    }
}
