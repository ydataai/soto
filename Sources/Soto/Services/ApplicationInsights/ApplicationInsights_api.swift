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

/// Service object for interacting with AWS ApplicationInsights service.
///
/// Amazon CloudWatch Application Insights Amazon CloudWatch Application Insights is a service that helps you detect common problems with your applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors.
public struct ApplicationInsights: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ApplicationInsights client
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
            amzTarget: "EC2WindowsBarleyService",
            serviceName: "ApplicationInsights",
            serviceIdentifier: "applicationinsights",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-25",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: ApplicationInsightsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "us-gov-east-1": "applicationinsights.us-gov-east-1.amazonaws.com",
        "us-gov-west-1": "applicationinsights.us-gov-west-1.amazonaws.com"
    ]}



    // MARK: API Calls

    /// Adds a workload to a component. Each component can have at most five workloads.
    @Sendable
    public func addWorkload(_ input: AddWorkloadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AddWorkloadResponse {
        return try await self.client.execute(
            operation: "AddWorkload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds an application that is created from a resource group.
    @Sendable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationResponse {
        return try await self.client.execute(
            operation: "CreateApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a custom component by grouping similar standalone instances to monitor.
    @Sendable
    public func createComponent(_ input: CreateComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateComponentResponse {
        return try await self.client.execute(
            operation: "CreateComponent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds an log pattern to a LogPatternSet.
    @Sendable
    public func createLogPattern(_ input: CreateLogPatternRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLogPatternResponse {
        return try await self.client.execute(
            operation: "CreateLogPattern", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified application from monitoring. Does not delete the application.
    @Sendable
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(
            operation: "DeleteApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    @Sendable
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteComponentResponse {
        return try await self.client.execute(
            operation: "DeleteComponent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified log pattern from a LogPatternSet.
    @Sendable
    public func deleteLogPattern(_ input: DeleteLogPatternRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLogPatternResponse {
        return try await self.client.execute(
            operation: "DeleteLogPattern", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the application.
    @Sendable
    public func describeApplication(_ input: DescribeApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeApplicationResponse {
        return try await self.client.execute(
            operation: "DescribeApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a component and lists the resources that are grouped together in a component.
    @Sendable
    public func describeComponent(_ input: DescribeComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeComponentResponse {
        return try await self.client.execute(
            operation: "DescribeComponent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the monitoring configuration of the component.
    @Sendable
    public func describeComponentConfiguration(_ input: DescribeComponentConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeComponentConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeComponentConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the recommended monitoring configuration of the component.
    @Sendable
    public func describeComponentConfigurationRecommendation(_ input: DescribeComponentConfigurationRecommendationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeComponentConfigurationRecommendationResponse {
        return try await self.client.execute(
            operation: "DescribeComponentConfigurationRecommendation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describe a specific log pattern from a LogPatternSet.
    @Sendable
    public func describeLogPattern(_ input: DescribeLogPatternRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeLogPatternResponse {
        return try await self.client.execute(
            operation: "DescribeLogPattern", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes an anomaly or error with the application.
    @Sendable
    public func describeObservation(_ input: DescribeObservationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeObservationResponse {
        return try await self.client.execute(
            operation: "DescribeObservation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes an application problem.
    @Sendable
    public func describeProblem(_ input: DescribeProblemRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeProblemResponse {
        return try await self.client.execute(
            operation: "DescribeProblem", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the anomalies or errors associated with the problem.
    @Sendable
    public func describeProblemObservations(_ input: DescribeProblemObservationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeProblemObservationsResponse {
        return try await self.client.execute(
            operation: "DescribeProblemObservations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a workload and its configuration.
    @Sendable
    public func describeWorkload(_ input: DescribeWorkloadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeWorkloadResponse {
        return try await self.client.execute(
            operation: "DescribeWorkload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the IDs of the applications that you are monitoring.
    @Sendable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationsResponse {
        return try await self.client.execute(
            operation: "ListApplications", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the auto-grouped, standalone, and custom components of the application.
    @Sendable
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListComponentsResponse {
        return try await self.client.execute(
            operation: "ListComponents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.
    @Sendable
    public func listConfigurationHistory(_ input: ListConfigurationHistoryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConfigurationHistoryResponse {
        return try await self.client.execute(
            operation: "ListConfigurationHistory", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the log pattern sets in the specific application.
    @Sendable
    public func listLogPatternSets(_ input: ListLogPatternSetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLogPatternSetsResponse {
        return try await self.client.execute(
            operation: "ListLogPatternSets", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the log patterns in the specific log LogPatternSet.
    @Sendable
    public func listLogPatterns(_ input: ListLogPatternsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLogPatternsResponse {
        return try await self.client.execute(
            operation: "ListLogPatterns", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the problems with your application.
    @Sendable
    public func listProblems(_ input: ListProblemsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProblemsResponse {
        return try await self.client.execute(
            operation: "ListProblems", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
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

    /// Lists the workloads that are configured on a given component.
    @Sendable
    public func listWorkloads(_ input: ListWorkloadsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWorkloadsResponse {
        return try await self.client.execute(
            operation: "ListWorkloads", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove workload from a component.
    @Sendable
    public func removeWorkload(_ input: RemoveWorkloadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveWorkloadResponse {
        return try await self.client.execute(
            operation: "RemoveWorkload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove one or more tags (keys and values) from a specified application.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the application.
    @Sendable
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(
            operation: "UpdateApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the custom component name and/or the list of resources that make up the component.
    @Sendable
    public func updateComponent(_ input: UpdateComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateComponentResponse {
        return try await self.client.execute(
            operation: "UpdateComponent", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation.
    @Sendable
    public func updateComponentConfiguration(_ input: UpdateComponentConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateComponentConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateComponentConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a log pattern to a LogPatternSet.
    @Sendable
    public func updateLogPattern(_ input: UpdateLogPatternRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLogPatternResponse {
        return try await self.client.execute(
            operation: "UpdateLogPattern", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the visibility of the problem or specifies the problem as RESOLVED.
    @Sendable
    public func updateProblem(_ input: UpdateProblemRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProblemResponse {
        return try await self.client.execute(
            operation: "UpdateProblem", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a workload to a component. Each component can have at most five workloads.
    @Sendable
    public func updateWorkload(_ input: UpdateWorkloadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateWorkloadResponse {
        return try await self.client.execute(
            operation: "UpdateWorkload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ApplicationInsights {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ApplicationInsights, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ApplicationInsights {
    /// Lists the IDs of the applications that you are monitoring.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, ListApplicationsResponse> {
        return .init(
            input: input,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the auto-grouped, standalone, and custom components of the application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: self.listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConfigurationHistoryPaginator(
        _ input: ListConfigurationHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConfigurationHistoryRequest, ListConfigurationHistoryResponse> {
        return .init(
            input: input,
            command: self.listConfigurationHistory,
            inputKey: \ListConfigurationHistoryRequest.nextToken,
            outputKey: \ListConfigurationHistoryResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the log pattern sets in the specific application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLogPatternSetsPaginator(
        _ input: ListLogPatternSetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLogPatternSetsRequest, ListLogPatternSetsResponse> {
        return .init(
            input: input,
            command: self.listLogPatternSets,
            inputKey: \ListLogPatternSetsRequest.nextToken,
            outputKey: \ListLogPatternSetsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the log patterns in the specific log LogPatternSet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLogPatternsPaginator(
        _ input: ListLogPatternsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLogPatternsRequest, ListLogPatternsResponse> {
        return .init(
            input: input,
            command: self.listLogPatterns,
            inputKey: \ListLogPatternsRequest.nextToken,
            outputKey: \ListLogPatternsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the problems with your application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProblemsPaginator(
        _ input: ListProblemsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProblemsRequest, ListProblemsResponse> {
        return .init(
            input: input,
            command: self.listProblems,
            inputKey: \ListProblemsRequest.nextToken,
            outputKey: \ListProblemsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the workloads that are configured on a given component.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listWorkloadsPaginator(
        _ input: ListWorkloadsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWorkloadsRequest, ListWorkloadsResponse> {
        return .init(
            input: input,
            command: self.listWorkloads,
            inputKey: \ListWorkloadsRequest.nextToken,
            outputKey: \ListWorkloadsResponse.nextToken,
            logger: logger
        )
    }
}

extension ApplicationInsights.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListApplicationsRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationInsights.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListComponentsRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )
    }
}

extension ApplicationInsights.ListConfigurationHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListConfigurationHistoryRequest {
        return .init(
            accountId: self.accountId,
            endTime: self.endTime,
            eventStatus: self.eventStatus,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime
        )
    }
}

extension ApplicationInsights.ListLogPatternSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternSetsRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )
    }
}

extension ApplicationInsights.ListLogPatternsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternsRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            patternSetName: self.patternSetName,
            resourceGroupName: self.resourceGroupName
        )
    }
}

extension ApplicationInsights.ListProblemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListProblemsRequest {
        return .init(
            accountId: self.accountId,
            componentName: self.componentName,
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime,
            visibility: self.visibility
        )
    }
}

extension ApplicationInsights.ListWorkloadsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListWorkloadsRequest {
        return .init(
            accountId: self.accountId,
            componentName: self.componentName,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )
    }
}
