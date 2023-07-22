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

/// Service object for interacting with AWS Pricing service.
///
/// Amazon Web Services Price List API is a centralized and convenient way to programmatically query Amazon Web Services for services, products, and pricing information. The Amazon Web Services Price List uses standardized product attributes such as Location, Storage Class, and Operating System, and provides prices at the SKU level. You can use the Amazon Web Services Price List to build cost control and scenario planning tools, reconcile billing data, forecast future spend for budgeting purposes, and provide cost benefit analysis that compare your internal workloads with Amazon Web Services. Use GetServices without a service code to retrieve the service codes for all AWS services, then  GetServices with a service code to retrieve the attribute names for  that service. After you have the service code and attribute names, you can use GetAttributeValues to see what values are available for an attribute. With the service code and an attribute name and value,  you can use GetProducts to find specific products that you're interested in, such as  an AmazonEC2 instance, with a Provisioned IOPS volumeType. Service Endpoint Amazon Web Services Price List service API provides the following two endpoints:   https://api.pricing.us-east-1.amazonaws.com   https://api.pricing.ap-south-1.amazonaws.com
public struct Pricing: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Pricing client
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
            amzTarget: "AWSPriceListService",
            service: "api.pricing",
            signingName: "pricing",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-15",
            endpoint: endpoint,
            errorType: PricingErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to  that service, such as the attribute  names available for that service. For example, some of the attribute names available for EC2 are  volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    @Sendable
    public func describeServices(_ input: DescribeServicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeServicesResponse {
        return try await self.client.execute(
            operation: "DescribeServices", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of attribute values. Attributes are similar to the details  in a Price List API offer file. For a list of available attributes, see  Offer File Definitions in the Billing and Cost Management User Guide.
    @Sendable
    public func getAttributeValues(_ input: GetAttributeValuesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAttributeValuesResponse {
        return try await self.client.execute(
            operation: "GetAttributeValues", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///   This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the Amazon Web Services Service Terms (Section 1.10).   This returns the URL that you can retrieve your Price List file from. This URL is based on the PriceListArn and FileFormat that you retrieve from the  ListPriceLists response.
    @Sendable
    public func getPriceListFileUrl(_ input: GetPriceListFileUrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPriceListFileUrlResponse {
        return try await self.client.execute(
            operation: "GetPriceListFileUrl", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all products that match the filter criteria.
    @Sendable
    public func getProducts(_ input: GetProductsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProductsResponse {
        return try await self.client.execute(
            operation: "GetProducts", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///   This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the Amazon Web Services Service Terms (Section 1.10).   This returns a list of Price List references that the requester if authorized to view, given a ServiceCode, CurrencyCode, and an EffectiveDate. Use without a RegionCode filter to list Price List references from all available Amazon Web Services Regions. Use with a RegionCode filter to get the Price List reference that's specific to a specific Amazon Web Services Region. You can use the PriceListArn from the response to get your preferred Price List files through the  GetPriceListFileUrl API.
    @Sendable
    public func listPriceLists(_ input: ListPriceListsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPriceListsResponse {
        return try await self.client.execute(
            operation: "ListPriceLists", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Pricing {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Pricing, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Pricing {
    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to  that service, such as the attribute  names available for that service. For example, some of the attribute names available for EC2 are  volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeServicesPaginator(
        _ input: DescribeServicesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeServicesRequest, DescribeServicesResponse> {
        return .init(
            input: input,
            command: self.describeServices,
            inputKey: \DescribeServicesRequest.nextToken,
            outputKey: \DescribeServicesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of attribute values. Attributes are similar to the details  in a Price List API offer file. For a list of available attributes, see  Offer File Definitions in the Billing and Cost Management User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getAttributeValuesPaginator(
        _ input: GetAttributeValuesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetAttributeValuesRequest, GetAttributeValuesResponse> {
        return .init(
            input: input,
            command: self.getAttributeValues,
            inputKey: \GetAttributeValuesRequest.nextToken,
            outputKey: \GetAttributeValuesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of all products that match the filter criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getProductsPaginator(
        _ input: GetProductsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetProductsRequest, GetProductsResponse> {
        return .init(
            input: input,
            command: self.getProducts,
            inputKey: \GetProductsRequest.nextToken,
            outputKey: \GetProductsResponse.nextToken,
            logger: logger
        )
    }

    ///   This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the Amazon Web Services Service Terms (Section 1.10).   This returns a list of Price List references that the requester if authorized to view, given a ServiceCode, CurrencyCode, and an EffectiveDate. Use without a RegionCode filter to list Price List references from all available Amazon Web Services Regions. Use with a RegionCode filter to get the Price List reference that's specific to a specific Amazon Web Services Region. You can use the PriceListArn from the response to get your preferred Price List files through the  GetPriceListFileUrl API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPriceListsPaginator(
        _ input: ListPriceListsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPriceListsRequest, ListPriceListsResponse> {
        return .init(
            input: input,
            command: self.listPriceLists,
            inputKey: \ListPriceListsRequest.nextToken,
            outputKey: \ListPriceListsResponse.nextToken,
            logger: logger
        )
    }
}

extension Pricing.DescribeServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.DescribeServicesRequest {
        return .init(
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension Pricing.GetAttributeValuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetAttributeValuesRequest {
        return .init(
            attributeName: self.attributeName,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension Pricing.GetProductsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetProductsRequest {
        return .init(
            filters: self.filters,
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension Pricing.ListPriceListsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.ListPriceListsRequest {
        return .init(
            currencyCode: self.currencyCode,
            effectiveDate: self.effectiveDate,
            maxResults: self.maxResults,
            nextToken: token,
            regionCode: self.regionCode,
            serviceCode: self.serviceCode
        )
    }
}
