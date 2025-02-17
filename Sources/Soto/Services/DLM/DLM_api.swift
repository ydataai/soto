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

/// Service object for interacting with AWS DLM service.
///
/// Amazon Data Lifecycle Manager With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon Web Services resources. You create
/// 			lifecycle policies, which are used to automate operations on the specified
/// 			resources. Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots. For information about using Amazon Data Lifecycle Manager
/// 			with Amazon EBS, see
/// 				Amazon Data Lifecycle Manager in the Amazon EC2 User Guide.
public struct DLM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DLM client
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
            serviceName: "DLM",
            serviceIdentifier: "dlm",
            serviceProtocol: .restjson,
            apiVersion: "2018-01-12",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: DLMErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-gov-east-1": "dlm.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "dlm.us-gov-west-1.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an Amazon Data Lifecycle Manager lifecycle policy. Amazon Data Lifecycle Manager supports the following policy types:   Custom EBS snapshot policy   Custom EBS-backed AMI policy   Cross-account copy event policy   Default policy for EBS snapshots   Default policy for EBS-backed AMIs   For more information, see
    /// 			Default policies vs custom policies.  If you create a default policy, you can specify the request parameters either in
    /// 				the request body, or in the PolicyDetails request structure, but not both.
    @Sendable
    public func createLifecyclePolicy(_ input: CreateLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLifecyclePolicyResponse {
        return try await self.client.execute(
            operation: "CreateLifecyclePolicy", 
            path: "/policies", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified lifecycle policy and halts the automated operations that the
    /// 			policy specified. For more information about deleting a policy, see Delete lifecycle
    /// 			policies.
    @Sendable
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLifecyclePolicyResponse {
        return try await self.client.execute(
            operation: "DeleteLifecyclePolicy", 
            path: "/policies/{PolicyId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use GetLifecyclePolicy.
    @Sendable
    public func getLifecyclePolicies(_ input: GetLifecyclePoliciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLifecyclePoliciesResponse {
        return try await self.client.execute(
            operation: "GetLifecyclePolicies", 
            path: "/policies", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets detailed information about the specified lifecycle policy.
    @Sendable
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLifecyclePolicyResponse {
        return try await self.client.execute(
            operation: "GetLifecyclePolicy", 
            path: "/policies/{PolicyId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for the specified resource.
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

    /// Adds the specified tags to the specified resource.
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

    /// Removes the specified tags from the specified resource.
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

    /// Updates the specified lifecycle policy. For more information about updating a policy, see Modify lifecycle
    /// 			policies.
    @Sendable
    public func updateLifecyclePolicy(_ input: UpdateLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLifecyclePolicyResponse {
        return try await self.client.execute(
            operation: "UpdateLifecyclePolicy", 
            path: "/policies/{PolicyId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension DLM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DLM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
