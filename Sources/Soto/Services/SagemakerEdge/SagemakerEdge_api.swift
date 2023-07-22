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

/// Service object for interacting with AWS SagemakerEdge service.
///
/// SageMaker Edge Manager dataplane service for communicating with active agents.
public struct SagemakerEdge: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SagemakerEdge client
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
            service: "edge.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2020-09-23",
            endpoint: endpoint,
            errorType: SagemakerEdgeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Use to get the active deployments from a device.
    @Sendable
    public func getDeployments(_ input: GetDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDeploymentsResult {
        return try await self.client.execute(
            operation: "GetDeployments", 
            path: "/GetDeployments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use to check if a device is registered with SageMaker Edge Manager.
    @Sendable
    public func getDeviceRegistration(_ input: GetDeviceRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDeviceRegistrationResult {
        return try await self.client.execute(
            operation: "GetDeviceRegistration", 
            path: "/GetDeviceRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use to get the current status of devices registered on SageMaker Edge Manager.
    @Sendable
    public func sendHeartbeat(_ input: SendHeartbeatRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "SendHeartbeat", 
            path: "/SendHeartbeat", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SagemakerEdge {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SagemakerEdge, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
