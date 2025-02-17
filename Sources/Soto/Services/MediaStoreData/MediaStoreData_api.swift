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

/// Service object for interacting with AWS MediaStoreData service.
///
/// An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.
public struct MediaStoreData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaStoreData client
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
            serviceName: "MediaStoreData",
            serviceIdentifier: "data.mediastore",
            signingName: "mediastore",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-01",
            endpoint: endpoint,
            errorType: MediaStoreDataErrorType.self,
            xmlNamespace: "https://object.mediastore.amazonaws.com/doc/2017-09-01",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Deletes an object at the specified path.
    @Sendable
    public func deleteObject(_ input: DeleteObjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteObjectResponse {
        return try await self.client.execute(
            operation: "DeleteObject", 
            path: "/{Path+}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the headers for an object at the specified path.
    @Sendable
    public func describeObject(_ input: DescribeObjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeObjectResponse {
        return try await self.client.execute(
            operation: "DescribeObject", 
            path: "/{Path+}", 
            httpMethod: .HEAD, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    @Sendable
    public func getObject(_ input: GetObjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetObjectResponse {
        return try await self.client.execute(
            operation: "GetObject", 
            path: "/{Path+}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a list of metadata entries about folders and objects in the specified folder.
    @Sendable
    public func listItems(_ input: ListItemsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListItemsResponse {
        return try await self.client.execute(
            operation: "ListItems", 
            path: "/", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    @Sendable
    public func putObject(_ input: PutObjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutObjectResponse {
        return try await self.client.execute(
            operation: "PutObject", 
            path: "/{Path+}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension MediaStoreData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaStoreData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaStoreData {
    /// Provides a list of metadata entries about folders and objects in the specified folder.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listItemsPaginator(
        _ input: ListItemsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListItemsRequest, ListItemsResponse> {
        return .init(
            input: input,
            command: self.listItems,
            inputKey: \ListItemsRequest.nextToken,
            outputKey: \ListItemsResponse.nextToken,
            logger: logger
        )
    }
}

extension MediaStoreData.ListItemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaStoreData.ListItemsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            path: self.path
        )
    }
}
