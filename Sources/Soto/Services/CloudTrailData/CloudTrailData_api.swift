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

/// Service object for interacting with AWS CloudTrailData service.
///
/// The CloudTrail Data Service lets you ingest events into CloudTrail from any source in your
/// hybrid environments, such as in-house or SaaS applications hosted on-premises or in the cloud,
/// virtual machines, or containers. You can store, access, analyze, troubleshoot and take action on
/// this data without maintaining multiple log aggregators and reporting tools. After you run
/// PutAuditEvents to ingest your application activity into CloudTrail, you can use CloudTrail Lake to search, query, and analyze the data that is logged
/// from your applications.
public struct CloudTrailData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudTrailData client
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
            serviceName: "CloudTrailData",
            serviceIdentifier: "cloudtrail-data",
            serviceProtocol: .restjson,
            apiVersion: "2021-08-11",
            endpoint: endpoint,
            errorType: CloudTrailDataErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Ingests your application events into CloudTrail Lake. A required parameter, auditEvents, accepts the JSON records (also called payload) of events that you want CloudTrail to ingest. You can add up to 100 of these events (or up to 1 MB) per PutAuditEvents request.
    @Sendable
    public func putAuditEvents(_ input: PutAuditEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAuditEventsResponse {
        return try await self.client.execute(
            operation: "PutAuditEvents", 
            path: "/PutAuditEvents", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CloudTrailData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudTrailData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
