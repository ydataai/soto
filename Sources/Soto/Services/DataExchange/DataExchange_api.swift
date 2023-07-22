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

/// Service object for interacting with AWS DataExchange service.
///
/// AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud. As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIs to download or copy your entitled data sets to Amazon Simple Storage Service (Amazon S3) for use across a variety of AWS analytics and machine learning services. As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide. A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set. A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object, Redshift datashare, API Gateway API, AWS Lake Formation data permission, or Amazon S3 data access. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.
public struct DataExchange: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DataExchange client
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
            service: "dataexchange",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: DataExchangeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    @Sendable
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "CancelJob", 
            path: "/v1/jobs/{JobId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation creates a data set.
    @Sendable
    public func createDataSet(_ input: CreateDataSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDataSetResponse {
        return try await self.client.execute(
            operation: "CreateDataSet", 
            path: "/v1/data-sets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation creates an event action.
    @Sendable
    public func createEventAction(_ input: CreateEventActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEventActionResponse {
        return try await self.client.execute(
            operation: "CreateEventAction", 
            path: "/v1/event-actions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation creates a job.
    @Sendable
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobResponse {
        return try await self.client.execute(
            operation: "CreateJob", 
            path: "/v1/jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation creates a revision for a data set.
    @Sendable
    public func createRevision(_ input: CreateRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRevisionResponse {
        return try await self.client.execute(
            operation: "CreateRevision", 
            path: "/v1/data-sets/{DataSetId}/revisions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation deletes an asset.
    @Sendable
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteAsset", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation deletes a data set.
    @Sendable
    public func deleteDataSet(_ input: DeleteDataSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteDataSet", 
            path: "/v1/data-sets/{DataSetId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation deletes the event action.
    @Sendable
    public func deleteEventAction(_ input: DeleteEventActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteEventAction", 
            path: "/v1/event-actions/{EventActionId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation deletes a revision.
    @Sendable
    public func deleteRevision(_ input: DeleteRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteRevision", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns information about an asset.
    @Sendable
    public func getAsset(_ input: GetAssetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssetResponse {
        return try await self.client.execute(
            operation: "GetAsset", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns information about a data set.
    @Sendable
    public func getDataSet(_ input: GetDataSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataSetResponse {
        return try await self.client.execute(
            operation: "GetDataSet", 
            path: "/v1/data-sets/{DataSetId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation retrieves information about an event action.
    @Sendable
    public func getEventAction(_ input: GetEventActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEventActionResponse {
        return try await self.client.execute(
            operation: "GetEventAction", 
            path: "/v1/event-actions/{EventActionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns information about a job.
    @Sendable
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobResponse {
        return try await self.client.execute(
            operation: "GetJob", 
            path: "/v1/jobs/{JobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation returns information about a revision.
    @Sendable
    public func getRevision(_ input: GetRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRevisionResponse {
        return try await self.client.execute(
            operation: "GetRevision", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    @Sendable
    public func listDataSetRevisions(_ input: ListDataSetRevisionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataSetRevisionsResponse {
        return try await self.client.execute(
            operation: "ListDataSetRevisions", 
            path: "/v1/data-sets/{DataSetId}/revisions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    @Sendable
    public func listDataSets(_ input: ListDataSetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataSetsResponse {
        return try await self.client.execute(
            operation: "ListDataSets", 
            path: "/v1/data-sets", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists your event actions.
    @Sendable
    public func listEventActions(_ input: ListEventActionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventActionsResponse {
        return try await self.client.execute(
            operation: "ListEventActions", 
            path: "/v1/event-actions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists your jobs sorted by CreatedAt in descending order.
    @Sendable
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsResponse {
        return try await self.client.execute(
            operation: "ListJobs", 
            path: "/v1/jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists a revision's assets sorted alphabetically in descending order.
    @Sendable
    public func listRevisionAssets(_ input: ListRevisionAssetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRevisionAssetsResponse {
        return try await self.client.execute(
            operation: "ListRevisionAssets", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation lists the tags on the resource.
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

    /// This operation revokes subscribers' access to a revision.
    @Sendable
    public func revokeRevision(_ input: RevokeRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RevokeRevisionResponse {
        return try await self.client.execute(
            operation: "RevokeRevision", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation invokes an API Gateway API asset. The request is proxied to the provider’s API Gateway API.
    @Sendable
    public func sendApiAsset(_ input: SendApiAssetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendApiAssetResponse {
        return try await self.client.execute(
            operation: "SendApiAsset", 
            path: "/v1", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "api-fulfill.", 
            logger: logger
        )
    }

    /// This operation starts a job.
    @Sendable
    public func startJob(_ input: StartJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartJobResponse {
        return try await self.client.execute(
            operation: "StartJob", 
            path: "/v1/jobs/{JobId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation tags a resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation removes one or more tags from a resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation updates an asset.
    @Sendable
    public func updateAsset(_ input: UpdateAssetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAssetResponse {
        return try await self.client.execute(
            operation: "UpdateAsset", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation updates a data set.
    @Sendable
    public func updateDataSet(_ input: UpdateDataSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDataSetResponse {
        return try await self.client.execute(
            operation: "UpdateDataSet", 
            path: "/v1/data-sets/{DataSetId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation updates the event action.
    @Sendable
    public func updateEventAction(_ input: UpdateEventActionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEventActionResponse {
        return try await self.client.execute(
            operation: "UpdateEventAction", 
            path: "/v1/event-actions/{EventActionId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation updates a revision.
    @Sendable
    public func updateRevision(_ input: UpdateRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRevisionResponse {
        return try await self.client.execute(
            operation: "UpdateRevision", 
            path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension DataExchange {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DataExchange, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension DataExchange {
    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDataSetRevisionsPaginator(
        _ input: ListDataSetRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDataSetRevisionsRequest, ListDataSetRevisionsResponse> {
        return .init(
            input: input,
            command: self.listDataSetRevisions,
            inputKey: \ListDataSetRevisionsRequest.nextToken,
            outputKey: \ListDataSetRevisionsResponse.nextToken,
            logger: logger
        )
    }

    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDataSetsPaginator(
        _ input: ListDataSetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDataSetsRequest, ListDataSetsResponse> {
        return .init(
            input: input,
            command: self.listDataSets,
            inputKey: \ListDataSetsRequest.nextToken,
            outputKey: \ListDataSetsResponse.nextToken,
            logger: logger
        )
    }

    /// This operation lists your event actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEventActionsPaginator(
        _ input: ListEventActionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEventActionsRequest, ListEventActionsResponse> {
        return .init(
            input: input,
            command: self.listEventActions,
            inputKey: \ListEventActionsRequest.nextToken,
            outputKey: \ListEventActionsResponse.nextToken,
            logger: logger
        )
    }

    /// This operation lists your jobs sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: self.listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger
        )
    }

    /// This operation lists a revision's assets sorted alphabetically in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRevisionAssetsPaginator(
        _ input: ListRevisionAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRevisionAssetsRequest, ListRevisionAssetsResponse> {
        return .init(
            input: input,
            command: self.listRevisionAssets,
            inputKey: \ListRevisionAssetsRequest.nextToken,
            outputKey: \ListRevisionAssetsResponse.nextToken,
            logger: logger
        )
    }
}

extension DataExchange.ListDataSetRevisionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListDataSetRevisionsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DataExchange.ListDataSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListDataSetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            origin: self.origin
        )
    }
}

extension DataExchange.ListEventActionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListEventActionsRequest {
        return .init(
            eventSourceId: self.eventSourceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DataExchange.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListJobsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token,
            revisionId: self.revisionId
        )
    }
}

extension DataExchange.ListRevisionAssetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListRevisionAssetsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token,
            revisionId: self.revisionId
        )
    }
}
