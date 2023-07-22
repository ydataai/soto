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

/// Service object for interacting with AWS BackupGateway service.
///
/// Backup gateway Backup gateway connects Backup to your hypervisor, so you can create, store, and restore backups of your virtual machines (VMs) anywhere, whether on-premises or in the VMware Cloud (VMC) on Amazon Web Services. Add on-premises resources by connecting to a hypervisor through a gateway. Backup will automatically discover the resources in your hypervisor. Use Backup to assign virtual or on-premises resources to a backup plan, or run on-demand backups. Once you have backed up your resources, you can view them and restore them like any resource supported by Backup. To download the Amazon Web Services software to get started, navigate to the Backup console, choose Gateways, then choose Create gateway.
public struct BackupGateway: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the BackupGateway client
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
            amzTarget: "BackupOnPremises_v20210101",
            service: "backup-gateway",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-01-01",
            endpoint: endpoint,
            errorType: BackupGatewayErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates a backup gateway with your server. After you complete the association process, you can back up and restore your VMs through the gateway.
    @Sendable
    public func associateGatewayToServer(_ input: AssociateGatewayToServerInput, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateGatewayToServerOutput {
        return try await self.client.execute(
            operation: "AssociateGatewayToServer", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a backup gateway. After you create a gateway, you can associate it with a server using the AssociateGatewayToServer operation.
    @Sendable
    public func createGateway(_ input: CreateGatewayInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGatewayOutput {
        return try await self.client.execute(
            operation: "CreateGateway", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a backup gateway.
    @Sendable
    public func deleteGateway(_ input: DeleteGatewayInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGatewayOutput {
        return try await self.client.execute(
            operation: "DeleteGateway", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a hypervisor.
    @Sendable
    public func deleteHypervisor(_ input: DeleteHypervisorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHypervisorOutput {
        return try await self.client.execute(
            operation: "DeleteHypervisor", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates a backup gateway from the specified server. After the disassociation process finishes, the gateway can no longer access the virtual machines on the server.
    @Sendable
    public func disassociateGatewayFromServer(_ input: DisassociateGatewayFromServerInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateGatewayFromServerOutput {
        return try await self.client.execute(
            operation: "DisassociateGatewayFromServer", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the bandwidth rate limit schedule for a specified gateway.  By default, gateways do not have bandwidth rate limit schedules, which means  no bandwidth rate limiting is in effect. Use this to get a gateway's  bandwidth rate limit schedule.
    @Sendable
    public func getBandwidthRateLimitSchedule(_ input: GetBandwidthRateLimitScheduleInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBandwidthRateLimitScheduleOutput {
        return try await self.client.execute(
            operation: "GetBandwidthRateLimitSchedule", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// By providing the ARN (Amazon Resource Name), this API returns the gateway.
    @Sendable
    public func getGateway(_ input: GetGatewayInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGatewayOutput {
        return try await self.client.execute(
            operation: "GetGateway", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action requests information about the specified hypervisor to which the gateway will connect.  A hypervisor is hardware, software, or firmware that creates and manages virtual machines,  and allocates resources to them.
    @Sendable
    public func getHypervisor(_ input: GetHypervisorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetHypervisorOutput {
        return try await self.client.execute(
            operation: "GetHypervisor", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action retrieves the property mappings for the specified hypervisor.  A hypervisor property mapping displays the relationship of entity properties  available from the on-premises hypervisor to the properties available in Amazon Web Services.
    @Sendable
    public func getHypervisorPropertyMappings(_ input: GetHypervisorPropertyMappingsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetHypervisorPropertyMappingsOutput {
        return try await self.client.execute(
            operation: "GetHypervisorPropertyMappings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// By providing the ARN (Amazon Resource Name), this API returns the virtual machine.
    @Sendable
    public func getVirtualMachine(_ input: GetVirtualMachineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetVirtualMachineOutput {
        return try await self.client.execute(
            operation: "GetVirtualMachine", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Connect to a hypervisor by importing its configuration.
    @Sendable
    public func importHypervisorConfiguration(_ input: ImportHypervisorConfigurationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportHypervisorConfigurationOutput {
        return try await self.client.execute(
            operation: "ImportHypervisorConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region. The returned list is ordered by gateway Amazon Resource Name (ARN).
    @Sendable
    public func listGateways(_ input: ListGatewaysInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGatewaysOutput {
        return try await self.client.execute(
            operation: "ListGateways", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists your hypervisors.
    @Sendable
    public func listHypervisors(_ input: ListHypervisorsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHypervisorsOutput {
        return try await self.client.execute(
            operation: "ListHypervisors", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags applied to the resource identified by its Amazon Resource Name (ARN).
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists your virtual machines.
    @Sendable
    public func listVirtualMachines(_ input: ListVirtualMachinesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListVirtualMachinesOutput {
        return try await self.client.execute(
            operation: "ListVirtualMachines", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action sets the bandwidth rate limit schedule for a specified gateway.  By default, gateways do not have a bandwidth rate limit schedule, which means  no bandwidth rate limiting is in effect. Use this to initiate a   gateway's bandwidth rate limit schedule.
    @Sendable
    public func putBandwidthRateLimitSchedule(_ input: PutBandwidthRateLimitScheduleInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutBandwidthRateLimitScheduleOutput {
        return try await self.client.execute(
            operation: "PutBandwidthRateLimitSchedule", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action sets the property mappings for the specified hypervisor.  A hypervisor property mapping displays the relationship of entity properties  available from the on-premises hypervisor to the properties available in Amazon Web Services.
    @Sendable
    public func putHypervisorPropertyMappings(_ input: PutHypervisorPropertyMappingsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutHypervisorPropertyMappingsOutput {
        return try await self.client.execute(
            operation: "PutHypervisorPropertyMappings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Set the maintenance start time for a gateway.
    @Sendable
    public func putMaintenanceStartTime(_ input: PutMaintenanceStartTimeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutMaintenanceStartTimeOutput {
        return try await self.client.execute(
            operation: "PutMaintenanceStartTime", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action sends a request to sync metadata across the specified virtual machines.
    @Sendable
    public func startVirtualMachinesMetadataSync(_ input: StartVirtualMachinesMetadataSyncInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StartVirtualMachinesMetadataSyncOutput {
        return try await self.client.execute(
            operation: "StartVirtualMachinesMetadataSync", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tag the resource.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tests your hypervisor configuration to validate that backup gateway can connect with the hypervisor and its resources.
    @Sendable
    public func testHypervisorConfiguration(_ input: TestHypervisorConfigurationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TestHypervisorConfigurationOutput {
        return try await self.client.execute(
            operation: "TestHypervisorConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from the resource.
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a gateway's name. Specify which gateway to update using the Amazon Resource Name (ARN) of the gateway in your request.
    @Sendable
    public func updateGatewayInformation(_ input: UpdateGatewayInformationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateGatewayInformationOutput {
        return try await self.client.execute(
            operation: "UpdateGatewayInformation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the gateway virtual machine (VM) software.  The request immediately triggers the software update.  When you make this request, you get a 200 OK success response immediately. However, it might take some  time for the update to complete.
    @Sendable
    public func updateGatewaySoftwareNow(_ input: UpdateGatewaySoftwareNowInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateGatewaySoftwareNowOutput {
        return try await self.client.execute(
            operation: "UpdateGatewaySoftwareNow", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a hypervisor metadata, including its host, username, and password. Specify which hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in your request.
    @Sendable
    public func updateHypervisor(_ input: UpdateHypervisorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateHypervisorOutput {
        return try await self.client.execute(
            operation: "UpdateHypervisor", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension BackupGateway {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: BackupGateway, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
