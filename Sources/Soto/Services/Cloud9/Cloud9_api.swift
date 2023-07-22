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

/// Service object for interacting with AWS Cloud9 service.
///
/// Cloud9 Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud. For more information about Cloud9, see the Cloud9 User Guide. Cloud9 supports these operations:    CreateEnvironmentEC2: Creates an Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.    CreateEnvironmentMembership: Adds an environment member to an environment.    DeleteEnvironment: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.    DeleteEnvironmentMembership: Deletes an environment member from an environment.    DescribeEnvironmentMemberships: Gets information about environment members for an environment.    DescribeEnvironments: Gets information about environments.    DescribeEnvironmentStatus: Gets status information for an environment.    ListEnvironments: Gets a list of environment identifiers.    ListTagsForResource: Gets the tags for an environment.    TagResource: Adds tags to an environment.    UntagResource: Removes tags from an environment.    UpdateEnvironment: Changes the settings of an existing environment.    UpdateEnvironmentMembership: Changes the settings of an existing environment member for an environment.
public struct Cloud9: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Cloud9 client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSCloud9WorkspaceManagementService",
            service: "cloud9",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-09-23",
            endpoint: endpoint,
            errorType: Cloud9ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    @Sendable
    public func createEnvironmentEC2(_ input: CreateEnvironmentEC2Request, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEnvironmentEC2Result {
        return try await self.client.execute(
            operation: "CreateEnvironmentEC2", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds an environment member to an Cloud9 development environment.
    @Sendable
    public func createEnvironmentMembership(_ input: CreateEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEnvironmentMembershipResult {
        return try await self.client.execute(
            operation: "CreateEnvironmentMembership", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    @Sendable
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteEnvironmentResult {
        return try await self.client.execute(
            operation: "DeleteEnvironment", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an environment member from a development environment.
    @Sendable
    public func deleteEnvironmentMembership(_ input: DeleteEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteEnvironmentMembershipResult {
        return try await self.client.execute(
            operation: "DeleteEnvironmentMembership", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about environment members for an Cloud9 development environment.
    @Sendable
    public func describeEnvironmentMemberships(_ input: DescribeEnvironmentMembershipsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEnvironmentMembershipsResult {
        return try await self.client.execute(
            operation: "DescribeEnvironmentMemberships", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets status information for an Cloud9 development environment.
    @Sendable
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEnvironmentStatusResult {
        return try await self.client.execute(
            operation: "DescribeEnvironmentStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about Cloud9 development environments.
    @Sendable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEnvironmentsResult {
        return try await self.client.execute(
            operation: "DescribeEnvironments", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a list of Cloud9 development environment identifiers.
    @Sendable
    public func listEnvironments(_ input: ListEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEnvironmentsResult {
        return try await self.client.execute(
            operation: "ListEnvironments", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a list of the tags associated with an Cloud9 development environment.
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

    /// Adds tags to an Cloud9 development environment.  Tags that you add to an Cloud9 environment by using this method will NOT be automatically propagated to underlying resources.
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

    /// Removes tags from an Cloud9 development environment.
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

    /// Changes the settings of an existing Cloud9 development environment.
    @Sendable
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnvironmentResult {
        return try await self.client.execute(
            operation: "UpdateEnvironment", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Changes the settings of an existing environment member for an Cloud9 development environment.
    @Sendable
    public func updateEnvironmentMembership(_ input: UpdateEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnvironmentMembershipResult {
        return try await self.client.execute(
            operation: "UpdateEnvironmentMembership", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Cloud9 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Cloud9, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Cloud9 {
    /// Gets information about environment members for an Cloud9 development environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeEnvironmentMembershipsPaginator(
        _ input: DescribeEnvironmentMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEnvironmentMembershipsRequest, DescribeEnvironmentMembershipsResult> {
        return .init(
            input: input,
            command: self.describeEnvironmentMemberships,
            inputKey: \DescribeEnvironmentMembershipsRequest.nextToken,
            outputKey: \DescribeEnvironmentMembershipsResult.nextToken,
            logger: logger
        )
    }

    /// Gets a list of Cloud9 development environment identifiers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEnvironmentsRequest, ListEnvironmentsResult> {
        return .init(
            input: input,
            command: self.listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \ListEnvironmentsResult.nextToken,
            logger: logger
        )
    }
}

extension Cloud9.DescribeEnvironmentMembershipsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Cloud9.DescribeEnvironmentMembershipsRequest {
        return .init(
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token,
            permissions: self.permissions,
            userArn: self.userArn
        )
    }
}

extension Cloud9.ListEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Cloud9.ListEnvironmentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
