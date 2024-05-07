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

/// Service object for interacting with AWS ServiceDiscovery service.
///
/// Cloud Map With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance becomes available, you can call the Cloud Map API to register the instance with Cloud Map. For public or private DNS namespaces, Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records.
public struct ServiceDiscovery: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ServiceDiscovery client
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
            amzTarget: "Route53AutoNaming_v20170314",
            serviceName: "ServiceDiscovery",
            serviceIdentifier: "servicediscovery",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-14",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ServiceDiscoveryErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.dualstack]: .init(endpoints: [
            "af-south-1": "servicediscovery.af-south-1.api.aws",
            "ap-east-1": "servicediscovery.ap-east-1.api.aws",
            "ap-northeast-1": "servicediscovery.ap-northeast-1.api.aws",
            "ap-northeast-2": "servicediscovery.ap-northeast-2.api.aws",
            "ap-northeast-3": "servicediscovery.ap-northeast-3.api.aws",
            "ap-south-1": "servicediscovery.ap-south-1.api.aws",
            "ap-south-2": "servicediscovery.ap-south-2.api.aws",
            "ap-southeast-1": "servicediscovery.ap-southeast-1.api.aws",
            "ap-southeast-2": "servicediscovery.ap-southeast-2.api.aws",
            "ap-southeast-3": "servicediscovery.ap-southeast-3.api.aws",
            "ap-southeast-4": "servicediscovery.ap-southeast-4.api.aws",
            "ca-central-1": "servicediscovery.ca-central-1.api.aws",
            "ca-west-1": "servicediscovery.ca-west-1.api.aws",
            "cn-north-1": "servicediscovery.cn-north-1.api.amazonwebservices.com.cn",
            "cn-northwest-1": "servicediscovery.cn-northwest-1.api.amazonwebservices.com.cn",
            "eu-central-1": "servicediscovery.eu-central-1.api.aws",
            "eu-central-2": "servicediscovery.eu-central-2.api.aws",
            "eu-north-1": "servicediscovery.eu-north-1.api.aws",
            "eu-south-1": "servicediscovery.eu-south-1.api.aws",
            "eu-south-2": "servicediscovery.eu-south-2.api.aws",
            "eu-west-1": "servicediscovery.eu-west-1.api.aws",
            "eu-west-2": "servicediscovery.eu-west-2.api.aws",
            "eu-west-3": "servicediscovery.eu-west-3.api.aws",
            "il-central-1": "servicediscovery.il-central-1.api.aws",
            "me-central-1": "servicediscovery.me-central-1.api.aws",
            "me-south-1": "servicediscovery.me-south-1.api.aws",
            "sa-east-1": "servicediscovery.sa-east-1.api.aws",
            "us-east-1": "servicediscovery.us-east-1.api.aws",
            "us-east-2": "servicediscovery.us-east-2.api.aws",
            "us-gov-east-1": "servicediscovery.us-gov-east-1.api.aws",
            "us-gov-west-1": "servicediscovery.us-gov-west-1.api.aws",
            "us-west-1": "servicediscovery.us-west-1.api.aws",
            "us-west-2": "servicediscovery.us-west-2.api.aws"
        ]),
        [.dualstack, .fips]: .init(endpoints: [
            "ca-central-1": "servicediscovery-fips.ca-central-1.api.aws",
            "ca-west-1": "servicediscovery-fips.ca-west-1.api.aws",
            "us-east-1": "servicediscovery-fips.us-east-1.api.aws",
            "us-east-2": "servicediscovery-fips.us-east-2.api.aws",
            "us-gov-east-1": "servicediscovery-fips.us-gov-east-1.api.aws",
            "us-gov-west-1": "servicediscovery-fips.us-gov-west-1.api.aws",
            "us-west-1": "servicediscovery-fips.us-west-1.api.aws",
            "us-west-2": "servicediscovery-fips.us-west-2.api.aws"
        ]),
        [.fips]: .init(endpoints: [
            "ca-central-1": "servicediscovery-fips.ca-central-1.amazonaws.com",
            "ca-west-1": "servicediscovery-fips.ca-west-1.amazonaws.com",
            "us-east-1": "servicediscovery-fips.us-east-1.amazonaws.com",
            "us-east-2": "servicediscovery-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "servicediscovery-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "servicediscovery-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "servicediscovery-fips.us-west-1.amazonaws.com",
            "us-west-2": "servicediscovery-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see Cloud Map quotas in the Cloud Map Developer Guide.
    @Sendable
    public func createHttpNamespace(_ input: CreateHttpNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHttpNamespaceResponse {
        return try await self.client.execute(
            operation: "CreateHttpNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. Service instances that are registered using a private DNS namespace can be discovered using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see Cloud Map quotas in the Cloud Map Developer Guide.
    @Sendable
    public func createPrivateDnsNamespace(_ input: CreatePrivateDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePrivateDnsNamespaceResponse {
        return try await self.client.execute(
            operation: "CreatePrivateDnsNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. You can discover instances that were registered with a public DNS namespace by using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see Cloud Map quotas in the Cloud Map Developer Guide.  The CreatePublicDnsNamespace API operation is not supported in the Amazon Web Services GovCloud (US) Regions.
    @Sendable
    public func createPublicDnsNamespace(_ input: CreatePublicDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePublicDnsNamespaceResponse {
        return try await self.client.execute(
            operation: "CreatePublicDnsNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a service. This action defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:    A     AAAA     A and AAAA     SRV     CNAME      Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and Cloud Map uses the values in the configuration to create the specified entities. For the current quota on the number of instances that you can register using the same namespace and using the same service, see Cloud Map quotas in the Cloud Map Developer Guide.
    @Sendable
    public func createService(_ input: CreateServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateServiceResponse {
        return try await self.client.execute(
            operation: "CreateService", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.
    @Sendable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteNamespaceResponse {
        return try await self.client.execute(
            operation: "DeleteNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a specified service. If the service still contains one or more registered instances, the request fails.
    @Sendable
    public func deleteService(_ input: DeleteServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteServiceResponse {
        return try await self.client.execute(
            operation: "DeleteService", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified instance.
    @Sendable
    public func deregisterInstance(_ input: DeregisterInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeregisterInstanceResponse {
        return try await self.client.execute(
            operation: "DeregisterInstance", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Discovers registered instances for a specified namespace and service. You can use DiscoverInstances to discover instances for any type of namespace. DiscoverInstances returns a randomized list of instances allowing customers to distribute traffic evenly across instances. For public and private DNS namespaces, you can also use DNS queries to discover instances.
    @Sendable
    public func discoverInstances(_ input: DiscoverInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DiscoverInstancesResponse {
        return try await self.client.execute(
            operation: "DiscoverInstances", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "data-", 
            logger: logger
        )
    }

    /// Discovers the increasing revision associated with an instance.
    @Sendable
    public func discoverInstancesRevision(_ input: DiscoverInstancesRevisionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DiscoverInstancesRevisionResponse {
        return try await self.client.execute(
            operation: "DiscoverInstancesRevision", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "data-", 
            logger: logger
        )
    }

    /// Gets information about a specified instance.
    @Sendable
    public func getInstance(_ input: GetInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetInstanceResponse {
        return try await self.client.execute(
            operation: "GetInstance", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There's a brief delay between when you register an instance and when the health status for the instance is available.
    @Sendable
    public func getInstancesHealthStatus(_ input: GetInstancesHealthStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetInstancesHealthStatusResponse {
        return try await self.client.execute(
            operation: "GetInstancesHealthStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about a namespace.
    @Sendable
    public func getNamespace(_ input: GetNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetNamespaceResponse {
        return try await self.client.execute(
            operation: "GetNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about any operation that returns an operation ID in the response, such as a CreateHttpNamespace request.  To get a list of operations that match specified criteria, see ListOperations.
    @Sendable
    public func getOperation(_ input: GetOperationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetOperationResponse {
        return try await self.client.execute(
            operation: "GetOperation", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the settings for a specified service.
    @Sendable
    public func getService(_ input: GetServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServiceResponse {
        return try await self.client.execute(
            operation: "GetService", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists summary information about the instances that you registered by using a specified service.
    @Sendable
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListInstancesResponse {
        return try await self.client.execute(
            operation: "ListInstances", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists summary information about the namespaces that were created by the current Amazon Web Services account.
    @Sendable
    public func listNamespaces(_ input: ListNamespacesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNamespacesResponse {
        return try await self.client.execute(
            operation: "ListNamespaces", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists operations that match the criteria that you specify.
    @Sendable
    public func listOperations(_ input: ListOperationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListOperationsResponse {
        return try await self.client.execute(
            operation: "ListOperations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists summary information for all the services that are associated with one or more namespaces.
    @Sendable
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServicesResponse {
        return try await self.client.execute(
            operation: "ListServices", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists tags for the specified resource.
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

    /// Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that's specified by ServiceId, a record is created or updated in the hosted zone that's associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current quota on the number of instances that you can register using the same namespace and using the same service, see Cloud Map quotas in the Cloud Map Developer Guide.
    @Sendable
    public func registerInstance(_ input: RegisterInstanceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterInstanceResponse {
        return try await self.client.execute(
            operation: "RegisterInstance", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds one or more tags to the specified resource.
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

    /// Removes one or more tags from the specified resource.
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

    /// Updates an HTTP namespace.
    @Sendable
    public func updateHttpNamespace(_ input: UpdateHttpNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateHttpNamespaceResponse {
        return try await self.client.execute(
            operation: "UpdateHttpNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.
    @Sendable
    public func updateInstanceCustomHealthStatus(_ input: UpdateInstanceCustomHealthStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UpdateInstanceCustomHealthStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a private DNS namespace.
    @Sendable
    public func updatePrivateDnsNamespace(_ input: UpdatePrivateDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePrivateDnsNamespaceResponse {
        return try await self.client.execute(
            operation: "UpdatePrivateDnsNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a public DNS namespace.
    @Sendable
    public func updatePublicDnsNamespace(_ input: UpdatePublicDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePublicDnsNamespaceResponse {
        return try await self.client.execute(
            operation: "UpdatePublicDnsNamespace", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Submits a request to perform the following operations:   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service  You can't add, update, or delete a HealthCheckCustomConfig configuration.    For public and private DNS namespaces, note the following:   If you omit any existing DnsRecords or HealthCheckConfig configurations from an UpdateService request, the configurations are deleted from the service.   If you omit an existing HealthCheckCustomConfig configuration from an UpdateService request, the configuration isn't deleted from the service.   When you update settings for a service, Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
    @Sendable
    public func updateService(_ input: UpdateServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateServiceResponse {
        return try await self.client.execute(
            operation: "UpdateService", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ServiceDiscovery {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ServiceDiscovery, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ServiceDiscovery {
    /// Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There's a brief delay between when you register an instance and when the health status for the instance is available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getInstancesHealthStatusPaginator(
        _ input: GetInstancesHealthStatusRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetInstancesHealthStatusRequest, GetInstancesHealthStatusResponse> {
        return .init(
            input: input,
            command: self.getInstancesHealthStatus,
            inputKey: \GetInstancesHealthStatusRequest.nextToken,
            outputKey: \GetInstancesHealthStatusResponse.nextToken,
            logger: logger
        )
    }

    /// Lists summary information about the instances that you registered by using a specified service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: self.listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists summary information about the namespaces that were created by the current Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNamespacesPaginator(
        _ input: ListNamespacesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNamespacesRequest, ListNamespacesResponse> {
        return .init(
            input: input,
            command: self.listNamespaces,
            inputKey: \ListNamespacesRequest.nextToken,
            outputKey: \ListNamespacesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists operations that match the criteria that you specify.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListOperationsRequest, ListOperationsResponse> {
        return .init(
            input: input,
            command: self.listOperations,
            inputKey: \ListOperationsRequest.nextToken,
            outputKey: \ListOperationsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists summary information for all the services that are associated with one or more namespaces.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: self.listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger
        )
    }
}

extension ServiceDiscovery.GetInstancesHealthStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceDiscovery.GetInstancesHealthStatusRequest {
        return .init(
            instances: self.instances,
            maxResults: self.maxResults,
            nextToken: token,
            serviceId: self.serviceId
        )
    }
}

extension ServiceDiscovery.ListInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceDiscovery.ListInstancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceId: self.serviceId
        )
    }
}

extension ServiceDiscovery.ListNamespacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceDiscovery.ListNamespacesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceDiscovery.ListOperationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceDiscovery.ListOperationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceDiscovery.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceDiscovery.ListServicesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
