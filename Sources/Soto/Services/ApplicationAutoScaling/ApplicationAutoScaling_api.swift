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

/// Service object for interacting with AWS ApplicationAutoScaling service.
///
/// With Application Auto Scaling, you can configure automatic scaling for the following resources:   Amazon AppStream 2.0 fleets   Amazon Aurora Replicas   Amazon Comprehend document classification and entity recognizer endpoints   Amazon DynamoDB tables and global secondary indexes throughput capacity   Amazon ECS services   Amazon ElastiCache for Redis clusters (replication groups)   Amazon EMR clusters   Amazon Keyspaces (for Apache Cassandra) tables   Lambda function provisioned concurrency   Amazon Managed Streaming for Apache Kafka broker storage   Amazon Neptune clusters   Amazon SageMaker endpoint variants   Amazon SageMaker Serverless endpoint provisioned concurrency   Spot Fleets (Amazon EC2)   Custom resources provided by your own applications or services   To learn more about Application Auto Scaling, see the Application Auto Scaling User Guide.  API Summary  The Application Auto Scaling service API includes three key sets of actions:    Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve information on existing scalable targets.   Configure and manage automatic scaling - Define scaling policies to dynamically scale your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions, and retrieve your recent scaling activity history.   Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by calling the RegisterScalableTarget API action for any Application Auto Scaling scalable target. You can suspend and resume (individually or in combination) scale-out activities that are triggered by a scaling policy, scale-in activities that are triggered by a scaling policy, and scheduled scaling.
public struct ApplicationAutoScaling: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ApplicationAutoScaling client
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
            amzTarget: "AnyScaleFrontendService",
            serviceName: "ApplicationAutoScaling",
            serviceIdentifier: "application-autoscaling",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-02-06",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            variantEndpoints: Self.variantEndpoints,
            errorType: ApplicationAutoScalingErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "us-gov-east-1": "application-autoscaling.us-gov-east-1.amazonaws.com",
        "us-gov-west-1": "application-autoscaling.us-gov-west-1.amazonaws.com"
    ]}


    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-gov-east-1": "application-autoscaling.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "application-autoscaling.us-gov-west-1.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see Delete a step scaling policy and Delete a target tracking scaling policy in the Application Auto Scaling User Guide.
    @Sendable
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteScalingPolicyResponse {
        return try await self.client.execute(
            operation: "DeleteScalingPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see Delete a scheduled action in the Application Auto Scaling User Guide.
    @Sendable
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteScheduledActionResponse {
        return try await self.client.execute(
            operation: "DeleteScheduledAction", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which resources have been registered, use DescribeScalableTargets.   Deregistering a scalable target deletes the scaling policies and the scheduled actions that are associated with it.
    @Sendable
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeregisterScalableTargetResponse {
        return try await self.client.execute(
            operation: "DeregisterScalableTarget", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    @Sendable
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeScalableTargetsResponse {
        return try await self.client.execute(
            operation: "DescribeScalableTargets", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension. For information about viewing scaling activities using the Amazon Web Services CLI, see Scaling activities for Application Auto Scaling.
    @Sendable
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeScalingActivitiesResponse {
        return try await self.client.execute(
            operation: "DescribeScalingActivities", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target tracking scaling policies and Step scaling policies in the Application Auto Scaling User Guide.
    @Sendable
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeScalingPoliciesResponse {
        return try await self.client.execute(
            operation: "DescribeScalingPolicies", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled scaling and Managing scheduled scaling in the Application Auto Scaling User Guide.
    @Sendable
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeScheduledActionsResponse {
        return try await self.client.execute(
            operation: "DescribeScheduledActions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns all the tags on the specified Application Auto Scaling scalable target. For general information about tags, including the format and syntax, see Tagging Amazon Web Services resources in the Amazon Web Services General Reference.
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

    /// Creates or updates a scaling policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30.  We recommend caution, however, when using target tracking scaling policies with step scaling policies because conflicts between these policies can cause undesirable behavior. For example, if the step scaling policy initiates a scale-in activity before the target tracking policy is ready to scale in, the scale-in activity will not be blocked. After the scale-in activity completes, the target tracking policy could instruct the scalable target to scale out again.  For more information, see Target tracking scaling policies and Step scaling policies in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to use scaling policies. Any scaling policies that were specified for the scalable target are deleted.
    @Sendable
    public func putScalingPolicy(_ input: PutScalingPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutScalingPolicyResponse {
        return try await self.client.execute(
            operation: "PutScalingPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates a scheduled action for an Application Auto Scaling scalable target.  Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target. When you specify start and end times with a recurring schedule using a cron expression or rates, they form the boundaries for when the recurring action starts and stops. To update a scheduled action, specify the parameters that you want to change. If you don't specify start and end times, the old values are deleted. For more information, see Scheduled scaling in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to run scheduled actions. Any scheduled actions that were specified for the scalable target are deleted.
    @Sendable
    public func putScheduledAction(_ input: PutScheduledActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutScheduledActionResponse {
        return try await self.client.execute(
            operation: "PutScheduledAction", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers or updates a scalable target, which is the resource that you want to scale. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace, which represents some capacity dimension of the underlying service. When you register a new scalable target, you must specify values for the minimum and maximum capacity. If the specified resource is not active in the target service, this operation does not change the resource's current capacity. Otherwise, it changes the resource's current capacity to a value that is inside of this range. If you add a scaling policy, current capacity is adjustable within the specified range when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are outside of the minimum and maximum range. After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use DescribeScalableTargets. You can also view the scaling policies for a service namespace by using DescribeScalableTargets. If you no longer need a scalable target, you can deregister it by using DeregisterScalableTarget. To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request.   If you call the RegisterScalableTarget API operation to create a scalable target, there might be a brief delay until the operation achieves eventual consistency. You might become aware of this brief delay if you get unexpected errors when performing sequential operations. The typical strategy is to retry the request, and some Amazon Web Services SDKs include automatic backoff and retry logic. If you call the RegisterScalableTarget API operation to update an existing scalable target, Application Auto Scaling retrieves the current capacity of the resource. If it's below the minimum capacity or above the maximum capacity, Application Auto Scaling adjusts the capacity of the scalable target to place it within these bounds, even if you don't include the MinCapacity or MaxCapacity request parameters.
    @Sendable
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterScalableTargetResponse {
        return try await self.client.execute(
            operation: "RegisterScalableTarget", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or edits tags on an Application Auto Scaling scalable target. Each tag consists of a tag key and a tag value, which are both case-sensitive strings. To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag key and a new tag value. You can use this operation to tag an Application Auto Scaling scalable target, but you cannot tag a scaling policy or scheduled action. You can also add tags to an Application Auto Scaling scalable target while creating it (RegisterScalableTarget). For general information about tags, including the format and syntax, see Tagging Amazon Web Services resources in the Amazon Web Services General Reference. Use tags to control access to a scalable target. For more information, see Tagging support for Application Auto Scaling in the Application Auto Scaling User Guide.
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

    /// Deletes tags from an Application Auto Scaling scalable target. To delete a tag, specify the tag key and the Application Auto Scaling scalable target.
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
}

extension ApplicationAutoScaling {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ApplicationAutoScaling, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ApplicationAutoScaling {
    /// Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeScalableTargetsPaginator(
        _ input: DescribeScalableTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeScalableTargetsRequest, DescribeScalableTargetsResponse> {
        return .init(
            input: input,
            command: self.describeScalableTargets,
            inputKey: \DescribeScalableTargetsRequest.nextToken,
            outputKey: \DescribeScalableTargetsResponse.nextToken,
            logger: logger
        )
    }

    /// Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension. For information about viewing scaling activities using the Amazon Web Services CLI, see Scaling activities for Application Auto Scaling.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeScalingActivitiesRequest, DescribeScalingActivitiesResponse> {
        return .init(
            input: input,
            command: self.describeScalingActivities,
            inputKey: \DescribeScalingActivitiesRequest.nextToken,
            outputKey: \DescribeScalingActivitiesResponse.nextToken,
            logger: logger
        )
    }

    /// Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target tracking scaling policies and Step scaling policies in the Application Auto Scaling User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeScalingPoliciesPaginator(
        _ input: DescribeScalingPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeScalingPoliciesRequest, DescribeScalingPoliciesResponse> {
        return .init(
            input: input,
            command: self.describeScalingPolicies,
            inputKey: \DescribeScalingPoliciesRequest.nextToken,
            outputKey: \DescribeScalingPoliciesResponse.nextToken,
            logger: logger
        )
    }

    /// Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled scaling and Managing scheduled scaling in the Application Auto Scaling User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeScheduledActionsRequest, DescribeScheduledActionsResponse> {
        return .init(
            input: input,
            command: self.describeScheduledActions,
            inputKey: \DescribeScheduledActionsRequest.nextToken,
            outputKey: \DescribeScheduledActionsResponse.nextToken,
            logger: logger
        )
    }
}

extension ApplicationAutoScaling.DescribeScalableTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalableTargetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceIds: self.resourceIds,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScalingActivitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingActivitiesRequest {
        return .init(
            includeNotScaledActivities: self.includeNotScaledActivities,
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScalingPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingPoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            policyNames: self.policyNames,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )
    }
}

extension ApplicationAutoScaling.DescribeScheduledActionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScheduledActionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            scheduledActionNames: self.scheduledActionNames,
            serviceNamespace: self.serviceNamespace
        )
    }
}
