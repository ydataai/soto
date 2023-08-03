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

/// Service object for interacting with AWS ComputeOptimizer service.
///
/// Compute Optimizer is a service that analyzes the configuration and utilization metrics of your Amazon Web Services compute resources, such as Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda functions, Amazon EBS volumes, and Amazon ECS services on Fargate.  It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, in addition to projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, including the required permissions to use the service, see the Compute Optimizer User Guide.
public struct ComputeOptimizer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ComputeOptimizer client
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
            amzTarget: "ComputeOptimizerService",
            serviceName: "ComputeOptimizer",
            serviceIdentifier: "compute-optimizer",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: ComputeOptimizerErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "af-south-1": "compute-optimizer.af-south-1.amazonaws.com",
        "ap-east-1": "compute-optimizer.ap-east-1.amazonaws.com",
        "ap-northeast-1": "compute-optimizer.ap-northeast-1.amazonaws.com",
        "ap-northeast-2": "compute-optimizer.ap-northeast-2.amazonaws.com",
        "ap-northeast-3": "compute-optimizer.ap-northeast-3.amazonaws.com",
        "ap-south-1": "compute-optimizer.ap-south-1.amazonaws.com",
        "ap-southeast-1": "compute-optimizer.ap-southeast-1.amazonaws.com",
        "ap-southeast-2": "compute-optimizer.ap-southeast-2.amazonaws.com",
        "ca-central-1": "compute-optimizer.ca-central-1.amazonaws.com",
        "cn-north-1": "compute-optimizer.cn-north-1.amazonaws.com.cn",
        "cn-northwest-1": "compute-optimizer.cn-northwest-1.amazonaws.com.cn",
        "eu-central-1": "compute-optimizer.eu-central-1.amazonaws.com",
        "eu-north-1": "compute-optimizer.eu-north-1.amazonaws.com",
        "eu-south-1": "compute-optimizer.eu-south-1.amazonaws.com",
        "eu-west-1": "compute-optimizer.eu-west-1.amazonaws.com",
        "eu-west-2": "compute-optimizer.eu-west-2.amazonaws.com",
        "eu-west-3": "compute-optimizer.eu-west-3.amazonaws.com",
        "me-south-1": "compute-optimizer.me-south-1.amazonaws.com",
        "sa-east-1": "compute-optimizer.sa-east-1.amazonaws.com",
        "us-east-1": "compute-optimizer.us-east-1.amazonaws.com",
        "us-east-2": "compute-optimizer.us-east-2.amazonaws.com",
        "us-gov-east-1": "compute-optimizer-fips.us-gov-east-1.amazonaws.com",
        "us-gov-west-1": "compute-optimizer-fips.us-gov-west-1.amazonaws.com",
        "us-west-1": "compute-optimizer.us-west-1.amazonaws.com",
        "us-west-2": "compute-optimizer.us-west-2.amazonaws.com"
    ]}



    // MARK: API Calls

    /// Deletes a recommendation preference, such as enhanced infrastructure metrics. For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    @Sendable
    public func deleteRecommendationPreferences(_ input: DeleteRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRecommendationPreferencesResponse {
        return try await self.client.execute(
            operation: "DeleteRecommendationPreferences", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.
    @Sendable
    public func describeRecommendationExportJobs(_ input: DescribeRecommendationExportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeRecommendationExportJobsResponse {
        return try await self.client.execute(
            operation: "DescribeRecommendationExportJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.
    @Sendable
    public func exportAutoScalingGroupRecommendations(_ input: ExportAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(
            operation: "ExportAutoScalingGroupRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports optimization recommendations for Amazon EBS volumes. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.
    @Sendable
    public func exportEBSVolumeRecommendations(_ input: ExportEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportEBSVolumeRecommendationsResponse {
        return try await self.client.execute(
            operation: "ExportEBSVolumeRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.
    @Sendable
    public func exportEC2InstanceRecommendations(_ input: ExportEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportEC2InstanceRecommendationsResponse {
        return try await self.client.execute(
            operation: "ExportEC2InstanceRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Exports optimization recommendations for Amazon ECS services on Fargate.  Recommendations are exported in a CSV file, and its metadata in a JSON file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can only have one Amazon ECS service export job in progress per Amazon Web Services Region.
    @Sendable
    public func exportECSServiceRecommendations(_ input: ExportECSServiceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportECSServiceRecommendationsResponse {
        return try await self.client.execute(
            operation: "ExportECSServiceRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports optimization recommendations for Lambda functions. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Lambda function export job in progress per Amazon Web Services Region.
    @Sendable
    public func exportLambdaFunctionRecommendations(_ input: ExportLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportLambdaFunctionRecommendationsResponse {
        return try await self.client.execute(
            operation: "ExportLambdaFunctionRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns Auto Scaling group recommendations. Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    @Sendable
    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetAutoScalingGroupRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. Compute Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    @Sendable
    public func getEBSVolumeRecommendations(_ input: GetEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEBSVolumeRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetEBSVolumeRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns Amazon EC2 instance recommendations. Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    @Sendable
    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEC2InstanceRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetEC2InstanceRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the projected utilization metrics of Amazon EC2 instance recommendations.  The Cpu and Memory metrics are the only projected utilization metrics returned when you run this action. Additionally, the Memory metric is returned only for resources that have the unified CloudWatch agent installed on them. For more information, see Enabling Memory Utilization with the CloudWatch Agent.
    @Sendable
    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEC2RecommendationProjectedMetricsResponse {
        return try await self.client.execute(
            operation: "GetEC2RecommendationProjectedMetrics", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns the projected metrics of Amazon ECS service recommendations.
    @Sendable
    public func getECSServiceRecommendationProjectedMetrics(_ input: GetECSServiceRecommendationProjectedMetricsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetECSServiceRecommendationProjectedMetricsResponse {
        return try await self.client.execute(
            operation: "GetECSServiceRecommendationProjectedMetrics", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns Amazon ECS service recommendations.   Compute Optimizer generates recommendations for Amazon ECS services on  Fargate that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    @Sendable
    public func getECSServiceRecommendations(_ input: GetECSServiceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetECSServiceRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetECSServiceRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the recommendation preferences that are in effect for a given resource, such as enhanced infrastructure metrics. Considers all applicable preferences that you might have set at the resource, account, and organization level. When you create a recommendation preference, you can set its status to Active or Inactive. Use this action to view the recommendation preferences that are in effect, or Active.
    @Sendable
    public func getEffectiveRecommendationPreferences(_ input: GetEffectiveRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEffectiveRecommendationPreferencesResponse {
        return try await self.client.execute(
            operation: "GetEffectiveRecommendationPreferences", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the enrollment (opt in) status of an account to the Compute Optimizer service. If the account is the management account of an organization, this action also confirms the enrollment status of member accounts of the organization. Use the GetEnrollmentStatusesForOrganization action to get detailed information about the enrollment status of member accounts of an organization.
    @Sendable
    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEnrollmentStatusResponse {
        return try await self.client.execute(
            operation: "GetEnrollmentStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account. To get the enrollment status of standalone accounts, use the GetEnrollmentStatus action.
    @Sendable
    public func getEnrollmentStatusesForOrganization(_ input: GetEnrollmentStatusesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEnrollmentStatusesForOrganizationResponse {
        return try await self.client.execute(
            operation: "GetEnrollmentStatusesForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns Lambda function recommendations. Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    @Sendable
    public func getLambdaFunctionRecommendations(_ input: GetLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLambdaFunctionRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetLambdaFunctionRecommendations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns existing recommendation preferences, such as enhanced infrastructure metrics. Use the scope parameter to specify which preferences to return. You can specify to return preferences for an organization, a specific account ID, or a specific EC2 instance or Auto Scaling group Amazon Resource Name (ARN). For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    @Sendable
    public func getRecommendationPreferences(_ input: GetRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRecommendationPreferencesResponse {
        return try await self.client.execute(
            operation: "GetRecommendationPreferences", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the optimization findings for an account. It returns the number of:   Amazon EC2 instances in an account that are Underprovisioned, Overprovisioned, or Optimized.   Auto Scaling groups in an account that are NotOptimized, or Optimized.   Amazon EBS volumes in an account that are NotOptimized, or Optimized.   Lambda functions in an account that are NotOptimized, or Optimized.   Amazon ECS services in an account that are Underprovisioned,  Overprovisioned, or Optimized.
    @Sendable
    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRecommendationSummariesResponse {
        return try await self.client.execute(
            operation: "GetRecommendationSummaries", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new recommendation preference or updates an existing recommendation preference, such as enhanced infrastructure metrics. For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    @Sendable
    public func putRecommendationPreferences(_ input: PutRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutRecommendationPreferencesResponse {
        return try await self.client.execute(
            operation: "PutRecommendationPreferences", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service. If the account is a management account of an organization, this action can also be used to enroll member accounts of the organization. You must have the appropriate permissions to opt in to Compute Optimizer, to view its recommendations, and to opt out. For more information, see Controlling access with Amazon Web Services Identity and Access Management in the Compute Optimizer User Guide. When you opt in, Compute Optimizer automatically creates a service-linked role in your account to access its data. For more information, see Using Service-Linked Roles for Compute Optimizer in the Compute Optimizer User Guide.
    @Sendable
    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnrollmentStatusResponse {
        return try await self.client.execute(
            operation: "UpdateEnrollmentStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ComputeOptimizer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ComputeOptimizer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ComputeOptimizer {
    /// Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeRecommendationExportJobsPaginator(
        _ input: DescribeRecommendationExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeRecommendationExportJobsRequest, DescribeRecommendationExportJobsResponse> {
        return .init(
            input: input,
            command: self.describeRecommendationExportJobs,
            inputKey: \DescribeRecommendationExportJobsRequest.nextToken,
            outputKey: \DescribeRecommendationExportJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account. To get the enrollment status of standalone accounts, use the GetEnrollmentStatus action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getEnrollmentStatusesForOrganizationPaginator(
        _ input: GetEnrollmentStatusesForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetEnrollmentStatusesForOrganizationRequest, GetEnrollmentStatusesForOrganizationResponse> {
        return .init(
            input: input,
            command: self.getEnrollmentStatusesForOrganization,
            inputKey: \GetEnrollmentStatusesForOrganizationRequest.nextToken,
            outputKey: \GetEnrollmentStatusesForOrganizationResponse.nextToken,
            logger: logger
        )
    }

    /// Returns Lambda function recommendations. Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getLambdaFunctionRecommendationsPaginator(
        _ input: GetLambdaFunctionRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetLambdaFunctionRecommendationsRequest, GetLambdaFunctionRecommendationsResponse> {
        return .init(
            input: input,
            command: self.getLambdaFunctionRecommendations,
            inputKey: \GetLambdaFunctionRecommendationsRequest.nextToken,
            outputKey: \GetLambdaFunctionRecommendationsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns existing recommendation preferences, such as enhanced infrastructure metrics. Use the scope parameter to specify which preferences to return. You can specify to return preferences for an organization, a specific account ID, or a specific EC2 instance or Auto Scaling group Amazon Resource Name (ARN). For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getRecommendationPreferencesPaginator(
        _ input: GetRecommendationPreferencesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetRecommendationPreferencesRequest, GetRecommendationPreferencesResponse> {
        return .init(
            input: input,
            command: self.getRecommendationPreferences,
            inputKey: \GetRecommendationPreferencesRequest.nextToken,
            outputKey: \GetRecommendationPreferencesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns the optimization findings for an account. It returns the number of:   Amazon EC2 instances in an account that are Underprovisioned, Overprovisioned, or Optimized.   Auto Scaling groups in an account that are NotOptimized, or Optimized.   Amazon EBS volumes in an account that are NotOptimized, or Optimized.   Lambda functions in an account that are NotOptimized, or Optimized.   Amazon ECS services in an account that are Underprovisioned,  Overprovisioned, or Optimized.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getRecommendationSummariesPaginator(
        _ input: GetRecommendationSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetRecommendationSummariesRequest, GetRecommendationSummariesResponse> {
        return .init(
            input: input,
            command: self.getRecommendationSummaries,
            inputKey: \GetRecommendationSummariesRequest.nextToken,
            outputKey: \GetRecommendationSummariesResponse.nextToken,
            logger: logger
        )
    }
}

extension ComputeOptimizer.DescribeRecommendationExportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ComputeOptimizer.DescribeRecommendationExportJobsRequest {
        return .init(
            filters: self.filters,
            jobIds: self.jobIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ComputeOptimizer.GetEnrollmentStatusesForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ComputeOptimizer.GetEnrollmentStatusesForOrganizationRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ComputeOptimizer.GetLambdaFunctionRecommendationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ComputeOptimizer.GetLambdaFunctionRecommendationsRequest {
        return .init(
            accountIds: self.accountIds,
            filters: self.filters,
            functionArns: self.functionArns,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ComputeOptimizer.GetRecommendationPreferencesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ComputeOptimizer.GetRecommendationPreferencesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType,
            scope: self.scope
        )
    }
}

extension ComputeOptimizer.GetRecommendationSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ComputeOptimizer.GetRecommendationSummariesRequest {
        return .init(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
