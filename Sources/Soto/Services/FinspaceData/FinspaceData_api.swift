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

/// Service object for interacting with AWS FinspaceData service.
///
///  The FinSpace APIs let you take actions inside the FinSpace.
public struct FinspaceData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the FinspaceData client
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
            service: "finspace-api",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-13",
            endpoint: endpoint,
            errorType: FinspaceDataErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds a user account to a permission group to grant permissions for actions a user can perform in FinSpace.
    @Sendable
    public func associateUserToPermissionGroup(_ input: AssociateUserToPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateUserToPermissionGroupResponse {
        return try await self.client.execute(
            operation: "AssociateUserToPermissionGroup", 
            path: "/permission-group/{permissionGroupId}/users/{userId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new Changeset in a FinSpace Dataset.
    @Sendable
    public func createChangeset(_ input: CreateChangesetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateChangesetResponse {
        return try await self.client.execute(
            operation: "CreateChangeset", 
            path: "/datasets/{datasetId}/changesetsv2", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Dataview for a Dataset.
    @Sendable
    public func createDataView(_ input: CreateDataViewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDataViewResponse {
        return try await self.client.execute(
            operation: "CreateDataView", 
            path: "/datasets/{datasetId}/dataviewsv2", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new FinSpace Dataset.
    @Sendable
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDatasetResponse {
        return try await self.client.execute(
            operation: "CreateDataset", 
            path: "/datasetsv2", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a group of permissions for various actions that a user can perform in FinSpace.
    @Sendable
    public func createPermissionGroup(_ input: CreatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePermissionGroupResponse {
        return try await self.client.execute(
            operation: "CreatePermissionGroup", 
            path: "/permission-group", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new user in FinSpace.
    @Sendable
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateUserResponse {
        return try await self.client.execute(
            operation: "CreateUser", 
            path: "/user", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a FinSpace Dataset.
    @Sendable
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDatasetResponse {
        return try await self.client.execute(
            operation: "DeleteDataset", 
            path: "/datasetsv2/{datasetId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a permission group. This action is irreversible.
    @Sendable
    public func deletePermissionGroup(_ input: DeletePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePermissionGroupResponse {
        return try await self.client.execute(
            operation: "DeletePermissionGroup", 
            path: "/permission-group/{permissionGroupId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Denies access to the FinSpace web application and API for the specified user.
    @Sendable
    public func disableUser(_ input: DisableUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisableUserResponse {
        return try await self.client.execute(
            operation: "DisableUser", 
            path: "/user/{userId}/disable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a user account from a permission group.
    @Sendable
    public func disassociateUserFromPermissionGroup(_ input: DisassociateUserFromPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateUserFromPermissionGroupResponse {
        return try await self.client.execute(
            operation: "DisassociateUserFromPermissionGroup", 
            path: "/permission-group/{permissionGroupId}/users/{userId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Allows the specified user to access the FinSpace web application and API.
    @Sendable
    public func enableUser(_ input: EnableUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EnableUserResponse {
        return try await self.client.execute(
            operation: "EnableUser", 
            path: "/user/{userId}/enable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get information about a Changeset.
    @Sendable
    public func getChangeset(_ input: GetChangesetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetChangesetResponse {
        return try await self.client.execute(
            operation: "GetChangeset", 
            path: "/datasets/{datasetId}/changesetsv2/{changesetId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about a Dataview.
    @Sendable
    public func getDataView(_ input: GetDataViewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataViewResponse {
        return try await self.client.execute(
            operation: "GetDataView", 
            path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a Dataset.
    @Sendable
    public func getDataset(_ input: GetDatasetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDatasetResponse {
        return try await self.client.execute(
            operation: "GetDataset", 
            path: "/datasetsv2/{datasetId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the credentials to access the external Dataview from an S3 location. To call this API:   You must retrieve the programmatic credentials.   You must be a member of a FinSpace user group, where the dataset that you want to access has Read Dataset Data permissions.
    @Sendable
    public func getExternalDataViewAccessDetails(_ input: GetExternalDataViewAccessDetailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetExternalDataViewAccessDetailsResponse {
        return try await self.client.execute(
            operation: "GetExternalDataViewAccessDetails", 
            path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the details of a specific permission group.
    @Sendable
    public func getPermissionGroup(_ input: GetPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPermissionGroupResponse {
        return try await self.client.execute(
            operation: "GetPermissionGroup", 
            path: "/permission-group/{permissionGroupId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Request programmatic credentials to use with FinSpace SDK.
    @Sendable
    public func getProgrammaticAccessCredentials(_ input: GetProgrammaticAccessCredentialsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProgrammaticAccessCredentialsResponse {
        return try await self.client.execute(
            operation: "GetProgrammaticAccessCredentials", 
            path: "/credentials/programmatic", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves details for a specific user.
    @Sendable
    public func getUser(_ input: GetUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetUserResponse {
        return try await self.client.execute(
            operation: "GetUser", 
            path: "/user/{userId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook.
    @Sendable
    public func getWorkingLocation(_ input: GetWorkingLocationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetWorkingLocationResponse {
        return try await self.client.execute(
            operation: "GetWorkingLocation", 
            path: "/workingLocationV1", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the FinSpace Changesets for a Dataset.
    @Sendable
    public func listChangesets(_ input: ListChangesetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListChangesetsResponse {
        return try await self.client.execute(
            operation: "ListChangesets", 
            path: "/datasets/{datasetId}/changesetsv2", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all available Dataviews for a Dataset.
    @Sendable
    public func listDataViews(_ input: ListDataViewsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataViewsResponse {
        return try await self.client.execute(
            operation: "ListDataViews", 
            path: "/datasets/{datasetId}/dataviewsv2", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all of the active Datasets that a user has access to.
    @Sendable
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDatasetsResponse {
        return try await self.client.execute(
            operation: "ListDatasets", 
            path: "/datasetsv2", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all available permission groups in FinSpace.
    @Sendable
    public func listPermissionGroups(_ input: ListPermissionGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPermissionGroupsResponse {
        return try await self.client.execute(
            operation: "ListPermissionGroups", 
            path: "/permission-group", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the permission groups that are associated with a specific user account.
    @Sendable
    public func listPermissionGroupsByUser(_ input: ListPermissionGroupsByUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPermissionGroupsByUserResponse {
        return try await self.client.execute(
            operation: "ListPermissionGroupsByUser", 
            path: "/user/{userId}/permission-groups", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all available user accounts in FinSpace.
    @Sendable
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUsersResponse {
        return try await self.client.execute(
            operation: "ListUsers", 
            path: "/user", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists details of all the users in a specific permission group.
    @Sendable
    public func listUsersByPermissionGroup(_ input: ListUsersByPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUsersByPermissionGroupResponse {
        return try await self.client.execute(
            operation: "ListUsersByPermissionGroup", 
            path: "/permission-group/{permissionGroupId}/users", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.
    @Sendable
    public func resetUserPassword(_ input: ResetUserPasswordRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ResetUserPasswordResponse {
        return try await self.client.execute(
            operation: "ResetUserPassword", 
            path: "/user/{userId}/password", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a FinSpace Changeset.
    @Sendable
    public func updateChangeset(_ input: UpdateChangesetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateChangesetResponse {
        return try await self.client.execute(
            operation: "UpdateChangeset", 
            path: "/datasets/{datasetId}/changesetsv2/{changesetId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a FinSpace Dataset.
    @Sendable
    public func updateDataset(_ input: UpdateDatasetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDatasetResponse {
        return try await self.client.execute(
            operation: "UpdateDataset", 
            path: "/datasetsv2/{datasetId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies the details of a permission group. You cannot modify a permissionGroupID.
    @Sendable
    public func updatePermissionGroup(_ input: UpdatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePermissionGroupResponse {
        return try await self.client.execute(
            operation: "UpdatePermissionGroup", 
            path: "/permission-group/{permissionGroupId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies the details of the specified user account. You cannot update the userId for a user.
    @Sendable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateUserResponse {
        return try await self.client.execute(
            operation: "UpdateUser", 
            path: "/user/{userId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension FinspaceData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: FinspaceData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension FinspaceData {
    /// Lists the FinSpace Changesets for a Dataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listChangesetsPaginator(
        _ input: ListChangesetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListChangesetsRequest, ListChangesetsResponse> {
        return .init(
            input: input,
            command: self.listChangesets,
            inputKey: \ListChangesetsRequest.nextToken,
            outputKey: \ListChangesetsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all available Dataviews for a Dataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDataViewsPaginator(
        _ input: ListDataViewsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDataViewsRequest, ListDataViewsResponse> {
        return .init(
            input: input,
            command: self.listDataViews,
            inputKey: \ListDataViewsRequest.nextToken,
            outputKey: \ListDataViewsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all of the active Datasets that a user has access to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDatasetsRequest, ListDatasetsResponse> {
        return .init(
            input: input,
            command: self.listDatasets,
            inputKey: \ListDatasetsRequest.nextToken,
            outputKey: \ListDatasetsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all available permission groups in FinSpace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPermissionGroupsPaginator(
        _ input: ListPermissionGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPermissionGroupsRequest, ListPermissionGroupsResponse> {
        return .init(
            input: input,
            command: self.listPermissionGroups,
            inputKey: \ListPermissionGroupsRequest.nextToken,
            outputKey: \ListPermissionGroupsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all available user accounts in FinSpace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: self.listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger
        )
    }
}

extension FinspaceData.ListChangesetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FinspaceData.ListChangesetsRequest {
        return .init(
            datasetId: self.datasetId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FinspaceData.ListDataViewsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FinspaceData.ListDataViewsRequest {
        return .init(
            datasetId: self.datasetId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FinspaceData.ListDatasetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FinspaceData.ListDatasetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FinspaceData.ListPermissionGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FinspaceData.ListPermissionGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FinspaceData.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FinspaceData.ListUsersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
