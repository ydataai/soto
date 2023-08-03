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

/// Service object for interacting with AWS SMS service.
///
///   Product update  We recommend Amazon Web Services Application Migration Service (Amazon Web Services MGN) as the primary migration service for lift-and-shift migrations. If Amazon Web Services MGN is unavailable in a specific Amazon Web Services Region, you can use the Server Migration Service APIs through March 2023.  Server Migration Service (Server Migration Service) makes it easier and faster for you to migrate your on-premises workloads to Amazon Web Services. To learn more about Server Migration Service, see the following  resources:    Server Migration Service product page     Server Migration Service User Guide
public struct SMS: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SMS client
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
            amzTarget: "AWSServerMigrationService_V2016_10_24",
            serviceName: "SMS",
            serviceIdentifier: "sms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-24",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SMSErrorType.self,
            xmlNamespace: "http://ec2.amazon.com/servermigration/2016-10-24/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "sms-fips.us-east-1.amazonaws.com",
            "us-east-2": "sms-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "sms-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "sms-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "sms-fips.us-west-1.amazonaws.com",
            "us-west-2": "sms-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    @Sendable
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAppResponse {
        return try await self.client.execute(
            operation: "CreateApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a replication job. The replication job schedules periodic replication runs to replicate your server to Amazon Web Services. Each replication run creates an Amazon Machine Image (AMI).
    @Sendable
    public func createReplicationJob(_ input: CreateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateReplicationJobResponse {
        return try await self.client.execute(
            operation: "CreateReplicationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified application. Optionally deletes the launched stack associated with the application and all Server Migration Service replication jobs for servers in the application.
    @Sendable
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAppResponse {
        return try await self.client.execute(
            operation: "DeleteApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the launch configuration for the specified application.
    @Sendable
    public func deleteAppLaunchConfiguration(_ input: DeleteAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAppLaunchConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteAppLaunchConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the replication configuration for the specified application.
    @Sendable
    public func deleteAppReplicationConfiguration(_ input: DeleteAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAppReplicationConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteAppReplicationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the validation configuration for the specified application.
    @Sendable
    public func deleteAppValidationConfiguration(_ input: DeleteAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAppValidationConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteAppValidationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified replication job. After you delete a replication job, there are no further replication runs. Amazon Web Services deletes the contents of the Amazon S3 bucket used to store Server Migration Service artifacts. The AMIs created by the replication runs are not deleted.
    @Sendable
    public func deleteReplicationJob(_ input: DeleteReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteReplicationJobResponse {
        return try await self.client.execute(
            operation: "DeleteReplicationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes all servers from your server catalog.
    @Sendable
    public func deleteServerCatalog(_ input: DeleteServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteServerCatalogResponse {
        return try await self.client.execute(
            operation: "DeleteServerCatalog", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates the specified connector from Server Migration Service. After you disassociate a connector, it is no longer available to support replication jobs.
    @Sendable
    public func disassociateConnector(_ input: DisassociateConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateConnectorResponse {
        return try await self.client.execute(
            operation: "DisassociateConnector", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    @Sendable
    public func generateChangeSet(_ input: GenerateChangeSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GenerateChangeSetResponse {
        return try await self.client.execute(
            operation: "GenerateChangeSet", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates an CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    @Sendable
    public func generateTemplate(_ input: GenerateTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GenerateTemplateResponse {
        return try await self.client.execute(
            operation: "GenerateTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve information about the specified application.
    @Sendable
    public func getApp(_ input: GetAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppResponse {
        return try await self.client.execute(
            operation: "GetApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the application launch configuration associated with the specified application.
    @Sendable
    public func getAppLaunchConfiguration(_ input: GetAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppLaunchConfigurationResponse {
        return try await self.client.execute(
            operation: "GetAppLaunchConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the application replication configuration associated with the specified application.
    @Sendable
    public func getAppReplicationConfiguration(_ input: GetAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppReplicationConfigurationResponse {
        return try await self.client.execute(
            operation: "GetAppReplicationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about a configuration for validating an application.
    @Sendable
    public func getAppValidationConfiguration(_ input: GetAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppValidationConfigurationResponse {
        return try await self.client.execute(
            operation: "GetAppValidationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves output from validating an application.
    @Sendable
    public func getAppValidationOutput(_ input: GetAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppValidationOutputResponse {
        return try await self.client.execute(
            operation: "GetAppValidationOutput", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the connectors registered with the Server Migration Service.
    @Sendable
    public func getConnectors(_ input: GetConnectorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetConnectorsResponse {
        return try await self.client.execute(
            operation: "GetConnectors", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified replication job or all of your replication jobs.
    @Sendable
    public func getReplicationJobs(_ input: GetReplicationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetReplicationJobsResponse {
        return try await self.client.execute(
            operation: "GetReplicationJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the replication runs for the specified replication job.
    @Sendable
    public func getReplicationRuns(_ input: GetReplicationRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetReplicationRunsResponse {
        return try await self.client.execute(
            operation: "GetReplicationRuns", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    @Sendable
    public func getServers(_ input: GetServersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServersResponse {
        return try await self.client.execute(
            operation: "GetServers", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Allows application import from Migration Hub.
    @Sendable
    public func importAppCatalog(_ input: ImportAppCatalogRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportAppCatalogResponse {
        return try await self.client.execute(
            operation: "ImportAppCatalog", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    @Sendable
    public func importServerCatalog(_ input: ImportServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportServerCatalogResponse {
        return try await self.client.execute(
            operation: "ImportServerCatalog", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Launches the specified application as a stack in CloudFormation.
    @Sendable
    public func launchApp(_ input: LaunchAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> LaunchAppResponse {
        return try await self.client.execute(
            operation: "LaunchApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves summaries for all applications.
    @Sendable
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAppsResponse {
        return try await self.client.execute(
            operation: "ListApps", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information to Server Migration Service about whether application validation is successful.
    @Sendable
    public func notifyAppValidationOutput(_ input: NotifyAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> NotifyAppValidationOutputResponse {
        return try await self.client.execute(
            operation: "NotifyAppValidationOutput", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates the launch configuration for the specified application.
    @Sendable
    public func putAppLaunchConfiguration(_ input: PutAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAppLaunchConfigurationResponse {
        return try await self.client.execute(
            operation: "PutAppLaunchConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates the replication configuration for the specified application.
    @Sendable
    public func putAppReplicationConfiguration(_ input: PutAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAppReplicationConfigurationResponse {
        return try await self.client.execute(
            operation: "PutAppReplicationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates a validation configuration for the specified application.
    @Sendable
    public func putAppValidationConfiguration(_ input: PutAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAppValidationConfigurationResponse {
        return try await self.client.execute(
            operation: "PutAppValidationConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts replicating the specified application by creating replication jobs for each server in the application.
    @Sendable
    public func startAppReplication(_ input: StartAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartAppReplicationResponse {
        return try await self.client.execute(
            operation: "StartAppReplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an on-demand replication run for the specified application.
    @Sendable
    public func startOnDemandAppReplication(_ input: StartOnDemandAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartOnDemandAppReplicationResponse {
        return try await self.client.execute(
            operation: "StartOnDemandAppReplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    @Sendable
    public func startOnDemandReplicationRun(_ input: StartOnDemandReplicationRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartOnDemandReplicationRunResponse {
        return try await self.client.execute(
            operation: "StartOnDemandReplicationRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops replicating the specified application by deleting the replication job for each server in the application.
    @Sendable
    public func stopAppReplication(_ input: StopAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopAppReplicationResponse {
        return try await self.client.execute(
            operation: "StopAppReplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Terminates the stack for the specified application.
    @Sendable
    public func terminateApp(_ input: TerminateAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TerminateAppResponse {
        return try await self.client.execute(
            operation: "TerminateApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified application.
    @Sendable
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAppResponse {
        return try await self.client.execute(
            operation: "UpdateApp", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified settings for the specified replication job.
    @Sendable
    public func updateReplicationJob(_ input: UpdateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateReplicationJobResponse {
        return try await self.client.execute(
            operation: "UpdateReplicationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SMS {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SMS, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SMS {
    /// Describes the connectors registered with the Server Migration Service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getConnectorsPaginator(
        _ input: GetConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetConnectorsRequest, GetConnectorsResponse> {
        return .init(
            input: input,
            command: self.getConnectors,
            inputKey: \GetConnectorsRequest.nextToken,
            outputKey: \GetConnectorsResponse.nextToken,
            logger: logger
        )
    }

    /// Describes the specified replication job or all of your replication jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getReplicationJobsPaginator(
        _ input: GetReplicationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetReplicationJobsRequest, GetReplicationJobsResponse> {
        return .init(
            input: input,
            command: self.getReplicationJobs,
            inputKey: \GetReplicationJobsRequest.nextToken,
            outputKey: \GetReplicationJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Describes the replication runs for the specified replication job.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getReplicationRunsPaginator(
        _ input: GetReplicationRunsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetReplicationRunsRequest, GetReplicationRunsResponse> {
        return .init(
            input: input,
            command: self.getReplicationRuns,
            inputKey: \GetReplicationRunsRequest.nextToken,
            outputKey: \GetReplicationRunsResponse.nextToken,
            logger: logger
        )
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getServersPaginator(
        _ input: GetServersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetServersRequest, GetServersResponse> {
        return .init(
            input: input,
            command: self.getServers,
            inputKey: \GetServersRequest.nextToken,
            outputKey: \GetServersResponse.nextToken,
            logger: logger
        )
    }
}

extension SMS.GetConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetConnectorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SMS.GetReplicationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )
    }
}

extension SMS.GetReplicationRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationRunsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )
    }
}

extension SMS.GetServersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetServersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            vmServerAddressList: self.vmServerAddressList
        )
    }
}
