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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RedshiftServerless {
    // MARK: Async API Calls

    /// Converts a recovery point to a snapshot. For more information about recovery points and snapshots,  see Working with snapshots and recovery points.
    public func convertRecoveryPointToSnapshot(_ input: ConvertRecoveryPointToSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConvertRecoveryPointToSnapshotResponse {
        return try await self.client.execute(operation: "ConvertRecoveryPointToSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Redshift Serverless managed VPC endpoint.
    public func createEndpointAccess(_ input: CreateEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEndpointAccessResponse {
        return try await self.client.execute(operation: "CreateEndpointAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a namespace in Amazon Redshift Serverless.
    public func createNamespace(_ input: CreateNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        return try await self.client.execute(operation: "CreateNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a snapshot of all databases in a namespace. For more information about snapshots, see   Working with snapshots and recovery points.
    public func createSnapshot(_ input: CreateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotResponse {
        return try await self.client.execute(operation: "CreateSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a usage limit for a specified Amazon Redshift Serverless usage type. The usage limit is identified by the returned usage limit identifier.
    public func createUsageLimit(_ input: CreateUsageLimitRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUsageLimitResponse {
        return try await self.client.execute(operation: "CreateUsageLimit", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an workgroup in Amazon Redshift Serverless.
    public func createWorkgroup(_ input: CreateWorkgroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkgroupResponse {
        return try await self.client.execute(operation: "CreateWorkgroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Redshift Serverless managed VPC endpoint.
    public func deleteEndpointAccess(_ input: DeleteEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEndpointAccessResponse {
        return try await self.client.execute(operation: "DeleteEndpointAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a namespace from Amazon Redshift Serverless.  Before you delete the namespace, you can create a final snapshot that has all of the data within the namespace.
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        return try await self.client.execute(operation: "DeleteNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified resource policy.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyResponse {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a snapshot from Amazon Redshift Serverless.
    public func deleteSnapshot(_ input: DeleteSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotResponse {
        return try await self.client.execute(operation: "DeleteSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a usage limit from Amazon Redshift Serverless.
    public func deleteUsageLimit(_ input: DeleteUsageLimitRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsageLimitResponse {
        return try await self.client.execute(operation: "DeleteUsageLimit", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a workgroup.
    public func deleteWorkgroup(_ input: DeleteWorkgroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkgroupResponse {
        return try await self.client.execute(operation: "DeleteWorkgroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a database user name and temporary password with temporary authorization to log in to Amazon Redshift Serverless. By default, the temporary credentials expire in 900 seconds.  You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes).   The Identity and Access Management (IAM) user or role that runs  GetCredentials must have an IAM policy attached that allows access to all  necessary actions and resources.    If the DbName parameter is specified, the IAM policy must  allow access to the resource dbname for the specified database name.
    public func getCredentials(_ input: GetCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialsResponse {
        return try await self.client.execute(operation: "GetCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information, such as the name, about a VPC endpoint.
    public func getEndpointAccess(_ input: GetEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEndpointAccessResponse {
        return try await self.client.execute(operation: "GetEndpointAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a namespace in Amazon Redshift Serverless.
    public func getNamespace(_ input: GetNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNamespaceResponse {
        return try await self.client.execute(operation: "GetNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a recovery point.
    public func getRecoveryPoint(_ input: GetRecoveryPointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecoveryPointResponse {
        return try await self.client.execute(operation: "GetRecoveryPoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a resource policy.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePolicyResponse {
        return try await self.client.execute(operation: "GetResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific snapshot.
    public func getSnapshot(_ input: GetSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSnapshotResponse {
        return try await self.client.execute(operation: "GetSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a usage limit.
    public func getUsageLimit(_ input: GetUsageLimitRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUsageLimitResponse {
        return try await self.client.execute(operation: "GetUsageLimit", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific workgroup.
    public func getWorkgroup(_ input: GetWorkgroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkgroupResponse {
        return try await self.client.execute(operation: "GetWorkgroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of EndpointAccess objects and relevant information.
    public func listEndpointAccess(_ input: ListEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEndpointAccessResponse {
        return try await self.client.execute(operation: "ListEndpointAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a list of specified namespaces.
    public func listNamespaces(_ input: ListNamespacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamespacesResponse {
        return try await self.client.execute(operation: "ListNamespaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of recovery points.
    public func listRecoveryPoints(_ input: ListRecoveryPointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecoveryPointsResponse {
        return try await self.client.execute(operation: "ListRecoveryPoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of snapshots.
    public func listSnapshots(_ input: ListSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSnapshotsResponse {
        return try await self.client.execute(operation: "ListSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags assigned to a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all usage limits within Amazon Redshift Serverless.
    public func listUsageLimits(_ input: ListUsageLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsageLimitsResponse {
        return try await self.client.execute(operation: "ListUsageLimits", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a list of specified workgroups.
    public func listWorkgroups(_ input: ListWorkgroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkgroupsResponse {
        return try await self.client.execute(operation: "ListWorkgroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a resource policy. Currently, you can use policies to share snapshots across Amazon Web Services accounts.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyResponse {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restore the data from a recovery point.
    public func restoreFromRecoveryPoint(_ input: RestoreFromRecoveryPointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreFromRecoveryPointResponse {
        return try await self.client.execute(operation: "RestoreFromRecoveryPoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restores a namespace from a snapshot.
    public func restoreFromSnapshot(_ input: RestoreFromSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreFromSnapshotResponse {
        return try await self.client.execute(operation: "RestoreFromSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag or set of tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Amazon Redshift Serverless managed endpoint.
    public func updateEndpointAccess(_ input: UpdateEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEndpointAccessResponse {
        return try await self.client.execute(operation: "UpdateEndpointAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a namespace with the specified settings.
    public func updateNamespace(_ input: UpdateNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNamespaceResponse {
        return try await self.client.execute(operation: "UpdateNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a snapshot.
    public func updateSnapshot(_ input: UpdateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSnapshotResponse {
        return try await self.client.execute(operation: "UpdateSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a usage limit in Amazon Redshift Serverless. You can't update the usage type or period of a usage limit.
    public func updateUsageLimit(_ input: UpdateUsageLimitRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUsageLimitResponse {
        return try await self.client.execute(operation: "UpdateUsageLimit", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a workgroup with the specified configuration settings.
    public func updateWorkgroup(_ input: UpdateWorkgroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkgroupResponse {
        return try await self.client.execute(operation: "UpdateWorkgroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
