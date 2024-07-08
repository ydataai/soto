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

/// Service object for interacting with AWS Panorama service.
///
/// AWS Panorama  Overview  This is the AWS Panorama API Reference. For an introduction to the service, see What is AWS Panorama? in the AWS Panorama Developer Guide.
public struct Panorama: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Panorama client
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
            serviceName: "Panorama",
            serviceIdentifier: "panorama",
            serviceProtocol: .restjson,
            apiVersion: "2019-07-24",
            endpoint: endpoint,
            errorType: PanoramaErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates an application instance and deploys it to a device.
    @Sendable
    public func createApplicationInstance(_ input: CreateApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationInstanceResponse {
        return try await self.client.execute(
            operation: "CreateApplicationInstance", 
            path: "/application-instances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a job to run on a device. A job can update a device's software or reboot it.
    @Sendable
    public func createJobForDevices(_ input: CreateJobForDevicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobForDevicesResponse {
        return try await self.client.execute(
            operation: "CreateJobForDevices", 
            path: "/jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a camera stream node.
    @Sendable
    public func createNodeFromTemplateJob(_ input: CreateNodeFromTemplateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateNodeFromTemplateJobResponse {
        return try await self.client.execute(
            operation: "CreateNodeFromTemplateJob", 
            path: "/packages/template-job", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a package and storage location in an Amazon S3 access point.
    @Sendable
    public func createPackage(_ input: CreatePackageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePackageResponse {
        return try await self.client.execute(
            operation: "CreatePackage", 
            path: "/packages", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports a node package.
    @Sendable
    public func createPackageImportJob(_ input: CreatePackageImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePackageImportJobResponse {
        return try await self.client.execute(
            operation: "CreatePackageImportJob", 
            path: "/packages/import-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a device.
    @Sendable
    public func deleteDevice(_ input: DeleteDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDeviceResponse {
        return try await self.client.execute(
            operation: "DeleteDevice", 
            path: "/devices/{DeviceId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a package.  To delete a package, you need permission to call s3:DeleteObject in addition to permissions for the AWS Panorama API.
    @Sendable
    public func deletePackage(_ input: DeletePackageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePackageResponse {
        return try await self.client.execute(
            operation: "DeletePackage", 
            path: "/packages/{PackageId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deregisters a package version.
    @Sendable
    public func deregisterPackageVersion(_ input: DeregisterPackageVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeregisterPackageVersionResponse {
        return try await self.client.execute(
            operation: "DeregisterPackageVersion", 
            path: "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about an application instance on a device.
    @Sendable
    public func describeApplicationInstance(_ input: DescribeApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeApplicationInstanceResponse {
        return try await self.client.execute(
            operation: "DescribeApplicationInstance", 
            path: "/application-instances/{ApplicationInstanceId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about an application instance's configuration manifest.
    @Sendable
    public func describeApplicationInstanceDetails(_ input: DescribeApplicationInstanceDetailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeApplicationInstanceDetailsResponse {
        return try await self.client.execute(
            operation: "DescribeApplicationInstanceDetails", 
            path: "/application-instances/{ApplicationInstanceId}/details", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a device.
    @Sendable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDeviceResponse {
        return try await self.client.execute(
            operation: "DescribeDevice", 
            path: "/devices/{DeviceId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a device job.
    @Sendable
    public func describeDeviceJob(_ input: DescribeDeviceJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDeviceJobResponse {
        return try await self.client.execute(
            operation: "DescribeDeviceJob", 
            path: "/jobs/{JobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a node.
    @Sendable
    public func describeNode(_ input: DescribeNodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeNodeResponse {
        return try await self.client.execute(
            operation: "DescribeNode", 
            path: "/nodes/{NodeId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a job to create a camera stream node.
    @Sendable
    public func describeNodeFromTemplateJob(_ input: DescribeNodeFromTemplateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeNodeFromTemplateJobResponse {
        return try await self.client.execute(
            operation: "DescribeNodeFromTemplateJob", 
            path: "/packages/template-job/{JobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a package.
    @Sendable
    public func describePackage(_ input: DescribePackageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribePackageResponse {
        return try await self.client.execute(
            operation: "DescribePackage", 
            path: "/packages/metadata/{PackageId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a package import job.
    @Sendable
    public func describePackageImportJob(_ input: DescribePackageImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribePackageImportJobResponse {
        return try await self.client.execute(
            operation: "DescribePackageImportJob", 
            path: "/packages/import-jobs/{JobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a package version.
    @Sendable
    public func describePackageVersion(_ input: DescribePackageVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribePackageVersionResponse {
        return try await self.client.execute(
            operation: "DescribePackageVersion", 
            path: "/packages/metadata/{PackageId}/versions/{PackageVersion}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of application instance dependencies.
    @Sendable
    public func listApplicationInstanceDependencies(_ input: ListApplicationInstanceDependenciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationInstanceDependenciesResponse {
        return try await self.client.execute(
            operation: "ListApplicationInstanceDependencies", 
            path: "/application-instances/{ApplicationInstanceId}/package-dependencies", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of application node instances.
    @Sendable
    public func listApplicationInstanceNodeInstances(_ input: ListApplicationInstanceNodeInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationInstanceNodeInstancesResponse {
        return try await self.client.execute(
            operation: "ListApplicationInstanceNodeInstances", 
            path: "/application-instances/{ApplicationInstanceId}/node-instances", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of application instances.
    @Sendable
    public func listApplicationInstances(_ input: ListApplicationInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationInstancesResponse {
        return try await self.client.execute(
            operation: "ListApplicationInstances", 
            path: "/application-instances", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of devices.
    @Sendable
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevicesResponse {
        return try await self.client.execute(
            operation: "ListDevices", 
            path: "/devices", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of jobs.
    @Sendable
    public func listDevicesJobs(_ input: ListDevicesJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevicesJobsResponse {
        return try await self.client.execute(
            operation: "ListDevicesJobs", 
            path: "/jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of camera stream node jobs.
    @Sendable
    public func listNodeFromTemplateJobs(_ input: ListNodeFromTemplateJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNodeFromTemplateJobsResponse {
        return try await self.client.execute(
            operation: "ListNodeFromTemplateJobs", 
            path: "/packages/template-job", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of nodes.
    @Sendable
    public func listNodes(_ input: ListNodesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNodesResponse {
        return try await self.client.execute(
            operation: "ListNodes", 
            path: "/nodes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of package import jobs.
    @Sendable
    public func listPackageImportJobs(_ input: ListPackageImportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPackageImportJobsResponse {
        return try await self.client.execute(
            operation: "ListPackageImportJobs", 
            path: "/packages/import-jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of packages.
    @Sendable
    public func listPackages(_ input: ListPackagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPackagesResponse {
        return try await self.client.execute(
            operation: "ListPackages", 
            path: "/packages", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of tags for a resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Name the configuration archive certificates-omni_device-name.zip and transfer it to the device within 5 minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.
    @Sendable
    public func provisionDevice(_ input: ProvisionDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProvisionDeviceResponse {
        return try await self.client.execute(
            operation: "ProvisionDevice", 
            path: "/devices", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers a package version.
    @Sendable
    public func registerPackageVersion(_ input: RegisterPackageVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterPackageVersionResponse {
        return try await self.client.execute(
            operation: "RegisterPackageVersion", 
            path: "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes an application instance.
    @Sendable
    public func removeApplicationInstance(_ input: RemoveApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveApplicationInstanceResponse {
        return try await self.client.execute(
            operation: "RemoveApplicationInstance", 
            path: "/application-instances/{ApplicationInstanceId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Signal camera nodes to stop or resume.
    @Sendable
    public func signalApplicationInstanceNodeInstances(_ input: SignalApplicationInstanceNodeInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SignalApplicationInstanceNodeInstancesResponse {
        return try await self.client.execute(
            operation: "SignalApplicationInstanceNodeInstances", 
            path: "/application-instances/{ApplicationInstanceId}/node-signals", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags a resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from a resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a device's metadata.
    @Sendable
    public func updateDeviceMetadata(_ input: UpdateDeviceMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDeviceMetadataResponse {
        return try await self.client.execute(
            operation: "UpdateDeviceMetadata", 
            path: "/devices/{DeviceId}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Panorama {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Panorama, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Panorama {
    /// Returns a list of application instance dependencies.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationInstanceDependenciesPaginator(
        _ input: ListApplicationInstanceDependenciesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationInstanceDependenciesRequest, ListApplicationInstanceDependenciesResponse> {
        return .init(
            input: input,
            command: self.listApplicationInstanceDependencies,
            inputKey: \ListApplicationInstanceDependenciesRequest.nextToken,
            outputKey: \ListApplicationInstanceDependenciesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of application node instances.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationInstanceNodeInstancesPaginator(
        _ input: ListApplicationInstanceNodeInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationInstanceNodeInstancesRequest, ListApplicationInstanceNodeInstancesResponse> {
        return .init(
            input: input,
            command: self.listApplicationInstanceNodeInstances,
            inputKey: \ListApplicationInstanceNodeInstancesRequest.nextToken,
            outputKey: \ListApplicationInstanceNodeInstancesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of application instances.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationInstancesPaginator(
        _ input: ListApplicationInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationInstancesRequest, ListApplicationInstancesResponse> {
        return .init(
            input: input,
            command: self.listApplicationInstances,
            inputKey: \ListApplicationInstancesRequest.nextToken,
            outputKey: \ListApplicationInstancesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of devices.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDevicesRequest, ListDevicesResponse> {
        return .init(
            input: input,
            command: self.listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDevicesJobsPaginator(
        _ input: ListDevicesJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDevicesJobsRequest, ListDevicesJobsResponse> {
        return .init(
            input: input,
            command: self.listDevicesJobs,
            inputKey: \ListDevicesJobsRequest.nextToken,
            outputKey: \ListDevicesJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of camera stream node jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNodeFromTemplateJobsPaginator(
        _ input: ListNodeFromTemplateJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNodeFromTemplateJobsRequest, ListNodeFromTemplateJobsResponse> {
        return .init(
            input: input,
            command: self.listNodeFromTemplateJobs,
            inputKey: \ListNodeFromTemplateJobsRequest.nextToken,
            outputKey: \ListNodeFromTemplateJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of nodes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNodesPaginator(
        _ input: ListNodesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNodesRequest, ListNodesResponse> {
        return .init(
            input: input,
            command: self.listNodes,
            inputKey: \ListNodesRequest.nextToken,
            outputKey: \ListNodesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of package import jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPackageImportJobsPaginator(
        _ input: ListPackageImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPackageImportJobsRequest, ListPackageImportJobsResponse> {
        return .init(
            input: input,
            command: self.listPackageImportJobs,
            inputKey: \ListPackageImportJobsRequest.nextToken,
            outputKey: \ListPackageImportJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of packages.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPackagesPaginator(
        _ input: ListPackagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPackagesRequest, ListPackagesResponse> {
        return .init(
            input: input,
            command: self.listPackages,
            inputKey: \ListPackagesRequest.nextToken,
            outputKey: \ListPackagesResponse.nextToken,
            logger: logger
        )
    }
}

extension Panorama.ListApplicationInstanceDependenciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListApplicationInstanceDependenciesRequest {
        return .init(
            applicationInstanceId: self.applicationInstanceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Panorama.ListApplicationInstanceNodeInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListApplicationInstanceNodeInstancesRequest {
        return .init(
            applicationInstanceId: self.applicationInstanceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Panorama.ListApplicationInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListApplicationInstancesRequest {
        return .init(
            deviceId: self.deviceId,
            maxResults: self.maxResults,
            nextToken: token,
            statusFilter: self.statusFilter
        )
    }
}

extension Panorama.ListDevicesJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListDevicesJobsRequest {
        return .init(
            deviceId: self.deviceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Panorama.ListDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListDevicesRequest {
        return .init(
            deviceAggregatedStatusFilter: self.deviceAggregatedStatusFilter,
            maxResults: self.maxResults,
            nameFilter: self.nameFilter,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

extension Panorama.ListNodeFromTemplateJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListNodeFromTemplateJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Panorama.ListNodesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListNodesRequest {
        return .init(
            category: self.category,
            maxResults: self.maxResults,
            nextToken: token,
            ownerAccount: self.ownerAccount,
            packageName: self.packageName,
            packageVersion: self.packageVersion,
            patchVersion: self.patchVersion
        )
    }
}

extension Panorama.ListPackageImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListPackageImportJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Panorama.ListPackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Panorama.ListPackagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
