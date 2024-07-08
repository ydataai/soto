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

/// Service object for interacting with AWS Batch service.
///
/// Batch Using Batch, you can run batch computing workloads on the Amazon Web Services Cloud. Batch computing is a common means for developers, scientists, and engineers to access large amounts of compute resources. Batch uses the advantages of the batch computing to remove the undifferentiated heavy lifting of configuring and managing required infrastructure. At the same time, it also adopts a familiar batch computing software approach. You can use Batch to efficiently provision resources, and work toward eliminating capacity constraints, reducing your overall compute costs, and delivering results more quickly. As a fully managed service, Batch can run batch computing workloads of any scale. Batch automatically provisions compute resources and optimizes workload distribution based on the quantity and scale of your specific workloads. With Batch, there's no need to install or manage batch computing software. This means that you can focus on analyzing results and solving your specific problems instead.
public struct Batch: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Batch client
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
            serviceName: "Batch",
            serviceIdentifier: "batch",
            serviceProtocol: .restjson,
            apiVersion: "2016-08-10",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: BatchErrorType.self,
            xmlNamespace: "http://batch.amazonaws.com/doc/2016-08-10/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "af-south-1": "fips.batch.af-south-1.amazonaws.com",
            "ap-east-1": "fips.batch.ap-east-1.amazonaws.com",
            "ap-northeast-1": "fips.batch.ap-northeast-1.amazonaws.com",
            "ap-northeast-2": "fips.batch.ap-northeast-2.amazonaws.com",
            "ap-northeast-3": "fips.batch.ap-northeast-3.amazonaws.com",
            "ap-south-1": "fips.batch.ap-south-1.amazonaws.com",
            "ap-south-2": "fips.batch.ap-south-2.amazonaws.com",
            "ap-southeast-1": "fips.batch.ap-southeast-1.amazonaws.com",
            "ap-southeast-2": "fips.batch.ap-southeast-2.amazonaws.com",
            "ap-southeast-3": "fips.batch.ap-southeast-3.amazonaws.com",
            "ap-southeast-4": "fips.batch.ap-southeast-4.amazonaws.com",
            "ca-central-1": "fips.batch.ca-central-1.amazonaws.com",
            "ca-west-1": "fips.batch.ca-west-1.amazonaws.com",
            "eu-central-1": "fips.batch.eu-central-1.amazonaws.com",
            "eu-central-2": "fips.batch.eu-central-2.amazonaws.com",
            "eu-north-1": "fips.batch.eu-north-1.amazonaws.com",
            "eu-south-1": "fips.batch.eu-south-1.amazonaws.com",
            "eu-south-2": "fips.batch.eu-south-2.amazonaws.com",
            "eu-west-1": "fips.batch.eu-west-1.amazonaws.com",
            "eu-west-2": "fips.batch.eu-west-2.amazonaws.com",
            "eu-west-3": "fips.batch.eu-west-3.amazonaws.com",
            "il-central-1": "fips.batch.il-central-1.amazonaws.com",
            "me-central-1": "fips.batch.me-central-1.amazonaws.com",
            "me-south-1": "fips.batch.me-south-1.amazonaws.com",
            "sa-east-1": "fips.batch.sa-east-1.amazonaws.com",
            "us-east-1": "fips.batch.us-east-1.amazonaws.com",
            "us-east-2": "fips.batch.us-east-2.amazonaws.com",
            "us-gov-east-1": "batch.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "batch.us-gov-west-1.amazonaws.com",
            "us-west-1": "fips.batch.us-west-1.amazonaws.com",
            "us-west-2": "fips.batch.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Cancels a job in an Batch job queue. Jobs that are in the SUBMITTED or PENDING are canceled. A job inRUNNABLE remains in RUNNABLE until it reaches the head of the job queue. Then the job status is updated to FAILED.  A PENDING job is canceled after all dependency jobs are completed. Therefore, it may take longer than expected to cancel a job in PENDING status. When you try to cancel an array parent job in PENDING, Batch attempts to cancel all child jobs. The array parent job is canceled when all child jobs are completed.  Jobs that progressed to the STARTING or RUNNING state aren't canceled. However, the API operation still succeeds, even if no job is canceled. These jobs must be terminated with the TerminateJob operation.
    @Sendable
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobResponse {
        return try await self.client.execute(
            operation: "CancelJob", 
            path: "/v1/canceljob", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an Batch compute environment. You can create MANAGED or UNMANAGED compute environments. MANAGED compute environments can use Amazon EC2 or Fargate resources. UNMANAGED compute environments can only use EC2 resources. In a managed compute environment, Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the launch template that you specify when you create the compute environment. Either, you can choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or, you can use Fargate and Fargate Spot capacity in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is less than a specified percentage of the On-Demand price.  Multi-node parallel jobs aren't supported on Spot Instances.  In an unmanaged compute environment, you can manage your own EC2 compute resources and have flexibility with how you configure your compute resources. For example, you can use custom AMIs. However, you must verify that each of your AMIs meet the Amazon ECS container instance AMI specification. For more information, see container instance AMIs in the Amazon Elastic Container Service Developer Guide. After you created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that's associated with it. Then, launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS container instance in the Amazon Elastic Container Service Developer Guide.  To create a compute environment that uses EKS resources, the caller must have permissions to call eks:DescribeCluster.   Batch doesn't automatically upgrade the AMIs in a compute environment after it's created. For example, it also doesn't update the AMIs in your compute environment when a newer version of the Amazon ECS optimized AMI is available. You're responsible for the management of the guest operating system. This includes any updates and security patches. You're also responsible for any additional application software or utilities that you install on the compute resources. There are two ways to use a new AMI for your Batch jobs. The original method is to complete these steps:   Create a new compute environment with the new AMI.   Add the compute environment to an existing job queue.   Remove the earlier compute environment from your job queue.   Delete the earlier compute environment.   In April 2022, Batch added enhanced support for updating compute environments. For more information, see Updating compute environments. To use the enhanced updating of compute environments to update AMIs, follow these rules:   Either don't set the service role (serviceRole) parameter or set it to the AWSBatchServiceRole service-linked role.   Set the allocation strategy (allocationStrategy) parameter to BEST_FIT_PROGRESSIVE, SPOT_CAPACITY_OPTIMIZED, or SPOT_PRICE_CAPACITY_OPTIMIZED.   Set the update to latest image version (updateToLatestImageVersion) parameter to true. The updateToLatestImageVersion parameter is used when you update a compute environment. This parameter is ignored when you create a compute environment.   Don't specify an AMI ID in imageId, imageIdOverride (in  ec2Configuration ), or in the launch template (launchTemplate). In that case, Batch selects the latest Amazon ECS optimized AMI that's supported by Batch at the time the infrastructure update is initiated. Alternatively, you can specify the AMI ID in the imageId or imageIdOverride parameters, or the launch template identified by the LaunchTemplate properties. Changing any of these properties starts an infrastructure update. If the AMI ID is specified in the launch template, it can't be replaced by specifying an AMI ID in either the imageId or imageIdOverride parameters. It can only be replaced by specifying a different launch template, or if the launch template version is set to $Default or $Latest, by setting either a new default version for the launch template (if $Default) or by adding a new version to the launch template (if $Latest).   If these rules are followed, any update that starts an infrastructure update causes the AMI ID to be re-selected. If the version setting in the launch template (launchTemplate) is set to $Latest or $Default, the latest or default version of the launch template is evaluated up at the time of the infrastructure update, even if the launchTemplate wasn't updated.
    @Sendable
    public func createComputeEnvironment(_ input: CreateComputeEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateComputeEnvironmentResponse {
        return try await self.client.execute(
            operation: "CreateComputeEnvironment", 
            path: "/v1/createcomputeenvironment", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order that the Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
    @Sendable
    public func createJobQueue(_ input: CreateJobQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobQueueResponse {
        return try await self.client.execute(
            operation: "CreateJobQueue", 
            path: "/v1/createjobqueue", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an Batch scheduling policy.
    @Sendable
    public func createSchedulingPolicy(_ input: CreateSchedulingPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSchedulingPolicyResponse {
        return try await self.client.execute(
            operation: "CreateSchedulingPolicy", 
            path: "/v1/createschedulingpolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation. Compute environments that use Fargate resources must terminate all active jobs on that compute environment before deleting the compute environment. If this isn't done, the compute environment enters an invalid state.
    @Sendable
    public func deleteComputeEnvironment(_ input: DeleteComputeEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteComputeEnvironmentResponse {
        return try await self.client.execute(
            operation: "DeleteComputeEnvironment", 
            path: "/v1/deletecomputeenvironment", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are eventually terminated when you delete a job queue. The jobs are terminated at a rate of about 16 jobs each second. It's not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request.
    @Sendable
    public func deleteJobQueue(_ input: DeleteJobQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteJobQueueResponse {
        return try await self.client.execute(
            operation: "DeleteJobQueue", 
            path: "/v1/deletejobqueue", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified scheduling policy. You can't delete a scheduling policy that's used in any job queues.
    @Sendable
    public func deleteSchedulingPolicy(_ input: DeleteSchedulingPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSchedulingPolicyResponse {
        return try await self.client.execute(
            operation: "DeleteSchedulingPolicy", 
            path: "/v1/deleteschedulingpolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deregisters an Batch job definition. Job definitions are permanently deleted after 180 days.
    @Sendable
    public func deregisterJobDefinition(_ input: DeregisterJobDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeregisterJobDefinitionResponse {
        return try await self.client.execute(
            operation: "DeregisterJobDefinition", 
            path: "/v1/deregisterjobdefinition", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes one or more of your compute environments. If you're using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you launch your Amazon ECS container instances into.
    @Sendable
    public func describeComputeEnvironments(_ input: DescribeComputeEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeComputeEnvironmentsResponse {
        return try await self.client.execute(
            operation: "DescribeComputeEnvironments", 
            path: "/v1/describecomputeenvironments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    @Sendable
    public func describeJobDefinitions(_ input: DescribeJobDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobDefinitionsResponse {
        return try await self.client.execute(
            operation: "DescribeJobDefinitions", 
            path: "/v1/describejobdefinitions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes one or more of your job queues.
    @Sendable
    public func describeJobQueues(_ input: DescribeJobQueuesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobQueuesResponse {
        return try await self.client.execute(
            operation: "DescribeJobQueues", 
            path: "/v1/describejobqueues", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a list of Batch jobs.
    @Sendable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobsResponse {
        return try await self.client.execute(
            operation: "DescribeJobs", 
            path: "/v1/describejobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes one or more of your scheduling policies.
    @Sendable
    public func describeSchedulingPolicies(_ input: DescribeSchedulingPoliciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSchedulingPoliciesResponse {
        return try await self.client.execute(
            operation: "DescribeSchedulingPolicies", 
            path: "/v1/describeschedulingpolicies", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a list of the first 100 RUNNABLE jobs associated to a single job queue.
    @Sendable
    public func getJobQueueSnapshot(_ input: GetJobQueueSnapshotRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobQueueSnapshotResponse {
        return try await self.client.execute(
            operation: "GetJobQueueSnapshot", 
            path: "/v1/getjobqueuesnapshot", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of Batch jobs. You must specify only one of the following items:   A job queue ID to return a list of jobs in that job queue   A multi-node parallel job ID to return a list of nodes for that job   An array job ID to return a list of the children for that job   You can filter the results by job status with the jobStatus parameter. If you don't specify a status, only RUNNING jobs are returned.
    @Sendable
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsResponse {
        return try await self.client.execute(
            operation: "ListJobs", 
            path: "/v1/listjobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of Batch scheduling policies.
    @Sendable
    public func listSchedulingPolicies(_ input: ListSchedulingPoliciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSchedulingPoliciesResponse {
        return try await self.client.execute(
            operation: "ListSchedulingPolicies", 
            path: "/v1/listschedulingpolicies", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for an Batch resource. Batch resources that support tags are compute environments, jobs, job definitions, job queues, and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers an Batch job definition.
    @Sendable
    public func registerJobDefinition(_ input: RegisterJobDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterJobDefinitionResponse {
        return try await self.client.execute(
            operation: "RegisterJobDefinition", 
            path: "/v1/registerjobdefinition", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Submits an Batch job from a job definition. Parameters that are specified during SubmitJob override parameters defined in the job definition. vCPU and memory requirements that are specified in the resourceRequirements objects in the job definition are the exception. They can't be overridden this way using the memory and vcpus parameters. Rather, you must specify updates to job definition parameters in a resourceRequirements object that's included in the containerOverrides parameter.  Job queues with a scheduling policy are limited to 500 active fair share identifiers at a time.    Jobs that run on Fargate resources can't be guaranteed to run for more than 14 days. This is because, after 14 days, Fargate resources might become unavailable and job might be terminated.
    @Sendable
    public func submitJob(_ input: SubmitJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SubmitJobResponse {
        return try await self.client.execute(
            operation: "SubmitJob", 
            path: "/v1/submitjob", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource aren't specified in the request parameters, they aren't changed. When a resource is deleted, the tags that are associated with that resource are deleted as well. Batch resources that support tags are compute environments, jobs, job definitions, job queues, and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
    @Sendable
    public func terminateJob(_ input: TerminateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TerminateJobResponse {
        return try await self.client.execute(
            operation: "TerminateJob", 
            path: "/v1/terminatejob", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes specified tags from an Batch resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an Batch compute environment.
    @Sendable
    public func updateComputeEnvironment(_ input: UpdateComputeEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateComputeEnvironmentResponse {
        return try await self.client.execute(
            operation: "UpdateComputeEnvironment", 
            path: "/v1/updatecomputeenvironment", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a job queue.
    @Sendable
    public func updateJobQueue(_ input: UpdateJobQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateJobQueueResponse {
        return try await self.client.execute(
            operation: "UpdateJobQueue", 
            path: "/v1/updatejobqueue", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a scheduling policy.
    @Sendable
    public func updateSchedulingPolicy(_ input: UpdateSchedulingPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSchedulingPolicyResponse {
        return try await self.client.execute(
            operation: "UpdateSchedulingPolicy", 
            path: "/v1/updateschedulingpolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Batch {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Batch, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Batch {
    /// Describes one or more of your compute environments. If you're using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you launch your Amazon ECS container instances into.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeComputeEnvironmentsPaginator(
        _ input: DescribeComputeEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeComputeEnvironmentsRequest, DescribeComputeEnvironmentsResponse> {
        return .init(
            input: input,
            command: self.describeComputeEnvironments,
            inputKey: \DescribeComputeEnvironmentsRequest.nextToken,
            outputKey: \DescribeComputeEnvironmentsResponse.nextToken,
            logger: logger
        )
    }

    /// Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeJobDefinitionsPaginator(
        _ input: DescribeJobDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeJobDefinitionsRequest, DescribeJobDefinitionsResponse> {
        return .init(
            input: input,
            command: self.describeJobDefinitions,
            inputKey: \DescribeJobDefinitionsRequest.nextToken,
            outputKey: \DescribeJobDefinitionsResponse.nextToken,
            logger: logger
        )
    }

    /// Describes one or more of your job queues.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeJobQueuesPaginator(
        _ input: DescribeJobQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeJobQueuesRequest, DescribeJobQueuesResponse> {
        return .init(
            input: input,
            command: self.describeJobQueues,
            inputKey: \DescribeJobQueuesRequest.nextToken,
            outputKey: \DescribeJobQueuesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of Batch jobs. You must specify only one of the following items:   A job queue ID to return a list of jobs in that job queue   A multi-node parallel job ID to return a list of nodes for that job   An array job ID to return a list of the children for that job   You can filter the results by job status with the jobStatus parameter. If you don't specify a status, only RUNNING jobs are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: self.listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of Batch scheduling policies.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSchedulingPoliciesPaginator(
        _ input: ListSchedulingPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSchedulingPoliciesRequest, ListSchedulingPoliciesResponse> {
        return .init(
            input: input,
            command: self.listSchedulingPolicies,
            inputKey: \ListSchedulingPoliciesRequest.nextToken,
            outputKey: \ListSchedulingPoliciesResponse.nextToken,
            logger: logger
        )
    }
}

extension Batch.DescribeComputeEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeComputeEnvironmentsRequest {
        return .init(
            computeEnvironments: self.computeEnvironments,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Batch.DescribeJobDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeJobDefinitionsRequest {
        return .init(
            jobDefinitionName: self.jobDefinitionName,
            jobDefinitions: self.jobDefinitions,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension Batch.DescribeJobQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeJobQueuesRequest {
        return .init(
            jobQueues: self.jobQueues,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Batch.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.ListJobsRequest {
        return .init(
            arrayJobId: self.arrayJobId,
            filters: self.filters,
            jobQueue: self.jobQueue,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            multiNodeJobId: self.multiNodeJobId,
            nextToken: token
        )
    }
}

extension Batch.ListSchedulingPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.ListSchedulingPoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
