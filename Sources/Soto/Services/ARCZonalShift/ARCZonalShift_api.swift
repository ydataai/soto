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

/// Service object for interacting with AWS ARCZonalShift service.
///
/// Welcome to the Zonal Shift API Reference Guide for Amazon Route 53 Application Recovery Controller (Route 53 ARC). You can start a zonal shift to move traffic for a load balancer resource away from an Availability Zone to
/// 			help your application recover quickly from an impairment in an Availability Zone. For example,
/// 			you can recover your application from a developer's bad code deployment or from an
/// 			Amazon Web Services infrastructure failure in a single Availability Zone. You can also configure zonal autoshift for a load balancer resource. Zonal autoshift
/// 			is a capability in Route 53 ARC where Amazon Web Services shifts away application resource
/// 			traffic from an Availability Zone, on your behalf, to help reduce your time to recovery during events.
/// 			Amazon Web Services shifts away traffic for resources that are enabled for zonal autoshift whenever Amazon Web Services
/// 			determines that there's an issue in the Availability Zone that could potentially affect
/// 			customers. To ensure that zonal autoshift is safe for your application, you must
/// 			also configure practice runs when you enable zonal autoshift for a resource. Practice runs start
/// 			weekly zonal shifts for a resource, to shift
/// 			traffic for the resource out of an Availability Zone. Practice runs make sure, on a regular basis,
/// 			that you have enough capacity in all the Availability Zones in an Amazon Web Services Region
/// 			for your application to continue to operate normally
/// 			when traffic for a resource is shifted away from one Availability Zone.  You must prescale resource capacity in all Availability Zones in the Region
/// 			where your application is deployed, before you configure practice runs or enable zonal autoshift
/// 			for a resource. You should not rely on scaling on demand when an autoshift or practice run
/// 			starts.   For more information about using zonal shift and zonal autoshift, see the
/// 			Amazon Route 53 Application Recovery Controller
/// 				Developer Guide.
public struct ARCZonalShift: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ARCZonalShift client
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
            serviceName: "ARCZonalShift",
            serviceIdentifier: "arc-zonal-shift",
            serviceProtocol: .restjson,
            apiVersion: "2022-10-30",
            endpoint: endpoint,
            errorType: ARCZonalShiftErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Cancel a zonal shift in Amazon Route 53 Application Recovery Controller. To cancel the zonal shift, specify the zonal shift ID. A zonal shift can be one that you've started for a resource in your Amazon Web Services account  		in an Amazon Web Services Region, or it can be a zonal shift started by a practice run with zonal  		autoshift.
    @Sendable
    public func cancelZonalShift(_ input: CancelZonalShiftRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ZonalShift {
        return try await self.client.execute(
            operation: "CancelZonalShift", 
            path: "/zonalshifts/{zonalShiftId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A practice run configuration for zonal autoshift is required when you enable zonal autoshift.
    /// 			A practice run configuration includes specifications for blocked dates and blocked time windows,
    /// 		and for Amazon CloudWatch alarms that you create to use with practice runs. The alarms that you specify are an
    /// 			outcome alarm, to monitor application health during practice runs and,
    /// 			optionally, a blocking alarm, to block practice runs from starting. For more information, see
    ///
    /// 				Considerations when you configure zonal autoshift in the Amazon Route 53 Application Recovery Controller Developer Guide.
    @Sendable
    public func createPracticeRunConfiguration(_ input: CreatePracticeRunConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePracticeRunConfigurationResponse {
        return try await self.client.execute(
            operation: "CreatePracticeRunConfiguration", 
            path: "/configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the practice run configuration for a resource. Before you can delete
    /// 			a practice run configuration for a resource., you must disable zonal autoshift for
    /// 			the resource. Practice runs must be configured for zonal autoshift to be enabled.
    @Sendable
    public func deletePracticeRunConfiguration(_ input: DeletePracticeRunConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePracticeRunConfigurationResponse {
        return try await self.client.execute(
            operation: "DeletePracticeRunConfiguration", 
            path: "/configuration/{resourceIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get information about a resource that's been registered for zonal shifts with Amazon Route 53 Application Recovery Controller in this Amazon Web Services Region. Resources that are registered for 		zonal shifts are managed resources in Route 53 ARC. You can start zonal shifts and configure zonal autoshift for managed resources. At this time, you can only start a zonal shift or configure zonal autoshift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
    @Sendable
    public func getManagedResource(_ input: GetManagedResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetManagedResourceResponse {
        return try await self.client.execute(
            operation: "GetManagedResource", 
            path: "/managedresources/{resourceIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the active autoshifts for a specified resource.
    @Sendable
    public func listAutoshifts(_ input: ListAutoshiftsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAutoshiftsResponse {
        return try await self.client.execute(
            operation: "ListAutoshifts", 
            path: "/autoshifts", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the resources in your Amazon Web Services account in this Amazon Web Services Region that are managed for  		zonal shifts in Amazon Route 53 Application Recovery Controller, and information about them. The information includes the zonal autoshift status for the resource,  		as well as the Amazon Resource Name (ARN), the Availability Zones that each resource is deployed in, and  		the resource name.
    @Sendable
    public func listManagedResources(_ input: ListManagedResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListManagedResourcesResponse {
        return try await self.client.execute(
            operation: "ListManagedResources", 
            path: "/managedresources", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all active and completed zonal shifts in Amazon Route 53 Application Recovery Controller in your Amazon Web Services account in this Amazon Web Services Region. 		ListZonalShifts returns customer-started zonal shifts, as well as practice run zonal shifts that Route 53 ARC started on  		your behalf for zonal autoshift. The ListZonalShifts operation does not list autoshifts. For more information about listing 		autoshifts, see "&gt;ListAutoshifts.
    @Sendable
    public func listZonalShifts(_ input: ListZonalShiftsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListZonalShiftsResponse {
        return try await self.client.execute(
            operation: "ListZonalShifts", 
            path: "/zonalshifts", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// You start a zonal shift to temporarily move load balancer traffic away from an Availability Zone in an Amazon Web Services Region, 		to help your application recover immediately, for example, from a developer's bad code deployment or from an Amazon Web Services  		infrastructure failure in a single Availability Zone. You can start a zonal shift in Route 53 ARC only for managed 		resources in your Amazon Web Services account in an Amazon Web Services Region. Resources are automatically registered with Route 53 ARC  		by Amazon Web Services services. At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off. When you start a zonal shift, traffic for the resource is no longer routed to the Availability Zone. The 		zonal shift is created immediately in Route 53 ARC. However, it can take a short time, typically up to a few minutes, 		for existing, in-progress connections in the Availability Zone to complete. For more information, see Zonal shift 		in the Amazon Route 53 Application Recovery Controller Developer Guide.
    @Sendable
    public func startZonalShift(_ input: StartZonalShiftRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ZonalShift {
        return try await self.client.execute(
            operation: "StartZonalShift", 
            path: "/zonalshifts", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update a practice run configuration to change one or more of the following: add,
    /// 			change, or remove the blocking alarm; change the outcome alarm; or add, change,
    /// 			or remove blocking dates or time windows.
    @Sendable
    public func updatePracticeRunConfiguration(_ input: UpdatePracticeRunConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePracticeRunConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdatePracticeRunConfiguration", 
            path: "/configuration/{resourceIdentifier}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// You can update the zonal autoshift status for a resource, to enable or disable zonal
    /// 			autoshift. When zonal autoshift is ENABLED, Amazon Web Services shifts away
    /// 			resource traffic from an Availability Zone, on your behalf, when Amazon Web Services
    /// 			determines that there's an issue in the Availability Zone that could potentially affect customers.
    @Sendable
    public func updateZonalAutoshiftConfiguration(_ input: UpdateZonalAutoshiftConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateZonalAutoshiftConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateZonalAutoshiftConfiguration", 
            path: "/managedresources/{resourceIdentifier}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update an active zonal shift in Amazon Route 53 Application Recovery Controller in your Amazon Web Services account. You can update a zonal shift to set a new expiration, or  	edit or replace the comment for the zonal shift.
    @Sendable
    public func updateZonalShift(_ input: UpdateZonalShiftRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ZonalShift {
        return try await self.client.execute(
            operation: "UpdateZonalShift", 
            path: "/zonalshifts/{zonalShiftId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ARCZonalShift {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ARCZonalShift, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ARCZonalShift {
    /// Returns the active autoshifts for a specified resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAutoshiftsPaginator(
        _ input: ListAutoshiftsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAutoshiftsRequest, ListAutoshiftsResponse> {
        return .init(
            input: input,
            command: self.listAutoshifts,
            inputKey: \ListAutoshiftsRequest.nextToken,
            outputKey: \ListAutoshiftsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the resources in your Amazon Web Services account in this Amazon Web Services Region that are managed for  		zonal shifts in Amazon Route 53 Application Recovery Controller, and information about them. The information includes the zonal autoshift status for the resource,  		as well as the Amazon Resource Name (ARN), the Availability Zones that each resource is deployed in, and  		the resource name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listManagedResourcesPaginator(
        _ input: ListManagedResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListManagedResourcesRequest, ListManagedResourcesResponse> {
        return .init(
            input: input,
            command: self.listManagedResources,
            inputKey: \ListManagedResourcesRequest.nextToken,
            outputKey: \ListManagedResourcesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all active and completed zonal shifts in Amazon Route 53 Application Recovery Controller in your Amazon Web Services account in this Amazon Web Services Region. 		ListZonalShifts returns customer-started zonal shifts, as well as practice run zonal shifts that Route 53 ARC started on  		your behalf for zonal autoshift. The ListZonalShifts operation does not list autoshifts. For more information about listing 		autoshifts, see "&gt;ListAutoshifts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listZonalShiftsPaginator(
        _ input: ListZonalShiftsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListZonalShiftsRequest, ListZonalShiftsResponse> {
        return .init(
            input: input,
            command: self.listZonalShifts,
            inputKey: \ListZonalShiftsRequest.nextToken,
            outputKey: \ListZonalShiftsResponse.nextToken,
            logger: logger
        )
    }
}

extension ARCZonalShift.ListAutoshiftsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ARCZonalShift.ListAutoshiftsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension ARCZonalShift.ListManagedResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ARCZonalShift.ListManagedResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ARCZonalShift.ListZonalShiftsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ARCZonalShift.ListZonalShiftsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceIdentifier: self.resourceIdentifier,
            status: self.status
        )
    }
}
