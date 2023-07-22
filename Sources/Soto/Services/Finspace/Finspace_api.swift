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

/// Service object for interacting with AWS Finspace service.
///
/// The FinSpace management service provides the APIs for managing FinSpace environments.
public struct Finspace: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Finspace client
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
            service: "finspace",
            serviceProtocol: .restjson,
            apiVersion: "2021-03-12",
            endpoint: endpoint,
            errorType: FinspaceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Create a new FinSpace environment.
    @Sendable
    public func createEnvironment(_ input: CreateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEnvironmentResponse {
        return try await self.client.execute(
            operation: "CreateEnvironment", 
            path: "/environment", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Creates a changeset for a kdb database. A changeset allows you to add and delete existing files by using an ordered list of change requests.
    @Sendable
    public func createKxChangeset(_ input: CreateKxChangesetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKxChangesetResponse {
        return try await self.client.execute(
            operation: "CreateKxChangeset", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}/changesets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new kdb cluster.
    @Sendable
    public func createKxCluster(_ input: CreateKxClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKxClusterResponse {
        return try await self.client.execute(
            operation: "CreateKxCluster", 
            path: "/kx/environments/{environmentId}/clusters", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new kdb database in the environment.
    @Sendable
    public func createKxDatabase(_ input: CreateKxDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKxDatabaseResponse {
        return try await self.client.execute(
            operation: "CreateKxDatabase", 
            path: "/kx/environments/{environmentId}/databases", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a managed kdb environment for the account.
    @Sendable
    public func createKxEnvironment(_ input: CreateKxEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKxEnvironmentResponse {
        return try await self.client.execute(
            operation: "CreateKxEnvironment", 
            path: "/kx/environments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a user in FinSpace kdb environment with an associated IAM role.
    @Sendable
    public func createKxUser(_ input: CreateKxUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKxUserResponse {
        return try await self.client.execute(
            operation: "CreateKxUser", 
            path: "/kx/environments/{environmentId}/users", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete an FinSpace environment.
    @Sendable
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteEnvironmentResponse {
        return try await self.client.execute(
            operation: "DeleteEnvironment", 
            path: "/environment/{environmentId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a kdb cluster.
    @Sendable
    public func deleteKxCluster(_ input: DeleteKxClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteKxClusterResponse {
        return try await self.client.execute(
            operation: "DeleteKxCluster", 
            path: "/kx/environments/{environmentId}/clusters/{clusterName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified database and all of its associated data. This action is irreversible. You must copy any data out of the database before deleting it if the data is to be retained.
    @Sendable
    public func deleteKxDatabase(_ input: DeleteKxDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteKxDatabaseResponse {
        return try await self.client.execute(
            operation: "DeleteKxDatabase", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the kdb environment. This action is irreversible. Deleting a kdb environment will remove all the associated data and any services running in it.
    @Sendable
    public func deleteKxEnvironment(_ input: DeleteKxEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteKxEnvironmentResponse {
        return try await self.client.execute(
            operation: "DeleteKxEnvironment", 
            path: "/kx/environments/{environmentId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a user in the specified kdb environment.
    @Sendable
    public func deleteKxUser(_ input: DeleteKxUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteKxUserResponse {
        return try await self.client.execute(
            operation: "DeleteKxUser", 
            path: "/kx/environments/{environmentId}/users/{userName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the FinSpace environment object.
    @Sendable
    public func getEnvironment(_ input: GetEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEnvironmentResponse {
        return try await self.client.execute(
            operation: "GetEnvironment", 
            path: "/environment/{environmentId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a kdb changeset.
    @Sendable
    public func getKxChangeset(_ input: GetKxChangesetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxChangesetResponse {
        return try await self.client.execute(
            operation: "GetKxChangeset", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}/changesets/{changesetId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about a kdb cluster.
    @Sendable
    public func getKxCluster(_ input: GetKxClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxClusterResponse {
        return try await self.client.execute(
            operation: "GetKxCluster", 
            path: "/kx/environments/{environmentId}/clusters/{clusterName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a connection string for a user to connect to a kdb cluster. You must call this API using the same role that you have defined while creating a user.
    @Sendable
    public func getKxConnectionString(_ input: GetKxConnectionStringRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxConnectionStringResponse {
        return try await self.client.execute(
            operation: "GetKxConnectionString", 
            path: "/kx/environments/{environmentId}/connectionString", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns database information for the specified environment ID.
    @Sendable
    public func getKxDatabase(_ input: GetKxDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxDatabaseResponse {
        return try await self.client.execute(
            operation: "GetKxDatabase", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves all the information for the specified kdb environment.
    @Sendable
    public func getKxEnvironment(_ input: GetKxEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxEnvironmentResponse {
        return try await self.client.execute(
            operation: "GetKxEnvironment", 
            path: "/kx/environments/{environmentId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the specified kdb user.
    @Sendable
    public func getKxUser(_ input: GetKxUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKxUserResponse {
        return try await self.client.execute(
            operation: "GetKxUser", 
            path: "/kx/environments/{environmentId}/users/{userName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A list of all of your FinSpace environments.
    @Sendable
    public func listEnvironments(_ input: ListEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEnvironmentsResponse {
        return try await self.client.execute(
            operation: "ListEnvironments", 
            path: "/environment", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all the changesets for a database.
    @Sendable
    public func listKxChangesets(_ input: ListKxChangesetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxChangesetsResponse {
        return try await self.client.execute(
            operation: "ListKxChangesets", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}/changesets", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the nodes in a kdb cluster.
    @Sendable
    public func listKxClusterNodes(_ input: ListKxClusterNodesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxClusterNodesResponse {
        return try await self.client.execute(
            operation: "ListKxClusterNodes", 
            path: "/kx/environments/{environmentId}/clusters/{clusterName}/nodes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of clusters.
    @Sendable
    public func listKxClusters(_ input: ListKxClustersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxClustersResponse {
        return try await self.client.execute(
            operation: "ListKxClusters", 
            path: "/kx/environments/{environmentId}/clusters", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all the databases in the kdb environment.
    @Sendable
    public func listKxDatabases(_ input: ListKxDatabasesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxDatabasesResponse {
        return try await self.client.execute(
            operation: "ListKxDatabases", 
            path: "/kx/environments/{environmentId}/databases", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of kdb environments created in an account.
    @Sendable
    public func listKxEnvironments(_ input: ListKxEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxEnvironmentsResponse {
        return try await self.client.execute(
            operation: "ListKxEnvironments", 
            path: "/kx/environments", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the users in a kdb environment.
    @Sendable
    public func listKxUsers(_ input: ListKxUsersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKxUsersResponse {
        return try await self.client.execute(
            operation: "ListKxUsers", 
            path: "/kx/environments/{environmentId}/users", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A list of all tags for a resource.
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

    /// Adds metadata tags to a FinSpace resource.
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

    /// Removes metadata tags from a FinSpace resource.
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

    /// Update your FinSpace environment.
    @Sendable
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnvironmentResponse {
        return try await self.client.execute(
            operation: "UpdateEnvironment", 
            path: "/environment/{environmentId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the databases mounted on a kdb cluster, which includes the changesetId and all the dbPaths to be cached. This API does not allow you to change a database name or add a database if you created a cluster without one.  Using this API you can point a cluster to a different changeset and modify a list of partitions being cached.
    @Sendable
    public func updateKxClusterDatabases(_ input: UpdateKxClusterDatabasesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKxClusterDatabasesResponse {
        return try await self.client.execute(
            operation: "UpdateKxClusterDatabases", 
            path: "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates information for the given kdb database.
    @Sendable
    public func updateKxDatabase(_ input: UpdateKxDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKxDatabaseResponse {
        return try await self.client.execute(
            operation: "UpdateKxDatabase", 
            path: "/kx/environments/{environmentId}/databases/{databaseName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates information for the given kdb environment.
    @Sendable
    public func updateKxEnvironment(_ input: UpdateKxEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKxEnvironmentResponse {
        return try await self.client.execute(
            operation: "UpdateKxEnvironment", 
            path: "/kx/environments/{environmentId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates environment network to connect to your internal network by using a transit gateway. This API supports request to create a transit gateway attachment from FinSpace VPC to your transit gateway ID and create a custom Route-53 outbound resolvers. Once you send a request to update a network, you cannot change it again. Network update might require termination of any clusters that are running in the existing network.
    @Sendable
    public func updateKxEnvironmentNetwork(_ input: UpdateKxEnvironmentNetworkRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKxEnvironmentNetworkResponse {
        return try await self.client.execute(
            operation: "UpdateKxEnvironmentNetwork", 
            path: "/kx/environments/{environmentId}/network", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the user details. You can only update the IAM role associated with a user.
    @Sendable
    public func updateKxUser(_ input: UpdateKxUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKxUserResponse {
        return try await self.client.execute(
            operation: "UpdateKxUser", 
            path: "/kx/environments/{environmentId}/users/{userName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Finspace {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Finspace, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Finspace {
    /// Returns a list of all the changesets for a database.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listKxChangesetsPaginator(
        _ input: ListKxChangesetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListKxChangesetsRequest, ListKxChangesetsResponse> {
        return .init(
            input: input,
            command: self.listKxChangesets,
            inputKey: \ListKxChangesetsRequest.nextToken,
            outputKey: \ListKxChangesetsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the nodes in a kdb cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listKxClusterNodesPaginator(
        _ input: ListKxClusterNodesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListKxClusterNodesRequest, ListKxClusterNodesResponse> {
        return .init(
            input: input,
            command: self.listKxClusterNodes,
            inputKey: \ListKxClusterNodesRequest.nextToken,
            outputKey: \ListKxClusterNodesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of all the databases in the kdb environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listKxDatabasesPaginator(
        _ input: ListKxDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListKxDatabasesRequest, ListKxDatabasesResponse> {
        return .init(
            input: input,
            command: self.listKxDatabases,
            inputKey: \ListKxDatabasesRequest.nextToken,
            outputKey: \ListKxDatabasesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of kdb environments created in an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listKxEnvironmentsPaginator(
        _ input: ListKxEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListKxEnvironmentsRequest, ListKxEnvironmentsResponse> {
        return .init(
            input: input,
            command: self.listKxEnvironments,
            inputKey: \ListKxEnvironmentsRequest.nextToken,
            outputKey: \ListKxEnvironmentsResponse.nextToken,
            logger: logger
        )
    }
}

extension Finspace.ListKxChangesetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Finspace.ListKxChangesetsRequest {
        return .init(
            databaseName: self.databaseName,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Finspace.ListKxClusterNodesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Finspace.ListKxClusterNodesRequest {
        return .init(
            clusterName: self.clusterName,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Finspace.ListKxDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Finspace.ListKxDatabasesRequest {
        return .init(
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Finspace.ListKxEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Finspace.ListKxEnvironmentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
