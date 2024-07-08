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

/// Service object for interacting with AWS MedicalImaging service.
///
/// This is the AWS HealthImaging API Reference. AWS HealthImaging is a HIPAA eligible service that empowers healthcare providers, life science organizations, and their software partners to store, analyze, and share medical images in the cloud at petabyte scale. For an introduction to the service, see the  AWS HealthImaging Developer Guide .  We recommend using one of the AWS Software Development Kits (SDKs) for your programming language, as they take care of request authentication, serialization, and connection management. For more information, see Tools to build on AWS.  The following sections list AWS HealthImaging API actions categorized according to functionality. Links are  provided to actions within this Reference, along with links back to corresponding sections in the  AWS HealthImaging Developer Guide where you can view tested code examples.  Data store actions     CreateDatastore – See  Creating a data store.    GetDatastore – See  Getting data store properties.    ListDatastores – See  Listing data stores.    DeleteDatastore – See  Deleting a data store.    Import job actions     StartDICOMImportJob – See  Starting an import job.    GetDICOMImportJob – See  Getting import job properties.    ListDICOMImportJobs – See  Listing import jobs.    Image set access actions     SearchImageSets – See  Searching image sets.    GetImageSet – See  Getting image set properties.    GetImageSetMetadata – See  Getting image set metadata.    GetImageFrame – See  Getting image set pixel data.    Image set modification actions     ListImageSetVersions – See  Listing image set versions.    UpdateImageSetMetadata – See  Updating image set metadata.    CopyImageSet – See  Copying an image set.    DeleteImageSet – See  Deleting an image set.    Tagging actions     TagResource – See Tagging a resource.    ListTagsForResource – See Listing tags for a resource.    UntagResource – See Untagging a resource.
public struct MedicalImaging: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MedicalImaging client
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
            serviceName: "MedicalImaging",
            serviceIdentifier: "medical-imaging",
            serviceProtocol: .restjson,
            apiVersion: "2023-07-19",
            endpoint: endpoint,
            errorType: MedicalImagingErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Copy an image set.
    @Sendable
    public func copyImageSet(_ input: CopyImageSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CopyImageSetResponse {
        return try await self.client.execute(
            operation: "CopyImageSet", 
            path: "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Create a data store.
    @Sendable
    public func createDatastore(_ input: CreateDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDatastoreResponse {
        return try await self.client.execute(
            operation: "CreateDatastore", 
            path: "/datastore", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete a data store.  Before a data store can be deleted, you must first delete all image sets within it.
    @Sendable
    public func deleteDatastore(_ input: DeleteDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDatastoreResponse {
        return try await self.client.execute(
            operation: "DeleteDatastore", 
            path: "/datastore/{datastoreId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete an image set.
    @Sendable
    public func deleteImageSet(_ input: DeleteImageSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteImageSetResponse {
        return try await self.client.execute(
            operation: "DeleteImageSet", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Get the import job properties to learn more about the job or job progress.  The jobStatus refers to the execution of the import job. Therefore, an import job can return a jobStatus as COMPLETED even if validation issues are discovered during the import process. If a jobStatus returns as COMPLETED, we still recommend you review the output manifests written to S3, as they provide details on the success or failure of individual P10 object imports.
    @Sendable
    public func getDICOMImportJob(_ input: GetDICOMImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDICOMImportJobResponse {
        return try await self.client.execute(
            operation: "GetDICOMImportJob", 
            path: "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get data store properties.
    @Sendable
    public func getDatastore(_ input: GetDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDatastoreResponse {
        return try await self.client.execute(
            operation: "GetDatastore", 
            path: "/datastore/{datastoreId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get an image frame (pixel data) for an image set.
    @Sendable
    public func getImageFrame(_ input: GetImageFrameRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetImageFrameResponse {
        return try await self.client.execute(
            operation: "GetImageFrame", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Get image set properties.
    @Sendable
    public func getImageSet(_ input: GetImageSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetImageSetResponse {
        return try await self.client.execute(
            operation: "GetImageSet", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Get metadata attributes for an image set.
    @Sendable
    public func getImageSetMetadata(_ input: GetImageSetMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetImageSetMetadataResponse {
        return try await self.client.execute(
            operation: "GetImageSetMetadata", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// List import jobs created for a specific data store.
    @Sendable
    public func listDICOMImportJobs(_ input: ListDICOMImportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDICOMImportJobsResponse {
        return try await self.client.execute(
            operation: "ListDICOMImportJobs", 
            path: "/listDICOMImportJobs/datastore/{datastoreId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List data stores.
    @Sendable
    public func listDatastores(_ input: ListDatastoresRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDatastoresResponse {
        return try await self.client.execute(
            operation: "ListDatastores", 
            path: "/datastore", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List image set versions.
    @Sendable
    public func listImageSetVersions(_ input: ListImageSetVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListImageSetVersionsResponse {
        return try await self.client.execute(
            operation: "ListImageSetVersions", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Lists all tags associated with a medical imaging resource.
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

    /// Search image sets based on defined input attributes.   SearchImageSets accepts a single search query parameter and returns a paginated response of all image sets that have the matching criteria. All date range queries must be input as (lowerBound, upperBound). By default, SearchImageSets uses the updatedAt field for sorting  in descending order from newest to oldest.
    @Sendable
    public func searchImageSets(_ input: SearchImageSetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchImageSetsResponse {
        return try await self.client.execute(
            operation: "SearchImageSets", 
            path: "/datastore/{datastoreId}/searchImageSets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }

    /// Start importing bulk data into an ACTIVE data store. The import job imports DICOM P10 files found in the S3 prefix specified by the inputS3Uri parameter. The import job stores processing results in the file specified by the outputS3Uri parameter.
    @Sendable
    public func startDICOMImportJob(_ input: StartDICOMImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDICOMImportJobResponse {
        return try await self.client.execute(
            operation: "StartDICOMImportJob", 
            path: "/startDICOMImportJob/datastore/{datastoreId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a user-specifed key and value tag to a medical imaging resource.
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

    /// Removes tags from a medical imaging resource.
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

    /// Update image set metadata attributes.
    @Sendable
    public func updateImageSetMetadata(_ input: UpdateImageSetMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateImageSetMetadataResponse {
        return try await self.client.execute(
            operation: "UpdateImageSetMetadata", 
            path: "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "runtime-", 
            logger: logger
        )
    }
}

extension MedicalImaging {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MedicalImaging, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MedicalImaging {
    /// List import jobs created for a specific data store.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDICOMImportJobsPaginator(
        _ input: ListDICOMImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDICOMImportJobsRequest, ListDICOMImportJobsResponse> {
        return .init(
            input: input,
            command: self.listDICOMImportJobs,
            inputKey: \ListDICOMImportJobsRequest.nextToken,
            outputKey: \ListDICOMImportJobsResponse.nextToken,
            logger: logger
        )
    }

    /// List data stores.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDatastoresPaginator(
        _ input: ListDatastoresRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDatastoresRequest, ListDatastoresResponse> {
        return .init(
            input: input,
            command: self.listDatastores,
            inputKey: \ListDatastoresRequest.nextToken,
            outputKey: \ListDatastoresResponse.nextToken,
            logger: logger
        )
    }

    /// List image set versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listImageSetVersionsPaginator(
        _ input: ListImageSetVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListImageSetVersionsRequest, ListImageSetVersionsResponse> {
        return .init(
            input: input,
            command: self.listImageSetVersions,
            inputKey: \ListImageSetVersionsRequest.nextToken,
            outputKey: \ListImageSetVersionsResponse.nextToken,
            logger: logger
        )
    }

    /// Search image sets based on defined input attributes.   SearchImageSets accepts a single search query parameter and returns a paginated response of all image sets that have the matching criteria. All date range queries must be input as (lowerBound, upperBound). By default, SearchImageSets uses the updatedAt field for sorting  in descending order from newest to oldest.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func searchImageSetsPaginator(
        _ input: SearchImageSetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<SearchImageSetsRequest, SearchImageSetsResponse> {
        return .init(
            input: input,
            command: self.searchImageSets,
            inputKey: \SearchImageSetsRequest.nextToken,
            outputKey: \SearchImageSetsResponse.nextToken,
            logger: logger
        )
    }
}

extension MedicalImaging.ListDICOMImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MedicalImaging.ListDICOMImportJobsRequest {
        return .init(
            datastoreId: self.datastoreId,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MedicalImaging.ListDatastoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MedicalImaging.ListDatastoresRequest {
        return .init(
            datastoreStatus: self.datastoreStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MedicalImaging.ListImageSetVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MedicalImaging.ListImageSetVersionsRequest {
        return .init(
            datastoreId: self.datastoreId,
            imageSetId: self.imageSetId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MedicalImaging.SearchImageSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MedicalImaging.SearchImageSetsRequest {
        return .init(
            datastoreId: self.datastoreId,
            maxResults: self.maxResults,
            nextToken: token,
            searchCriteria: self.searchCriteria
        )
    }
}
