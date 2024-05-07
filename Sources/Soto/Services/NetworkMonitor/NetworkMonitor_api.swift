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

/// Service object for interacting with AWS NetworkMonitor service.
///
/// Amazon CloudWatch Network Monitor is an Amazon Web Services active network monitoring service that identifies if a network issues exists within the Amazon Web Services network or your own company network.  Within Network Monitor you'll choose the source VPCs and subnets from the Amazon Web Services network in which you operate and then you'll choose the destination IP addresses from your on-premises network. From these sources and destinations, Network Monitor creates a monitor containing all the possible source and destination combinations, each of which is called a probe, within a single monitor. These probes then monitor network traffic to help you identify where network issues might be affecting your traffic. Before you begin, ensure the Amazon Web Services CLI is configured in the Amazon Web Services Account where you will create the Network Monitor resource. Network Monitor doesn’t support creation on cross-account resources, but you can create a Network Monitor in any subnet belonging to a VPC owned by your Account. For more information, see Using Amazon CloudWatch Network Monitor in the Amazon CloudWatch User Guide.
public struct NetworkMonitor: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the NetworkMonitor client
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
            serviceName: "NetworkMonitor",
            serviceIdentifier: "networkmonitor",
            serviceProtocol: .restjson,
            apiVersion: "2023-08-01",
            endpoint: endpoint,
            errorType: NetworkMonitorErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a monitor between a source subnet and destination IP address. Within a monitor you'll create one or more probes that monitor network traffic between your source Amazon Web Services VPC subnets and your destination IP addresses. Each probe then aggregates and sends metrics to Amazon CloudWatch. You can also create a monitor with probes using this command. For each probe, you define the following:    source—The subnet IDs where the probes will be created.    destination— The target destination IP address for the probe.    destinationPort—Required only if the protocol is TCP.    protocol—The communication protocol between the source and destination. This will be either TCP or ICMP.    packetSize—The size of the packets. This must be a number between 56 and 8500.   (Optional) tags —Key-value pairs created and assigned to the probe.
    @Sendable
    public func createMonitor(_ input: CreateMonitorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMonitorOutput {
        return try await self.client.execute(
            operation: "CreateMonitor", 
            path: "/monitors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create a probe within a monitor. Once you create a probe, and it begins monitoring your network traffic, you'll incur billing charges for that probe. This action requires the monitorName parameter. Run ListMonitors to get a list of monitor names. Note the name of the monitorName you want to create the probe for.
    @Sendable
    public func createProbe(_ input: CreateProbeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProbeOutput {
        return try await self.client.execute(
            operation: "CreateProbe", 
            path: "/monitors/{monitorName}/probes", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a specified monitor. This action requires the monitorName parameter. Run ListMonitors to get a list of monitor names.
    @Sendable
    public func deleteMonitor(_ input: DeleteMonitorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteMonitorOutput {
        return try await self.client.execute(
            operation: "DeleteMonitor", 
            path: "/monitors/{monitorName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified probe. Once a probe is deleted you'll no longer incur any billing fees for that probe. This action requires both the monitorName and probeId parameters. Run ListMonitors to get a list of monitor names. Run GetMonitor to get a list of probes and probe IDs. You can only delete a single probe at a time using this action.
    @Sendable
    public func deleteProbe(_ input: DeleteProbeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProbeOutput {
        return try await self.client.execute(
            operation: "DeleteProbe", 
            path: "/monitors/{monitorName}/probes/{probeId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns details about a specific monitor.  This action requires the monitorName parameter. Run ListMonitors to get a list of monitor names.
    @Sendable
    public func getMonitor(_ input: GetMonitorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMonitorOutput {
        return try await self.client.execute(
            operation: "GetMonitor", 
            path: "/monitors/{monitorName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details about a probe. This action requires both the monitorName and probeId parameters. Run ListMonitors to get a list of monitor names. Run GetMonitor to get a list of probes and probe IDs.
    @Sendable
    public func getProbe(_ input: GetProbeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProbeOutput {
        return try await self.client.execute(
            operation: "GetProbe", 
            path: "/monitors/{monitorName}/probes/{probeId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all of your monitors.
    @Sendable
    public func listMonitors(_ input: ListMonitorsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMonitorsOutput {
        return try await self.client.execute(
            operation: "ListMonitors", 
            path: "/monitors", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags assigned to this resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds key-value pairs to a monitor or probe.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a key-value pair from a monitor or probe.
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the aggregationPeriod for a monitor. Monitors support an aggregationPeriod of either 30 or 60 seconds. This action requires  the monitorName and probeId parameter. Run ListMonitors to get a list of monitor names.
    @Sendable
    public func updateMonitor(_ input: UpdateMonitorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateMonitorOutput {
        return try await self.client.execute(
            operation: "UpdateMonitor", 
            path: "/monitors/{monitorName}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a monitor probe. This action requires both the monitorName and probeId parameters. Run ListMonitors to get a list of monitor names. Run GetMonitor to get a list of probes and probe IDs.  You can update the following para create a monitor with probes using this command. For each probe, you define the following:    state—The state of the probe.    destination— The target destination IP address for the probe.    destinationPort—Required only if the protocol is TCP.    protocol—The communication protocol between the source and destination. This will be either TCP or ICMP.    packetSize—The size of the packets. This must be a number between 56 and 8500.   (Optional) tags —Key-value pairs created and assigned to the probe.
    @Sendable
    public func updateProbe(_ input: UpdateProbeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProbeOutput {
        return try await self.client.execute(
            operation: "UpdateProbe", 
            path: "/monitors/{monitorName}/probes/{probeId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension NetworkMonitor {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: NetworkMonitor, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NetworkMonitor {
    /// Returns a list of all of your monitors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMonitorsPaginator(
        _ input: ListMonitorsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMonitorsInput, ListMonitorsOutput> {
        return .init(
            input: input,
            command: self.listMonitors,
            inputKey: \ListMonitorsInput.nextToken,
            outputKey: \ListMonitorsOutput.nextToken,
            logger: logger
        )
    }
}

extension NetworkMonitor.ListMonitorsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkMonitor.ListMonitorsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            state: self.state
        )
    }
}
