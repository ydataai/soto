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

/// Service object for interacting with AWS CloudHSMV2 service.
///
/// For more information about AWS CloudHSM, see AWS CloudHSM and the AWS CloudHSM User Guide.
public struct CloudHSMV2: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudHSMV2 client
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
            amzTarget: "BaldrApiService",
            service: "cloudhsmv2",
            signingName: "cloudhsm",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-04-28",
            endpoint: endpoint,
            errorType: CloudHSMV2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Copy an AWS CloudHSM cluster backup to a different region.
    @Sendable
    public func copyBackupToRegion(_ input: CopyBackupToRegionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CopyBackupToRegionResponse {
        return try await self.client.execute(
            operation: "CopyBackupToRegion", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new AWS CloudHSM cluster.
    @Sendable
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateClusterResponse {
        return try await self.client.execute(
            operation: "CreateCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.
    @Sendable
    public func createHsm(_ input: CreateHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHsmResponse {
        return try await self.client.execute(
            operation: "CreateHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see RestoreBackup.
    @Sendable
    public func deleteBackup(_ input: DeleteBackupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteBackupResponse {
        return try await self.client.execute(
            operation: "DeleteBackup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use DescribeClusters. To delete an HSM, use DeleteHsm.
    @Sendable
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteClusterResponse {
        return try await self.client.execute(
            operation: "DeleteCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use DescribeClusters.
    @Sendable
    public func deleteHsm(_ input: DeleteHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHsmResponse {
        return try await self.client.execute(
            operation: "DeleteHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    @Sendable
    public func describeBackups(_ input: DescribeBackupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeBackupsResponse {
        return try await self.client.execute(
            operation: "DescribeBackups", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    @Sendable
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeClustersResponse {
        return try await self.client.execute(
            operation: "DescribeClusters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use DescribeClusters.
    @Sendable
    public func initializeCluster(_ input: InitializeClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InitializeClusterResponse {
        return try await self.client.execute(
            operation: "InitializeCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    @Sendable
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsResponse {
        return try await self.client.execute(
            operation: "ListTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies attributes for AWS CloudHSM backup.
    @Sendable
    public func modifyBackupAttributes(_ input: ModifyBackupAttributesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyBackupAttributesResponse {
        return try await self.client.execute(
            operation: "ModifyBackupAttributes", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies AWS CloudHSM cluster.
    @Sendable
    public func modifyCluster(_ input: ModifyClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyClusterResponse {
        return try await self.client.execute(
            operation: "ModifyCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state. For mor information on deleting a backup, see DeleteBackup.
    @Sendable
    public func restoreBackup(_ input: RestoreBackupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RestoreBackupResponse {
        return try await self.client.execute(
            operation: "RestoreBackup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
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

    /// Removes the specified tag or tags from the specified AWS CloudHSM cluster.
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

extension CloudHSMV2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudHSMV2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CloudHSMV2 {
    /// Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeBackupsPaginator(
        _ input: DescribeBackupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeBackupsRequest, DescribeBackupsResponse> {
        return .init(
            input: input,
            command: self.describeBackups,
            inputKey: \DescribeBackupsRequest.nextToken,
            outputKey: \DescribeBackupsResponse.nextToken,
            logger: logger
        )
    }

    /// Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeClustersPaginator(
        _ input: DescribeClustersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeClustersRequest, DescribeClustersResponse> {
        return .init(
            input: input,
            command: self.describeClusters,
            inputKey: \DescribeClustersRequest.nextToken,
            outputKey: \DescribeClustersResponse.nextToken,
            logger: logger
        )
    }

    /// Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTagsRequest, ListTagsResponse> {
        return .init(
            input: input,
            command: self.listTags,
            inputKey: \ListTagsRequest.nextToken,
            outputKey: \ListTagsResponse.nextToken,
            logger: logger
        )
    }
}

extension CloudHSMV2.DescribeBackupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudHSMV2.DescribeBackupsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortAscending: self.sortAscending
        )
    }
}

extension CloudHSMV2.DescribeClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudHSMV2.DescribeClustersRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CloudHSMV2.ListTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudHSMV2.ListTagsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId
        )
    }
}
