//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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
extension MemoryDB {
    // MARK: Async API Calls

    /// Apply the service update to a list of clusters supplied. For more information on service updates and applying them, see Applying the service updates.
    public func batchUpdateCluster(_ input: BatchUpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateClusterResponse {
        return try await self.client.execute(operation: "BatchUpdateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Makes a copy of an existing snapshot.
    public func copySnapshot(_ input: CopySnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopySnapshotResponse {
        return try await self.client.execute(operation: "CopySnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Access Control List. For more information, see Authenticating users with Access Contol Lists (ACLs).
    public func createACL(_ input: CreateACLRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateACLResponse {
        return try await self.client.execute(operation: "CreateACL", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a cluster. All nodes in the cluster run the same protocol-compliant engine software.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        return try await self.client.execute(operation: "CreateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MemoryDB parameter group. A parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster. For  more information, see Configuring engine parameters using parameter groups.
    public func createParameterGroup(_ input: CreateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParameterGroupResponse {
        return try await self.client.execute(operation: "CreateParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a copy of an entire cluster at a specific moment in time.
    public func createSnapshot(_ input: CreateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotResponse {
        return try await self.client.execute(operation: "CreateSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a subnet group. A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.  When you create a cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses that subnet group to choose a subnet and IP addresses within that subnet to associate with your nodes.  For more information, see Subnets and subnet groups.
    public func createSubnetGroup(_ input: CreateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetGroupResponse {
        return try await self.client.execute(operation: "CreateSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a MemoryDB user. For more information, see Authenticating users with Access Contol Lists (ACLs).
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Access Control List. The ACL must first be disassociated from the cluster before it can be deleted. For more information, see Authenticating users with Access Contol Lists (ACLs).
    public func deleteACL(_ input: DeleteACLRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteACLResponse {
        return try await self.client.execute(operation: "DeleteACL", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a cluster. It also deletes all associated nodes and node endpoints
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        return try await self.client.execute(operation: "DeleteCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any clusters.  You cannot delete the default parameter groups in your account.
    public func deleteParameterGroup(_ input: DeleteParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParameterGroupResponse {
        return try await self.client.execute(operation: "DeleteParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing snapshot. When you receive a successful response from this operation, MemoryDB immediately begins deleting the snapshot; you cannot cancel or revert this operation.
    public func deleteSnapshot(_ input: DeleteSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotResponse {
        return try await self.client.execute(operation: "DeleteSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a subnet group. You cannot delete a default subnet group or one that is associated with any clusters.
    public func deleteSubnetGroup(_ input: DeleteSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSubnetGroupResponse {
        return try await self.client.execute(operation: "DeleteSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a user. The user will be removed from all ACLs and in turn removed from all clusters.
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        return try await self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of ACLs
    public func describeACLs(_ input: DescribeACLsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeACLsResponse {
        return try await self.client.execute(operation: "DescribeACLs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cluster if a cluster name is supplied.
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        return try await self.client.execute(operation: "DescribeClusters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the available Redis engine versions.
    public func describeEngineVersions(_ input: DescribeEngineVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEngineVersionsResponse {
        return try await self.client.execute(operation: "DescribeEngineVersions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns events related to clusters, security groups, and parameter groups. You can obtain events specific to a particular cluster, security group, or parameter group by providing the name as a parameter.  By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        return try await self.client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of parameter group descriptions. If a parameter group name is specified, the list contains only the descriptions for that group.
    public func describeParameterGroups(_ input: DescribeParameterGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParameterGroupsResponse {
        return try await self.client.execute(operation: "DescribeParameterGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the detailed parameter list for a particular parameter group.
    public func describeParameters(_ input: DescribeParametersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParametersResponse {
        return try await self.client.execute(operation: "DescribeParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns details of the service updates
    public func describeServiceUpdates(_ input: DescribeServiceUpdatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceUpdatesResponse {
        return try await self.client.execute(operation: "DescribeServiceUpdates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about cluster snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot,  or just the snapshots associated with a particular cluster.
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        return try await self.client.execute(operation: "DescribeSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.
    public func describeSubnetGroups(_ input: DescribeSubnetGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetGroupsResponse {
        return try await self.client.execute(operation: "DescribeSubnetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of users.
    public func describeUsers(_ input: DescribeUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        return try await self.client.execute(operation: "DescribeUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to failover a shard. This API is designed for testing the behavior of your application in case of MemoryDB failover. It is not designed to be used as a production-level tool for initiating a failover to overcome a problem you may have with the cluster. Moreover, in certain conditions such as large scale operational events, Amazon may block this API.
    public func failoverShard(_ input: FailoverShardRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FailoverShardResponse {
        return try await self.client.execute(operation: "FailoverShard", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available node types that you can scale to from your cluster's current node type.  When you use the UpdateCluster operation to scale your cluster, the value of the NodeType parameter must be one of the node types returned by this operation.
    public func listAllowedNodeTypeUpdates(_ input: ListAllowedNodeTypeUpdatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAllowedNodeTypeUpdatesResponse {
        return try await self.client.execute(operation: "ListAllowedNodeTypeUpdates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags currently on a named resource.  A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track your MemoryDB resources.  For more information, see Tagging your MemoryDB resources
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsResponse {
        return try await self.client.execute(operation: "ListTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the parameters of a parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire parameter group, specify the AllParameters and ParameterGroupName parameters.
    public func resetParameterGroup(_ input: ResetParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetParameterGroupResponse {
        return try await self.client.execute(operation: "ResetParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your MemoryDB resources.
    ///  When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. For more information, see
    ///  Resource-level permissions.  For example, you can use cost-allocation tags to your MemoryDB resources, Amazon generates a cost allocation report as a comma-separated value  (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories  (such as cost centers, application names, or owners) to organize your costs across multiple services.  For more information, see Using Cost Allocation Tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to remove tags on a resource
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the list of users that belong to the Access Control List.
    public func updateACL(_ input: UpdateACLRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateACLResponse {
        return try await self.client.execute(operation: "UpdateACL", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration settings by specifying the settings and the new values.
    public func updateCluster(_ input: UpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterResponse {
        return try await self.client.execute(operation: "UpdateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    public func updateParameterGroup(_ input: UpdateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateParameterGroupResponse {
        return try await self.client.execute(operation: "UpdateParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a subnet group. For more information, see Updating a subnet group
    public func updateSubnetGroup(_ input: UpdateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSubnetGroupResponse {
        return try await self.client.execute(operation: "UpdateSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes user password(s) and/or access string.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        return try await self.client.execute(operation: "UpdateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
