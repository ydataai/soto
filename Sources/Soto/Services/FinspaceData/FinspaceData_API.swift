//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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
    public func associateUserToPermissionGroup(_ input: AssociateUserToPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateUserToPermissionGroupResponse> {
        return self.client.execute(operation: "AssociateUserToPermissionGroup", path: "/permission-group/{permissionGroupId}/users/{userId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Changeset in a FinSpace Dataset.
    public func createChangeset(_ input: CreateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChangesetResponse> {
        return self.client.execute(operation: "CreateChangeset", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Dataview for a Dataset.
    public func createDataView(_ input: CreateDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataViewResponse> {
        return self.client.execute(operation: "CreateDataView", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new FinSpace Dataset.
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return self.client.execute(operation: "CreateDataset", path: "/datasetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a group of permissions for various actions that a user can perform in FinSpace.
    public func createPermissionGroup(_ input: CreatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePermissionGroupResponse> {
        return self.client.execute(operation: "CreatePermissionGroup", path: "/permission-group", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new user in FinSpace.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/user", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a FinSpace Dataset.
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatasetResponse> {
        return self.client.execute(operation: "DeleteDataset", path: "/datasetsv2/{datasetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a permission group. This action is irreversible.
    public func deletePermissionGroup(_ input: DeletePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePermissionGroupResponse> {
        return self.client.execute(operation: "DeletePermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Denies access to the FinSpace web application and API for the specified user.
    public func disableUser(_ input: DisableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUserResponse> {
        return self.client.execute(operation: "DisableUser", path: "/user/{userId}/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a user account from a permission group.
    public func disassociateUserFromPermissionGroup(_ input: DisassociateUserFromPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateUserFromPermissionGroupResponse> {
        return self.client.execute(operation: "DisassociateUserFromPermissionGroup", path: "/permission-group/{permissionGroupId}/users/{userId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Allows the specified user to access the FinSpace web application and API.
    public func enableUser(_ input: EnableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableUserResponse> {
        return self.client.execute(operation: "EnableUser", path: "/user/{userId}/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about a Changeset.
    public func getChangeset(_ input: GetChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChangesetResponse> {
        return self.client.execute(operation: "GetChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Dataview.
    public func getDataView(_ input: GetDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataViewResponse> {
        return self.client.execute(operation: "GetDataView", path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Dataset.
    public func getDataset(_ input: GetDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatasetResponse> {
        return self.client.execute(operation: "GetDataset", path: "/datasetsv2/{datasetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of a specific permission group.
    public func getPermissionGroup(_ input: GetPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPermissionGroupResponse> {
        return self.client.execute(operation: "GetPermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Request programmatic credentials to use with FinSpace SDK.
    public func getProgrammaticAccessCredentials(_ input: GetProgrammaticAccessCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProgrammaticAccessCredentialsResponse> {
        return self.client.execute(operation: "GetProgrammaticAccessCredentials", path: "/credentials/programmatic", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details for a specific user.
    public func getUser(_ input: GetUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUserResponse> {
        return self.client.execute(operation: "GetUser", path: "/user/{userId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook.
    public func getWorkingLocation(_ input: GetWorkingLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkingLocationResponse> {
        return self.client.execute(operation: "GetWorkingLocation", path: "/workingLocationV1", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the FinSpace Changesets for a Dataset.
    public func listChangesets(_ input: ListChangesetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChangesetsResponse> {
        return self.client.execute(operation: "ListChangesets", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available Dataviews for a Dataset.
    public func listDataViews(_ input: ListDataViewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataViewsResponse> {
        return self.client.execute(operation: "ListDataViews", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the active Datasets that a user has access to.
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return self.client.execute(operation: "ListDatasets", path: "/datasetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available permission groups in FinSpace.
    public func listPermissionGroups(_ input: ListPermissionGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionGroupsResponse> {
        return self.client.execute(operation: "ListPermissionGroups", path: "/permission-group", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the permission groups that are associated with a specific user account.
    public func listPermissionGroupsByUser(_ input: ListPermissionGroupsByUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionGroupsByUserResponse> {
        return self.client.execute(operation: "ListPermissionGroupsByUser", path: "/user/{userId}/permission-groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available user accounts in FinSpace.
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/user", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details of all the users in a specific permission group.
    public func listUsersByPermissionGroup(_ input: ListUsersByPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersByPermissionGroupResponse> {
        return self.client.execute(operation: "ListUsersByPermissionGroup", path: "/permission-group/{permissionGroupId}/users", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.
    public func resetUserPassword(_ input: ResetUserPasswordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetUserPasswordResponse> {
        return self.client.execute(operation: "ResetUserPassword", path: "/user/{userId}/password", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Changeset.
    public func updateChangeset(_ input: UpdateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChangesetResponse> {
        return self.client.execute(operation: "UpdateChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Dataset.
    public func updateDataset(_ input: UpdateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatasetResponse> {
        return self.client.execute(operation: "UpdateDataset", path: "/datasetsv2/{datasetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the details of a permission group. You cannot modify a permissionGroupID.
    public func updatePermissionGroup(_ input: UpdatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePermissionGroupResponse> {
        return self.client.execute(operation: "UpdatePermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the details of the specified user account. You cannot update the userId for a user.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return self.client.execute(operation: "UpdateUser", path: "/user/{userId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
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
