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

/// Service object for interacting with AWS Synthetics service.
///
/// Amazon CloudWatch Synthetics You can use Amazon CloudWatch Synthetics to continually monitor your services. You can create and manage canaries, which are modular, lightweight scripts  that monitor your endpoints and APIs from the outside-in. You can set up your canaries to run 24 hours a day, once per minute. The canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch ServiceLens to help you trace the causes of impacted nodes in your applications. For more information, see Using ServiceLens to Monitor the Health of Your Applications in the Amazon CloudWatch User Guide.  Before you create and manage canaries, be aware of the security considerations. For more information, see Security Considerations for Synthetics Canaries.
public struct Synthetics: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Synthetics client
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
            serviceName: "Synthetics",
            serviceIdentifier: "synthetics",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-11",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SyntheticsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "synthetics-fips.us-east-1.amazonaws.com",
            "us-east-2": "synthetics-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "synthetics-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "synthetics-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "synthetics-fips.us-west-1.amazonaws.com",
            "us-west-2": "synthetics-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates a canary with a group. Using groups can help you with managing and automating your canaries, and you can also view aggregated run results and statistics for all canaries in a group.  You must run this operation in the Region where the canary exists.
    @Sendable
    public func associateResource(_ input: AssociateResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateResourceResponse {
        return try await self.client.execute(
            operation: "AssociateResource", 
            path: "/group/{GroupIdentifier}/associate", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the outside-in. Canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. You can set up a canary to run continuously or just once.  Do not use CreateCanary to modify an existing canary. Use UpdateCanary instead. To create canaries, you must have the CloudWatchSyntheticsFullAccess policy. If you are creating a new IAM role for the canary, you also need the iam:CreateRole, iam:CreatePolicy and iam:AttachRolePolicy permissions. For more information, see Necessary Roles and Permissions. Do not include secrets or proprietary information in your canary names. The canary name makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in outbound calls over the internet. For more information, see Security Considerations for Synthetics Canaries.
    @Sendable
    public func createCanary(_ input: CreateCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateCanaryResponse {
        return try await self.client.execute(
            operation: "CreateCanary", 
            path: "/canary", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a group which you can use to associate canaries with each other, including cross-Region canaries. Using groups can help you with managing and automating your canaries, and you can also view aggregated run results and statistics for all canaries in a group.  Groups are global resources. When you create a group, it is replicated across Amazon Web Services Regions, and  you can view it and add canaries to it from any Region. Although the group ARN format reflects the Region name where it was created, a group is not constrained to any Region.  This means that you can put canaries from multiple Regions into the same group, and then use that group to view and manage all of those canaries in a single view. Groups are supported in all Regions except the Regions that are disabled by default. For more information about these Regions, see Enabling a Region. Each group can contain as many as 10 canaries. You can have as many as 20 groups in your account. Any single canary can be a member of up to 10 groups.
    @Sendable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGroupResponse {
        return try await self.client.execute(
            operation: "CreateGroup", 
            path: "/group", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently deletes the specified canary. If you specify DeleteLambda to true, CloudWatch Synthetics also deletes the Lambda functions and layers that are used by the canary. Other resources used and created by the canary are not automatically deleted.  After you delete a canary that you do not intend to use again, you should also delete the following:   The CloudWatch alarms created for this canary. These alarms have a name of Synthetics-SharpDrop-Alarm-MyCanaryName .   Amazon S3 objects and buckets, such as the canary's artifact location.   IAM roles created for the canary. If they were created in the console, these roles have the name  role/service-role/CloudWatchSyntheticsRole-MyCanaryName .   CloudWatch Logs log groups created for the canary. These logs groups have the name /aws/lambda/cwsyn-MyCanaryName .     Before you delete a canary, you might want to use GetCanary to display the information about this canary. Make note of the information returned by this operation so that you can delete these resources after you delete the canary.
    @Sendable
    public func deleteCanary(_ input: DeleteCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteCanaryResponse {
        return try await self.client.execute(
            operation: "DeleteCanary", 
            path: "/canary/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a group. The group doesn't need to be empty to be deleted. If there are canaries in the group, they are not deleted when you delete the group.  Groups are a global resource that appear in all Regions, but the request to delete a group must be made from its home Region. You can find the home Region of a group within its ARN.
    @Sendable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGroupResponse {
        return try await self.client.execute(
            operation: "DeleteGroup", 
            path: "/group/{GroupIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns a list of the canaries in your account, along with full details about each canary. This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    @Sendable
    public func describeCanaries(_ input: DescribeCanariesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCanariesResponse {
        return try await self.client.execute(
            operation: "DescribeCanaries", 
            path: "/canaries", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation to see information from the most recent run of each canary that you have created.  This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    @Sendable
    public func describeCanariesLastRun(_ input: DescribeCanariesLastRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCanariesLastRunResponse {
        return try await self.client.execute(
            operation: "DescribeCanariesLastRun", 
            path: "/canaries/last-run", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
    @Sendable
    public func describeRuntimeVersions(_ input: DescribeRuntimeVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeRuntimeVersionsResponse {
        return try await self.client.execute(
            operation: "DescribeRuntimeVersions", 
            path: "/runtime-versions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a canary from a group. You must run this operation in the Region where the canary exists.
    @Sendable
    public func disassociateResource(_ input: DisassociateResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateResourceResponse {
        return try await self.client.execute(
            operation: "DisassociateResource", 
            path: "/group/{GroupIdentifier}/disassociate", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves complete information about one canary. You must specify the name of the canary that you want. To get a list of canaries and their names, use DescribeCanaries.
    @Sendable
    public func getCanary(_ input: GetCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCanaryResponse {
        return try await self.client.execute(
            operation: "GetCanary", 
            path: "/canary/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of runs for a specified canary.
    @Sendable
    public func getCanaryRuns(_ input: GetCanaryRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCanaryRunsResponse {
        return try await self.client.execute(
            operation: "GetCanaryRuns", 
            path: "/canary/{Name}/runs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about one group. Groups are a global resource, so you can use this operation from any Region.
    @Sendable
    public func getGroup(_ input: GetGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGroupResponse {
        return try await self.client.execute(
            operation: "GetGroup", 
            path: "/group/{GroupIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the groups that the specified canary is associated with. The canary that you specify must be in the current Region.
    @Sendable
    public func listAssociatedGroups(_ input: ListAssociatedGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssociatedGroupsResponse {
        return try await self.client.execute(
            operation: "ListAssociatedGroups", 
            path: "/resource/{ResourceArn}/groups", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns a list of the ARNs of the canaries that are associated with the specified group.
    @Sendable
    public func listGroupResources(_ input: ListGroupResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroupResourcesResponse {
        return try await self.client.execute(
            operation: "ListGroupResources", 
            path: "/group/{GroupIdentifier}/resources", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs. The groups from all Regions are returned.
    @Sendable
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroupsResponse {
        return try await self.client.execute(
            operation: "ListGroups", 
            path: "/groups", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the tags associated with a canary or group.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation to run a canary that has already been created.   The frequency of the canary runs is determined by the value of the canary's Schedule. To see a canary's schedule,  use GetCanary.
    @Sendable
    public func startCanary(_ input: StartCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartCanaryResponse {
        return try await self.client.execute(
            operation: "StartCanary", 
            path: "/canary/{Name}/start", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops the canary to prevent all future runs. If the canary is currently running,the run that is in progress completes on its own, publishes metrics, and uploads artifacts, but it is not recorded in Synthetics as a completed run. You can use StartCanary to start it running again  with the canary’s current schedule at any point in the future.
    @Sendable
    public func stopCanary(_ input: StopCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopCanaryResponse {
        return try await self.client.execute(
            operation: "StopCanary", 
            path: "/canary/{Name}/stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns one or more tags (key-value pairs) to the specified canary or group.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new  tag key for the resource,  this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag  value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a canary or group.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the configuration of a canary that has  already been created. You can't use this operation to update the tags of an existing canary. To  change the tags of an existing canary, use TagResource.
    @Sendable
    public func updateCanary(_ input: UpdateCanaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateCanaryResponse {
        return try await self.client.execute(
            operation: "UpdateCanary", 
            path: "/canary/{Name}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Synthetics {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Synthetics, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Synthetics {
    /// This operation returns a list of the canaries in your account, along with full details about each canary. This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeCanariesPaginator(
        _ input: DescribeCanariesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeCanariesRequest, DescribeCanariesResponse> {
        return .init(
            input: input,
            command: self.describeCanaries,
            inputKey: \DescribeCanariesRequest.nextToken,
            outputKey: \DescribeCanariesResponse.nextToken,
            logger: logger
        )
    }

    /// Use this operation to see information from the most recent run of each canary that you have created.  This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeCanariesLastRunPaginator(
        _ input: DescribeCanariesLastRunRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeCanariesLastRunRequest, DescribeCanariesLastRunResponse> {
        return .init(
            input: input,
            command: self.describeCanariesLastRun,
            inputKey: \DescribeCanariesLastRunRequest.nextToken,
            outputKey: \DescribeCanariesLastRunResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeRuntimeVersionsPaginator(
        _ input: DescribeRuntimeVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeRuntimeVersionsRequest, DescribeRuntimeVersionsResponse> {
        return .init(
            input: input,
            command: self.describeRuntimeVersions,
            inputKey: \DescribeRuntimeVersionsRequest.nextToken,
            outputKey: \DescribeRuntimeVersionsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of runs for a specified canary.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getCanaryRunsPaginator(
        _ input: GetCanaryRunsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetCanaryRunsRequest, GetCanaryRunsResponse> {
        return .init(
            input: input,
            command: self.getCanaryRuns,
            inputKey: \GetCanaryRunsRequest.nextToken,
            outputKey: \GetCanaryRunsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of the groups that the specified canary is associated with. The canary that you specify must be in the current Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssociatedGroupsPaginator(
        _ input: ListAssociatedGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssociatedGroupsRequest, ListAssociatedGroupsResponse> {
        return .init(
            input: input,
            command: self.listAssociatedGroups,
            inputKey: \ListAssociatedGroupsRequest.nextToken,
            outputKey: \ListAssociatedGroupsResponse.nextToken,
            logger: logger
        )
    }

    /// This operation returns a list of the ARNs of the canaries that are associated with the specified group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroupResourcesRequest, ListGroupResourcesResponse> {
        return .init(
            input: input,
            command: self.listGroupResources,
            inputKey: \ListGroupResourcesRequest.nextToken,
            outputKey: \ListGroupResourcesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs. The groups from all Regions are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: self.listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger
        )
    }
}

extension Synthetics.DescribeCanariesLastRunRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesLastRunRequest {
        return .init(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )
    }
}

extension Synthetics.DescribeCanariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesRequest {
        return .init(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )
    }
}

extension Synthetics.DescribeRuntimeVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeRuntimeVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Synthetics.GetCanaryRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.GetCanaryRunsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension Synthetics.ListAssociatedGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListAssociatedGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension Synthetics.ListGroupResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListGroupResourcesRequest {
        return .init(
            groupIdentifier: self.groupIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Synthetics.ListGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
