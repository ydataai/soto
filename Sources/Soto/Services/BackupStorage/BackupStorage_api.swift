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

/// Service object for interacting with AWS BackupStorage service.
///
/// The frontend service for Cryo Storage.
public struct BackupStorage: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the BackupStorage client
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
            serviceName: "BackupStorage",
            serviceIdentifier: "backupstorage",
            signingName: "backup-storage",
            serviceProtocol: .restjson,
            apiVersion: "2018-04-10",
            endpoint: endpoint,
            errorType: BackupStorageErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Delete Object from the incremental base Backup.
    @Sendable
    public func deleteObject(_ input: DeleteObjectInput, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteObject", 
            path: "/backup-jobs/{BackupJobId}/object/{ObjectName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the specified object's chunk.
    @Sendable
    public func getChunk(_ input: GetChunkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetChunkOutput {
        return try await self.client.execute(
            operation: "GetChunk", 
            path: "/restore-jobs/{StorageJobId}/chunk/{ChunkToken}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get metadata associated with an Object.
    @Sendable
    public func getObjectMetadata(_ input: GetObjectMetadataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetObjectMetadataOutput {
        return try await self.client.execute(
            operation: "GetObjectMetadata", 
            path: "/restore-jobs/{StorageJobId}/object/{ObjectToken}/metadata", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List chunks in a given Object
    @Sendable
    public func listChunks(_ input: ListChunksInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListChunksOutput {
        return try await self.client.execute(
            operation: "ListChunks", 
            path: "/restore-jobs/{StorageJobId}/chunks/{ObjectToken}/list", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List all Objects in a given Backup.
    @Sendable
    public func listObjects(_ input: ListObjectsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListObjectsOutput {
        return try await self.client.execute(
            operation: "ListObjects", 
            path: "/restore-jobs/{StorageJobId}/objects/list", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Complete upload
    @Sendable
    public func notifyObjectComplete(_ input: NotifyObjectCompleteInput, logger: Logger = AWSClient.loggingDisabled) async throws -> NotifyObjectCompleteOutput {
        return try await self.client.execute(
            operation: "NotifyObjectComplete", 
            path: "/backup-jobs/{BackupJobId}/object/{UploadId}/complete", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Upload chunk.
    @Sendable
    public func putChunk(_ input: PutChunkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutChunkOutput {
        return try await self.client.execute(
            operation: "PutChunk", 
            path: "/backup-jobs/{BackupJobId}/chunk/{UploadId}/{ChunkIndex}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Upload object that can store object metadata String and data blob in single API call using inline chunk field.
    @Sendable
    public func putObject(_ input: PutObjectInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutObjectOutput {
        return try await self.client.execute(
            operation: "PutObject", 
            path: "/backup-jobs/{BackupJobId}/object/{ObjectName}/put-object", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Start upload containing one or many chunks.
    @Sendable
    public func startObject(_ input: StartObjectInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StartObjectOutput {
        return try await self.client.execute(
            operation: "StartObject", 
            path: "/backup-jobs/{BackupJobId}/object/{ObjectName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension BackupStorage {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: BackupStorage, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension BackupStorage {
    /// List chunks in a given Object
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listChunksPaginator(
        _ input: ListChunksInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListChunksInput, ListChunksOutput> {
        return .init(
            input: input,
            command: self.listChunks,
            inputKey: \ListChunksInput.nextToken,
            outputKey: \ListChunksOutput.nextToken,
            logger: logger
        )
    }

    /// List all Objects in a given Backup.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listObjectsPaginator(
        _ input: ListObjectsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListObjectsInput, ListObjectsOutput> {
        return .init(
            input: input,
            command: self.listObjects,
            inputKey: \ListObjectsInput.nextToken,
            outputKey: \ListObjectsOutput.nextToken,
            logger: logger
        )
    }
}

extension BackupStorage.ListChunksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> BackupStorage.ListChunksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            objectToken: self.objectToken,
            storageJobId: self.storageJobId
        )
    }
}

extension BackupStorage.ListObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> BackupStorage.ListObjectsInput {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token,
            startingObjectName: self.startingObjectName,
            startingObjectPrefix: self.startingObjectPrefix,
            storageJobId: self.storageJobId
        )
    }
}
