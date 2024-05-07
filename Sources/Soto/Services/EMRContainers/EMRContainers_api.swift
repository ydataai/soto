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

/// Service object for interacting with AWS EMRContainers service.
///
/// Amazon EMR on EKS provides a deployment option for Amazon EMR that allows you to run open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon EKS). With this deployment option, you can focus on running analytics workloads while Amazon EMR on EKS builds, configures, and manages containers for open-source applications. For more information about Amazon EMR on EKS concepts and tasks, see What is Amazon EMR on EKS.  Amazon EMR containers is the API name for Amazon EMR on EKS. The emr-containers prefix is used in the following scenarios:    It is the prefix in the CLI commands for Amazon EMR on EKS. For example, aws emr-containers start-job-run.   It is the prefix before IAM policy actions for Amazon EMR on EKS. For example, "Action": [ "emr-containers:StartJobRun"]. For more information, see Policy actions for Amazon EMR on EKS.   It is the prefix used in Amazon EMR on EKS service endpoints. For example, emr-containers.us-east-2.amazonaws.com. For more information, see Amazon EMR on EKSService Endpoints.
public struct EMRContainers: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the EMRContainers client
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
            serviceName: "EMRContainers",
            serviceIdentifier: "emr-containers",
            serviceProtocol: .restjson,
            apiVersion: "2020-10-01",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: EMRContainersErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "emr-containers-fips.ca-central-1.amazonaws.com",
            "us-east-1": "emr-containers-fips.us-east-1.amazonaws.com",
            "us-east-2": "emr-containers-fips.us-east-2.amazonaws.com",
            "us-west-1": "emr-containers-fips.us-west-1.amazonaws.com",
            "us-west-2": "emr-containers-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    @Sendable
    public func cancelJobRun(_ input: CancelJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobRunResponse {
        return try await self.client.execute(
            operation: "CancelJobRun", 
            path: "/virtualclusters/{virtualClusterId}/jobruns/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a job template. Job template stores values of StartJobRun API request in a template and can be used to start a job run. Job template allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun API request.
    @Sendable
    public func createJobTemplate(_ input: CreateJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobTemplateResponse {
        return try await self.client.execute(
            operation: "CreateJobTemplate", 
            path: "/jobtemplates", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a managed endpoint. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.
    @Sendable
    public func createManagedEndpoint(_ input: CreateManagedEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateManagedEndpointResponse {
        return try await self.client.execute(
            operation: "CreateManagedEndpoint", 
            path: "/virtualclusters/{virtualClusterId}/endpoints", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a security configuration. Security configurations in Amazon EMR on EKS are templates for different security setups. You can use security configurations to configure the Lake Formation integration setup. You can also create a security configuration to re-use a security setup each time you create a virtual cluster.
    @Sendable
    public func createSecurityConfiguration(_ input: CreateSecurityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSecurityConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateSecurityConfiguration", 
            path: "/securityconfigurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    @Sendable
    public func createVirtualCluster(_ input: CreateVirtualClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateVirtualClusterResponse {
        return try await self.client.execute(
            operation: "CreateVirtualCluster", 
            path: "/virtualclusters", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a job template. Job template stores values of StartJobRun API request in a template and can be used to start a job run. Job template allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun API request.
    @Sendable
    public func deleteJobTemplate(_ input: DeleteJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteJobTemplateResponse {
        return try await self.client.execute(
            operation: "DeleteJobTemplate", 
            path: "/jobtemplates/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a managed endpoint. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.
    @Sendable
    public func deleteManagedEndpoint(_ input: DeleteManagedEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteManagedEndpointResponse {
        return try await self.client.execute(
            operation: "DeleteManagedEndpoint", 
            path: "/virtualclusters/{virtualClusterId}/endpoints/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    @Sendable
    public func deleteVirtualCluster(_ input: DeleteVirtualClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteVirtualClusterResponse {
        return try await self.client.execute(
            operation: "DeleteVirtualCluster", 
            path: "/virtualclusters/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays detailed information about a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    @Sendable
    public func describeJobRun(_ input: DescribeJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobRunResponse {
        return try await self.client.execute(
            operation: "DescribeJobRun", 
            path: "/virtualclusters/{virtualClusterId}/jobruns/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays detailed information about a specified job template. Job template stores values of StartJobRun API request in a template and can be used to start a job run. Job template allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun API request.
    @Sendable
    public func describeJobTemplate(_ input: DescribeJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobTemplateResponse {
        return try await self.client.execute(
            operation: "DescribeJobTemplate", 
            path: "/jobtemplates/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays detailed information about a managed endpoint. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.
    @Sendable
    public func describeManagedEndpoint(_ input: DescribeManagedEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeManagedEndpointResponse {
        return try await self.client.execute(
            operation: "DescribeManagedEndpoint", 
            path: "/virtualclusters/{virtualClusterId}/endpoints/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays detailed information about a specified security configuration. Security configurations in Amazon EMR on EKS are templates for different security setups. You can use security configurations to configure the Lake Formation integration setup. You can also create a security configuration to re-use a security setup each time you create a virtual cluster.
    @Sendable
    public func describeSecurityConfiguration(_ input: DescribeSecurityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSecurityConfigurationResponse {
        return try await self.client.execute(
            operation: "DescribeSecurityConfiguration", 
            path: "/securityconfigurations/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays detailed information about a specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    @Sendable
    public func describeVirtualCluster(_ input: DescribeVirtualClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeVirtualClusterResponse {
        return try await self.client.execute(
            operation: "DescribeVirtualCluster", 
            path: "/virtualclusters/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generate a session token to connect to a managed endpoint.
    @Sendable
    public func getManagedEndpointSessionCredentials(_ input: GetManagedEndpointSessionCredentialsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetManagedEndpointSessionCredentialsResponse {
        return try await self.client.execute(
            operation: "GetManagedEndpointSessionCredentials", 
            path: "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    @Sendable
    public func listJobRuns(_ input: ListJobRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobRunsResponse {
        return try await self.client.execute(
            operation: "ListJobRuns", 
            path: "/virtualclusters/{virtualClusterId}/jobruns", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists job templates based on a set of parameters. Job template stores values of StartJobRun API request in a template and can be used to start a job run. Job template allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun API request.
    @Sendable
    public func listJobTemplates(_ input: ListJobTemplatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobTemplatesResponse {
        return try await self.client.execute(
            operation: "ListJobTemplates", 
            path: "/jobtemplates", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.
    @Sendable
    public func listManagedEndpoints(_ input: ListManagedEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListManagedEndpointsResponse {
        return try await self.client.execute(
            operation: "ListManagedEndpoints", 
            path: "/virtualclusters/{virtualClusterId}/endpoints", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists security configurations based on a set of parameters. Security configurations in Amazon EMR on EKS are templates for different security setups. You can use security configurations to configure the Lake Formation integration setup. You can also create a security configuration to re-use a security setup each time you create a virtual cluster.
    @Sendable
    public func listSecurityConfigurations(_ input: ListSecurityConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSecurityConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListSecurityConfigurations", 
            path: "/securityconfigurations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags assigned to the resources.
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

    /// Lists information about the specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    @Sendable
    public func listVirtualClusters(_ input: ListVirtualClustersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListVirtualClustersResponse {
        return try await self.client.execute(
            operation: "ListVirtualClusters", 
            path: "/virtualclusters", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    @Sendable
    public func startJobRun(_ input: StartJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartJobRunResponse {
        return try await self.client.execute(
            operation: "StartJobRun", 
            path: "/virtualclusters/{virtualClusterId}/jobruns", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns tags to resources. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your Amazon Web Services resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it. For example, you can define a set of tags for your Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We recommend that you devise a consistent set of tag keys for each resource type. You can then search and filter the resources based on the tags that you add.
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

    /// Removes tags from resources.
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
}

extension EMRContainers {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: EMRContainers, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension EMRContainers {
    /// Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobRunsPaginator(
        _ input: ListJobRunsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobRunsRequest, ListJobRunsResponse> {
        return .init(
            input: input,
            command: self.listJobRuns,
            inputKey: \ListJobRunsRequest.nextToken,
            outputKey: \ListJobRunsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists job templates based on a set of parameters. Job template stores values of StartJobRun API request in a template and can be used to start a job run. Job template allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun API request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobTemplatesPaginator(
        _ input: ListJobTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobTemplatesRequest, ListJobTemplatesResponse> {
        return .init(
            input: input,
            command: self.listJobTemplates,
            inputKey: \ListJobTemplatesRequest.nextToken,
            outputKey: \ListJobTemplatesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listManagedEndpointsPaginator(
        _ input: ListManagedEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListManagedEndpointsRequest, ListManagedEndpointsResponse> {
        return .init(
            input: input,
            command: self.listManagedEndpoints,
            inputKey: \ListManagedEndpointsRequest.nextToken,
            outputKey: \ListManagedEndpointsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists security configurations based on a set of parameters. Security configurations in Amazon EMR on EKS are templates for different security setups. You can use security configurations to configure the Lake Formation integration setup. You can also create a security configuration to re-use a security setup each time you create a virtual cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSecurityConfigurationsPaginator(
        _ input: ListSecurityConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSecurityConfigurationsRequest, ListSecurityConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listSecurityConfigurations,
            inputKey: \ListSecurityConfigurationsRequest.nextToken,
            outputKey: \ListSecurityConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists information about the specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listVirtualClustersPaginator(
        _ input: ListVirtualClustersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListVirtualClustersRequest, ListVirtualClustersResponse> {
        return .init(
            input: input,
            command: self.listVirtualClusters,
            inputKey: \ListVirtualClustersRequest.nextToken,
            outputKey: \ListVirtualClustersResponse.nextToken,
            logger: logger
        )
    }
}

extension EMRContainers.ListJobRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRContainers.ListJobRunsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            states: self.states,
            virtualClusterId: self.virtualClusterId
        )
    }
}

extension EMRContainers.ListJobTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRContainers.ListJobTemplatesRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension EMRContainers.ListManagedEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRContainers.ListManagedEndpointsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states,
            types: self.types,
            virtualClusterId: self.virtualClusterId
        )
    }
}

extension EMRContainers.ListSecurityConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRContainers.ListSecurityConfigurationsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension EMRContainers.ListVirtualClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRContainers.ListVirtualClustersRequest {
        return .init(
            containerProviderId: self.containerProviderId,
            containerProviderType: self.containerProviderType,
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            eksAccessEntryIntegrated: self.eksAccessEntryIntegrated,
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )
    }
}
