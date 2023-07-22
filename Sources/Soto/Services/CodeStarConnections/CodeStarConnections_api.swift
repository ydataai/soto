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

/// Service object for interacting with AWS CodeStarConnections service.
///
/// AWS CodeStar Connections This AWS CodeStar Connections API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Connections API. You can use the connections API to work with connections and installations.  Connections are configurations that you use to connect AWS resources to external code repositories. Each connection is a resource that can be given to services such as CodePipeline to connect to a third-party repository such as Bitbucket. For example, you can add the connection in CodePipeline so that it triggers your pipeline when a code change is made to your third-party code repository. Each connection is named and associated with a unique ARN that is used to reference the connection. When you create a connection, the console initiates a third-party connection handshake. Installations are the apps that are used to conduct this handshake. For example, the installation for the Bitbucket provider type is the Bitbucket app. When you create a connection, you can choose an existing installation or create one. When you want to create a connection to an installed provider type such as GitHub Enterprise Server, you create a host for your connections. You can work with connections by calling:    CreateConnection, which creates a uniquely named connection that can be referenced by services such as CodePipeline.    DeleteConnection, which deletes the specified connection.    GetConnection, which returns information about the connection, including the connection status.    ListConnections, which lists the connections associated with your account.   You can work with hosts by calling:    CreateHost, which creates a host that represents the infrastructure where your provider is installed.    DeleteHost, which deletes the specified host.    GetHost, which returns information about the host, including the setup status.    ListHosts, which lists the hosts associated with your account.   You can work with tags in AWS CodeStar Connections by calling the following:    ListTagsForResource, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.    TagResource, which adds or updates tags for a resource in AWS CodeStar Connections.    UntagResource, which removes tags for a resource in AWS CodeStar Connections.   For information about how to use AWS CodeStar Connections, see the Developer Tools User Guide.
public struct CodeStarConnections: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStarConnections client
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
            amzTarget: "CodeStar_connections_20191201",
            service: "codestar-connections",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-12-01",
            endpoint: endpoint,
            errorType: CodeStarConnectionsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.
    @Sendable
    public func createConnection(_ input: CreateConnectionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateConnectionOutput {
        return try await self.client.execute(
            operation: "CreateConnection", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider.  A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console.
    @Sendable
    public func createHost(_ input: CreateHostInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHostOutput {
        return try await self.client.execute(
            operation: "CreateHost", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// The connection to be deleted.
    @Sendable
    public func deleteConnection(_ input: DeleteConnectionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteConnectionOutput {
        return try await self.client.execute(
            operation: "DeleteConnection", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.  A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.
    @Sendable
    public func deleteHost(_ input: DeleteHostInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHostOutput {
        return try await self.client.execute(
            operation: "DeleteHost", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the connection ARN and details such as status, owner, and provider type.
    @Sendable
    public func getConnection(_ input: GetConnectionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetConnectionOutput {
        return try await self.client.execute(
            operation: "GetConnection", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration.
    @Sendable
    public func getHost(_ input: GetHostInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetHostOutput {
        return try await self.client.execute(
            operation: "GetHost", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the connections associated with your account.
    @Sendable
    public func listConnections(_ input: ListConnectionsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConnectionsOutput {
        return try await self.client.execute(
            operation: "ListConnections", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the hosts associated with your account.
    @Sendable
    public func listHosts(_ input: ListHostsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHostsOutput {
        return try await self.client.execute(
            operation: "ListHosts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the set of key-value pairs (metadata) that are used to manage the resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from an AWS resource.
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a specified host with the provided configurations.
    @Sendable
    public func updateHost(_ input: UpdateHostInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateHostOutput {
        return try await self.client.execute(
            operation: "UpdateHost", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CodeStarConnections {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStarConnections, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeStarConnections {
    /// Lists the connections associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConnectionsPaginator(
        _ input: ListConnectionsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConnectionsInput, ListConnectionsOutput> {
        return .init(
            input: input,
            command: self.listConnections,
            inputKey: \ListConnectionsInput.nextToken,
            outputKey: \ListConnectionsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists the hosts associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listHostsPaginator(
        _ input: ListHostsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListHostsInput, ListHostsOutput> {
        return .init(
            input: input,
            command: self.listHosts,
            inputKey: \ListHostsInput.nextToken,
            outputKey: \ListHostsOutput.nextToken,
            logger: logger
        )
    }
}

extension CodeStarConnections.ListConnectionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarConnections.ListConnectionsInput {
        return .init(
            hostArnFilter: self.hostArnFilter,
            maxResults: self.maxResults,
            nextToken: token,
            providerTypeFilter: self.providerTypeFilter
        )
    }
}

extension CodeStarConnections.ListHostsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarConnections.ListHostsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
