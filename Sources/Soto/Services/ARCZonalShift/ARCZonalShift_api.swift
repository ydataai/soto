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

/// Service object for interacting with AWS ARCZonalShift service.
///
/// This is the API Reference Guide for the zonal shift feature of Amazon Route 53 Application Recovery Controller. This guide is for developers who need detailed information about
/// 			zonal shift API actions, data types, and errors.
/// 		       Zonal shift is in preview release for Amazon Route 53 Application Recovery Controller and is subject to change.
/// 		       Zonal shift in Route 53 ARC enables you to move traffic for a load balancer resource away from an Availability Zone. Starting
/// 			a zonal shift helps your application recover immediately, for example, from a developer's bad code deployment
/// 			or from an AWS infrastructure failure in a single Availability Zone, reducing the impact and time lost from an issue
/// 			in one zone.
/// 		       Supported AWS resources are automatically registered with Route 53 ARC. Resources that are registered for zonal shifts
/// 			in Route 53 ARC are managed resources in Route 53 ARC. You can start a zonal shift for any managed resource in your account in a Region.
/// 			At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
/// 		       Zonal shifts are temporary. You must specify an expiration when you start a zonal shift, of up to three days initially.
/// 			If you want to still keep traffic away from an Availability Zone, you can update the zonal shift and set a new expiration.
/// 			You can also cancel a zonal shift, before it expires, for example, if you're ready to restore traffic to the Availability Zone.
/// 		       For more information about using zonal shift, see the
/// 			Amazon Route 53 Application Recovery Controller Developer Guide.
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
            service: "arc-zonal-shift",
            serviceProtocol: .restjson,
            apiVersion: "2022-10-30",
            endpoint: endpoint,
            errorType: ARCZonalShiftErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancel a zonal shift in Amazon Route 53 Application Recovery Controller that you've started for a resource in your AWS account in an AWS Region.
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

    /// Get information about a resource that's been registered for zonal shifts with Amazon Route 53 Application Recovery Controller in this AWS Region. Resources that are registered for 		zonal shifts are managed resources in Route 53 ARC. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
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

    /// Lists all the resources in your AWS account in this AWS Region that are managed for zonal shifts in Amazon Route 53 Application Recovery Controller, and information  		about them. The information includes their Amazon Resource Names (ARNs), the Availability Zones the resources are deployed in, and  		the resource name.
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

    /// Lists all the active zonal shifts in Amazon Route 53 Application Recovery Controller in your AWS account in this AWS Region.
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

    /// You start a zonal shift to temporarily move load balancer traffic away from an Availability Zone in a AWS Region, 		to help your application recover immediately, for example, from a developer's bad code deployment or from an AWS  		infrastructure failure in a single Availability Zone. You can start a zonal shift in Route 53 ARC only for managed 		resources in your account in an AWS Region. Resources are automatically registered with Route 53 ARC by AWS services. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off. 	     When you start a zonal shift, traffic for the resource is no longer routed to the Availability Zone. The 		zonal shift is created immediately in Route 53 ARC. However, it can take a short time, typically up to a few minutes, 		for existing, in-progress connections in the Availability Zone to complete. 	     For more information, see Zonal shift 		in the Amazon Route 53 Application Recovery Controller Developer Guide.
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

    /// Update an active zonal shift in Amazon Route 53 Application Recovery Controller in your AWS account. You can update a zonal shift to set a new expiration, or  	edit or replace the comment for the zonal shift.
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
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ARCZonalShift, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ARCZonalShift {
    /// Lists all the resources in your AWS account in this AWS Region that are managed for zonal shifts in Amazon Route 53 Application Recovery Controller, and information  		about them. The information includes their Amazon Resource Names (ARNs), the Availability Zones the resources are deployed in, and  		the resource name.
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

    /// Lists all the active zonal shifts in Amazon Route 53 Application Recovery Controller in your AWS account in this AWS Region.
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
            status: self.status
        )
    }
}
