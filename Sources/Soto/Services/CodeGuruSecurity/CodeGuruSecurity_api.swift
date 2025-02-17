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

/// Service object for interacting with AWS CodeGuruSecurity service.
///
///  Amazon CodeGuru Security is in preview release and is subject to change.  This section provides documentation for the Amazon CodeGuru Security API operations. CodeGuru Security is a service that uses program analysis and machine learning to detect security policy violations and vulnerabilities, and recommends ways to address these security risks. By proactively detecting and providing recommendations for addressing security risks, CodeGuru Security improves the overall security of your application code. For more information about CodeGuru Security, see the  Amazon CodeGuru Security User Guide.
public struct CodeGuruSecurity: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeGuruSecurity client
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
            serviceName: "CodeGuruSecurity",
            serviceIdentifier: "codeguru-security",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: CodeGuruSecurityErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Returns a list of requested findings from standard scans.
    @Sendable
    public func batchGetFindings(_ input: BatchGetFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchGetFindingsResponse {
        return try await self.client.execute(
            operation: "BatchGetFindings", 
            path: "/batchGetFindings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use to create a scan using code uploaded to an Amazon S3 bucket.
    @Sendable
    public func createScan(_ input: CreateScanRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateScanResponse {
        return try await self.client.execute(
            operation: "CreateScan", 
            path: "/scans", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates a pre-signed URL, request headers used to upload a code resource, and code artifact identifier for the uploaded resource. You can upload your code resource to the URL with the request headers using any HTTP client.
    @Sendable
    public func createUploadUrl(_ input: CreateUploadUrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateUploadUrlResponse {
        return try await self.client.execute(
            operation: "CreateUploadUrl", 
            path: "/uploadUrl", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use to get the encryption configuration for an account.
    @Sendable
    public func getAccountConfiguration(_ input: GetAccountConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccountConfigurationResponse {
        return try await self.client.execute(
            operation: "GetAccountConfiguration", 
            path: "/accountConfiguration/get", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all findings generated by a particular scan.
    @Sendable
    public func getFindings(_ input: GetFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFindingsResponse {
        return try await self.client.execute(
            operation: "GetFindings", 
            path: "/findings/{scanName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a summary of metrics for an account from a specified date, including number of open findings, the categories with most findings, the scans with most open findings, and scans with most open critical findings.
    @Sendable
    public func getMetricsSummary(_ input: GetMetricsSummaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMetricsSummaryResponse {
        return try await self.client.execute(
            operation: "GetMetricsSummary", 
            path: "/metrics/summary", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns details about a scan, including whether or not a scan has completed.
    @Sendable
    public func getScan(_ input: GetScanRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetScanResponse {
        return try await self.client.execute(
            operation: "GetScan", 
            path: "/scans/{scanName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns metrics about all findings in an account within a specified time range.
    @Sendable
    public func listFindingsMetrics(_ input: ListFindingsMetricsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFindingsMetricsResponse {
        return try await self.client.execute(
            operation: "ListFindingsMetrics", 
            path: "/metrics/findings", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all scans in an account. Does not return EXPRESS scans.
    @Sendable
    public func listScans(_ input: ListScansRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListScansResponse {
        return try await self.client.execute(
            operation: "ListScans", 
            path: "/scans", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all tags associated with a scan.
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

    /// Use to add one or more tags to an existing scan.
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

    /// Use to remove one or more tags from an existing scan.
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

    /// Use to update the encryption configuration for an account.
    @Sendable
    public func updateAccountConfiguration(_ input: UpdateAccountConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAccountConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateAccountConfiguration", 
            path: "/updateAccountConfiguration", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CodeGuruSecurity {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeGuruSecurity, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeGuruSecurity {
    /// Returns a list of all findings generated by a particular scan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getFindingsPaginator(
        _ input: GetFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetFindingsRequest, GetFindingsResponse> {
        return .init(
            input: input,
            command: self.getFindings,
            inputKey: \GetFindingsRequest.nextToken,
            outputKey: \GetFindingsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns metrics about all findings in an account within a specified time range.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFindingsMetricsPaginator(
        _ input: ListFindingsMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFindingsMetricsRequest, ListFindingsMetricsResponse> {
        return .init(
            input: input,
            command: self.listFindingsMetrics,
            inputKey: \ListFindingsMetricsRequest.nextToken,
            outputKey: \ListFindingsMetricsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of all scans in an account. Does not return EXPRESS scans.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listScansPaginator(
        _ input: ListScansRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListScansRequest, ListScansResponse> {
        return .init(
            input: input,
            command: self.listScans,
            inputKey: \ListScansRequest.nextToken,
            outputKey: \ListScansResponse.nextToken,
            logger: logger
        )
    }
}

extension CodeGuruSecurity.GetFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruSecurity.GetFindingsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            scanName: self.scanName,
            status: self.status
        )
    }
}

extension CodeGuruSecurity.ListFindingsMetricsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruSecurity.ListFindingsMetricsRequest {
        return .init(
            endDate: self.endDate,
            maxResults: self.maxResults,
            nextToken: token,
            startDate: self.startDate
        )
    }
}

extension CodeGuruSecurity.ListScansRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruSecurity.ListScansRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
