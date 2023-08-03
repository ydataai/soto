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

/// Service object for interacting with AWS HealthLake service.
///
/// Amazon HealthLake is a HIPAA eligibile service that allows customers to store, transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.
public struct HealthLake: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the HealthLake client
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
            amzTarget: "HealthLake",
            serviceName: "HealthLake",
            serviceIdentifier: "healthlake",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            errorType: HealthLakeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a Data Store that can ingest and export FHIR formatted data.
    @Sendable
    public func createFHIRDatastore(_ input: CreateFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFHIRDatastoreResponse {
        return try await self.client.execute(
            operation: "CreateFHIRDatastore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Data Store.
    @Sendable
    public func deleteFHIRDatastore(_ input: DeleteFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteFHIRDatastoreResponse {
        return try await self.client.execute(
            operation: "DeleteFHIRDatastore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the properties associated with the FHIR Data Store, including the Data Store ID, Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and Data Store endpoint.
    @Sendable
    public func describeFHIRDatastore(_ input: DescribeFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFHIRDatastoreResponse {
        return try await self.client.execute(
            operation: "DescribeFHIRDatastore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.
    @Sendable
    public func describeFHIRExportJob(_ input: DescribeFHIRExportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFHIRExportJobResponse {
        return try await self.client.execute(
            operation: "DescribeFHIRExportJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job.
    @Sendable
    public func describeFHIRImportJob(_ input: DescribeFHIRImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFHIRImportJobResponse {
        return try await self.client.execute(
            operation: "DescribeFHIRImportJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    @Sendable
    public func listFHIRDatastores(_ input: ListFHIRDatastoresRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFHIRDatastoresResponse {
        return try await self.client.execute(
            operation: "ListFHIRDatastores", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all FHIR export jobs associated with an account and their statuses.
    @Sendable
    public func listFHIRExportJobs(_ input: ListFHIRExportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFHIRExportJobsResponse {
        return try await self.client.execute(
            operation: "ListFHIRExportJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all FHIR import jobs associated with an account and their statuses.
    @Sendable
    public func listFHIRImportJobs(_ input: ListFHIRImportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFHIRImportJobsResponse {
        return try await self.client.execute(
            operation: "ListFHIRImportJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns a list of all existing tags associated with a Data Store.
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

    /// Begins a FHIR export job.
    @Sendable
    public func startFHIRExportJob(_ input: StartFHIRExportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartFHIRExportJobResponse {
        return try await self.client.execute(
            operation: "StartFHIRExportJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Begins a FHIR Import job.
    @Sendable
    public func startFHIRImportJob(_ input: StartFHIRImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartFHIRImportJobResponse {
        return try await self.client.execute(
            operation: "StartFHIRImportJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Adds a user specified key and value tag to a Data Store.
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

    ///  Removes tags from a Data Store.
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

extension HealthLake {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: HealthLake, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension HealthLake {
    /// Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFHIRDatastoresPaginator(
        _ input: ListFHIRDatastoresRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFHIRDatastoresRequest, ListFHIRDatastoresResponse> {
        return .init(
            input: input,
            command: self.listFHIRDatastores,
            inputKey: \ListFHIRDatastoresRequest.nextToken,
            outputKey: \ListFHIRDatastoresResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all FHIR export jobs associated with an account and their statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFHIRExportJobsPaginator(
        _ input: ListFHIRExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFHIRExportJobsRequest, ListFHIRExportJobsResponse> {
        return .init(
            input: input,
            command: self.listFHIRExportJobs,
            inputKey: \ListFHIRExportJobsRequest.nextToken,
            outputKey: \ListFHIRExportJobsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all FHIR import jobs associated with an account and their statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFHIRImportJobsPaginator(
        _ input: ListFHIRImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFHIRImportJobsRequest, ListFHIRImportJobsResponse> {
        return .init(
            input: input,
            command: self.listFHIRImportJobs,
            inputKey: \ListFHIRImportJobsRequest.nextToken,
            outputKey: \ListFHIRImportJobsResponse.nextToken,
            logger: logger
        )
    }
}

extension HealthLake.ListFHIRDatastoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRDatastoresRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension HealthLake.ListFHIRExportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRExportJobsRequest {
        return .init(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )
    }
}

extension HealthLake.ListFHIRImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRImportJobsRequest {
        return .init(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )
    }
}
