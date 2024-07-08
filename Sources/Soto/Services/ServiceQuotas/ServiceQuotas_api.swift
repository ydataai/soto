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

/// Service object for interacting with AWS ServiceQuotas service.
///
/// With Service Quotas, you can view and manage your quotas easily as your Amazon Web Services workloads grow. Quotas, also referred to as limits, are the maximum number of resources that you can create in your Amazon Web Services account. For more information, see the Service Quotas User Guide.
public struct ServiceQuotas: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ServiceQuotas client
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
            amzTarget: "ServiceQuotasV20190624",
            serviceName: "ServiceQuotas",
            serviceIdentifier: "servicequotas",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-06-24",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ServiceQuotasErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-gov-east-1": "servicequotas.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "servicequotas.us-gov-west-1.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates your quota request template with your organization. When a new Amazon Web Services account is created in your organization, the quota increase requests in the template are automatically applied to the account. You can add a quota increase request for any adjustable quota to your template.
    @Sendable
    public func associateServiceQuotaTemplate(_ input: AssociateServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateServiceQuotaTemplateResponse {
        return try await self.client.execute(
            operation: "AssociateServiceQuotaTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the quota increase request for the specified quota from your quota request template.
    @Sendable
    public func deleteServiceQuotaIncreaseRequestFromTemplate(_ input: DeleteServiceQuotaIncreaseRequestFromTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteServiceQuotaIncreaseRequestFromTemplateResponse {
        return try await self.client.execute(
            operation: "DeleteServiceQuotaIncreaseRequestFromTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disables your quota request template. After a template is disabled, the quota increase requests in the template are not applied to new Amazon Web Services accounts in your organization. Disabling a quota request template does not apply its quota increase requests.
    @Sendable
    public func disassociateServiceQuotaTemplate(_ input: DisassociateServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateServiceQuotaTemplateResponse {
        return try await self.client.execute(
            operation: "DisassociateServiceQuotaTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the default value for the specified quota. The default value does not reflect any quota increases.
    @Sendable
    public func getAWSDefaultServiceQuota(_ input: GetAWSDefaultServiceQuotaRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAWSDefaultServiceQuotaResponse {
        return try await self.client.execute(
            operation: "GetAWSDefaultServiceQuota", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the status of the association for the quota request template.
    @Sendable
    public func getAssociationForServiceQuotaTemplate(_ input: GetAssociationForServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssociationForServiceQuotaTemplateResponse {
        return try await self.client.execute(
            operation: "GetAssociationForServiceQuotaTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the specified quota increase request.
    @Sendable
    public func getRequestedServiceQuotaChange(_ input: GetRequestedServiceQuotaChangeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRequestedServiceQuotaChangeResponse {
        return try await self.client.execute(
            operation: "GetRequestedServiceQuotaChange", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    @Sendable
    public func getServiceQuota(_ input: GetServiceQuotaRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServiceQuotaResponse {
        return try await self.client.execute(
            operation: "GetServiceQuota", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the specified quota increase request in your quota request template.
    @Sendable
    public func getServiceQuotaIncreaseRequestFromTemplate(_ input: GetServiceQuotaIncreaseRequestFromTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServiceQuotaIncreaseRequestFromTemplateResponse {
        return try await self.client.execute(
            operation: "GetServiceQuotaIncreaseRequestFromTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the default values for the quotas for the specified Amazon Web Service. A default value does not reflect any quota increases.
    @Sendable
    public func listAWSDefaultServiceQuotas(_ input: ListAWSDefaultServiceQuotasRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAWSDefaultServiceQuotasResponse {
        return try await self.client.execute(
            operation: "ListAWSDefaultServiceQuotas", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the quota increase requests for the specified Amazon Web Service.
    @Sendable
    public func listRequestedServiceQuotaChangeHistory(_ input: ListRequestedServiceQuotaChangeHistoryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRequestedServiceQuotaChangeHistoryResponse {
        return try await self.client.execute(
            operation: "ListRequestedServiceQuotaChangeHistory", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the quota increase requests for the specified quota.
    @Sendable
    public func listRequestedServiceQuotaChangeHistoryByQuota(_ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRequestedServiceQuotaChangeHistoryByQuotaResponse {
        return try await self.client.execute(
            operation: "ListRequestedServiceQuotaChangeHistoryByQuota", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the quota increase requests in the specified quota request template.
    @Sendable
    public func listServiceQuotaIncreaseRequestsInTemplate(_ input: ListServiceQuotaIncreaseRequestsInTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServiceQuotaIncreaseRequestsInTemplateResponse {
        return try await self.client.execute(
            operation: "ListServiceQuotaIncreaseRequestsInTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the applied quota values for the specified Amazon Web Service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    @Sendable
    public func listServiceQuotas(_ input: ListServiceQuotasRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServiceQuotasResponse {
        return try await self.client.execute(
            operation: "ListServiceQuotas", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the names and codes for the Amazon Web Services integrated with Service Quotas.
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

    /// Returns a list of the tags assigned to the specified applied quota.
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

    /// Adds a quota increase request to your quota request template.
    @Sendable
    public func putServiceQuotaIncreaseRequestIntoTemplate(_ input: PutServiceQuotaIncreaseRequestIntoTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutServiceQuotaIncreaseRequestIntoTemplateResponse {
        return try await self.client.execute(
            operation: "PutServiceQuotaIncreaseRequestIntoTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Submits a quota increase request for the specified quota.
    @Sendable
    public func requestServiceQuotaIncrease(_ input: RequestServiceQuotaIncreaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RequestServiceQuotaIncreaseResponse {
        return try await self.client.execute(
            operation: "RequestServiceQuotaIncrease", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds tags to the specified applied quota. You can include one or more tags to add to the quota.
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

    /// Removes tags from the specified applied quota. You can specify one or more tags to remove.
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
}

extension ServiceQuotas {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ServiceQuotas, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ServiceQuotas {
    /// Lists the default values for the quotas for the specified Amazon Web Service. A default value does not reflect any quota increases.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAWSDefaultServiceQuotasPaginator(
        _ input: ListAWSDefaultServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAWSDefaultServiceQuotasRequest, ListAWSDefaultServiceQuotasResponse> {
        return .init(
            input: input,
            command: self.listAWSDefaultServiceQuotas,
            inputKey: \ListAWSDefaultServiceQuotasRequest.nextToken,
            outputKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves the quota increase requests for the specified Amazon Web Service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRequestedServiceQuotaChangeHistoryPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequestedServiceQuotaChangeHistoryRequest, ListRequestedServiceQuotaChangeHistoryResponse> {
        return .init(
            input: input,
            command: self.listRequestedServiceQuotaChangeHistory,
            inputKey: \ListRequestedServiceQuotaChangeHistoryRequest.nextToken,
            outputKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves the quota increase requests for the specified quota.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequestedServiceQuotaChangeHistoryByQuotaRequest, ListRequestedServiceQuotaChangeHistoryByQuotaResponse> {
        return .init(
            input: input,
            command: self.listRequestedServiceQuotaChangeHistoryByQuota,
            inputKey: \ListRequestedServiceQuotaChangeHistoryByQuotaRequest.nextToken,
            outputKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the quota increase requests in the specified quota request template.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListServiceQuotaIncreaseRequestsInTemplateRequest, ListServiceQuotaIncreaseRequestsInTemplateResponse> {
        return .init(
            input: input,
            command: self.listServiceQuotaIncreaseRequestsInTemplate,
            inputKey: \ListServiceQuotaIncreaseRequestsInTemplateRequest.nextToken,
            outputKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the applied quota values for the specified Amazon Web Service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listServiceQuotasPaginator(
        _ input: ListServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListServiceQuotasRequest, ListServiceQuotasResponse> {
        return .init(
            input: input,
            command: self.listServiceQuotas,
            inputKey: \ListServiceQuotasRequest.nextToken,
            outputKey: \ListServiceQuotasResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the names and codes for the Amazon Web Services integrated with Service Quotas.
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

extension ServiceQuotas.ListAWSDefaultServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListAWSDefaultServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            quotaCode: self.quotaCode,
            quotaRequestedAtLevel: self.quotaRequestedAtLevel,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            quotaRequestedAtLevel: self.quotaRequestedAtLevel,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest {
        return .init(
            awsRegion: self.awsRegion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            quotaAppliedAtLevel: self.quotaAppliedAtLevel,
            quotaCode: self.quotaCode,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
