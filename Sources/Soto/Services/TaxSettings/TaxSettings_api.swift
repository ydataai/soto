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

/// Service object for interacting with AWS TaxSettings service.
///
/// You can use the tax setting API to programmatically set, modify, and delete the tax registration number (TRN), associated business legal name, and address (Collectively referred to as "TRN information"). You can also programmatically view TRN information and tax addresses ("Tax profiles").  You can use this API to automate your TRN information settings instead of manually using the console. Service Endpoint   https://tax.us-east-1.amazonaws.com
public struct TaxSettings: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the TaxSettings client
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
            serviceName: "TaxSettings",
            serviceIdentifier: "tax",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: TaxSettingsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Deletes tax registration for multiple accounts in batch. This can be used to delete tax registrations for up to five accounts in one batch.   This API operation can't be used to delete your tax registration in Brazil. Use the Payment preferences page in the Billing and Cost Management console instead.
    @Sendable
    public func batchDeleteTaxRegistration(_ input: BatchDeleteTaxRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchDeleteTaxRegistrationResponse {
        return try await self.client.execute(
            operation: "BatchDeleteTaxRegistration", 
            path: "/BatchDeleteTaxRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or updates tax registration for multiple accounts in batch. This can be used to add or update tax registrations for up to five accounts in one batch. You can't set a TRN if there's a pending TRN. You'll need to delete the pending TRN first. To call this API operation for specific countries, see the following country-specific requirements.  Bangladesh    You must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Brazil    You must complete the tax registration process in the Payment preferences page in the Billing and Cost Management console. After your TRN and billing address are verified, you can call this API operation.   For Amazon Web Services accounts created through Organizations, you can call this API operation when you don't have a billing address.    Georgia    The valid personType values are Physical Person and Business.    Kenya    You must specify the personType in the kenyaAdditionalInfo field of the additionalTaxInformation object.   If the personType is Physical Person, you must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Malaysia    If you use this operation to set a tax registration number (TRN) in Malaysia, only resellers with a valid sales and service tax (SST) number are required to provide tax registration information.   By using this API operation to set a TRN in Malaysia, Amazon Web Services will regard you as self-declaring that you're an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD) and have a valid SST number.   Amazon Web Services reserves the right to seek additional information and/or take other actions to support your self-declaration as appropriate.   If you're not a reseller of Amazon Web Services, we don't recommend that you use this operation to set the TRN in Malaysia.   Only use this API operation to upload the TRNs for accounts through which you're reselling Amazon Web Services.   Amazon Web Services is currently registered under the following service tax codes. You must include at least one of the service tax codes in the service tax code strings to declare yourself as an authorized registered business reseller. Taxable service and service tax codes: Consultancy - 9907061674 Training or coaching service - 9907071685 IT service - 9907101676 Digital services and electronic medium - 9907121690    Nepal    The sector valid values are Business and Individual.    Saudi Arabia    For address, you must specify addressLine3.    South Korea    You must specify the certifiedEmailId and legalName in the TaxRegistrationEntry object. Use Korean characters for legalName.   You must specify the businessRepresentativeName, itemOfBusiness, and lineOfBusiness in the southKoreaAdditionalInfo field of the additionalTaxInformation object. Use Korean characters for these fields.   You must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.   For the address object, use Korean characters for addressLine1, addressLine2 city, postalCode, and stateOrRegion.    Spain    You must specify the registrationType in the spainAdditionalInfo field of the additionalTaxInformation object.   If the registrationType is Local, you must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Turkey    You must specify the sector in the taxRegistrationEntry object.   If your sector is Business, Individual, or Government:   Specify the taxOffice. If your sector is Individual, don't enter this value.   (Optional) Specify the kepEmailId. If your sector is Individual, don't enter this value.    Note: In the  Tax Settings page of the Billing console, Government appears as Public institutions      If your sector is Business and you're subject to KDV tax, you must specify your industry in the industries field.   For address, you must specify districtOrCounty.    Ukraine    The sector valid values are Business and Individual.
    @Sendable
    public func batchPutTaxRegistration(_ input: BatchPutTaxRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchPutTaxRegistrationResponse {
        return try await self.client.execute(
            operation: "BatchPutTaxRegistration", 
            path: "/BatchPutTaxRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes tax registration for a single account.   This API operation can't be used to delete your tax registration in Brazil. Use the Payment preferences page in the Billing and Cost Management console instead.
    @Sendable
    public func deleteTaxRegistration(_ input: DeleteTaxRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTaxRegistrationResponse {
        return try await self.client.execute(
            operation: "DeleteTaxRegistration", 
            path: "/DeleteTaxRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves tax registration for a single account.
    @Sendable
    public func getTaxRegistration(_ input: GetTaxRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTaxRegistrationResponse {
        return try await self.client.execute(
            operation: "GetTaxRegistration", 
            path: "/GetTaxRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Downloads your tax documents to the Amazon S3 bucket that you specify in your request.
    @Sendable
    public func getTaxRegistrationDocument(_ input: GetTaxRegistrationDocumentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTaxRegistrationDocumentResponse {
        return try await self.client.execute(
            operation: "GetTaxRegistrationDocument", 
            path: "/GetTaxRegistrationDocument", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the tax registration of accounts listed in a consolidated billing family. This can be used to retrieve up to 100 accounts' tax registrations in one call (default 50).
    @Sendable
    public func listTaxRegistrations(_ input: ListTaxRegistrationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTaxRegistrationsResponse {
        return try await self.client.execute(
            operation: "ListTaxRegistrations", 
            path: "/ListTaxRegistrations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or updates tax registration for a single account. You can't set a TRN if there's a pending TRN. You'll need to delete the pending TRN first. To call this API operation for specific countries, see the following country-specific requirements.  Bangladesh    You must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Brazil    You must complete the tax registration process in the Payment preferences page in the Billing and Cost Management console. After your TRN and billing address are verified, you can call this API operation.   For Amazon Web Services accounts created through Organizations, you can call this API operation when you don't have a billing address.    Georgia    The valid personType values are Physical Person and Business.    Kenya    You must specify the personType in the kenyaAdditionalInfo field of the additionalTaxInformation object.   If the personType is Physical Person, you must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Malaysia    If you use this operation to set a tax registration number (TRN) in Malaysia, only resellers with a valid sales and service tax (SST) number are required to provide tax registration information.   By using this API operation to set a TRN in Malaysia, Amazon Web Services will regard you as self-declaring that you're an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD) and have a valid SST number.   Amazon Web Services reserves the right to seek additional information and/or take other actions to support your self-declaration as appropriate.   If you're not a reseller of Amazon Web Services, we don't recommend that you use this operation to set the TRN in Malaysia.   Only use this API operation to upload the TRNs for accounts through which you're reselling Amazon Web Services.   Amazon Web Services is currently registered under the following service tax codes. You must include at least one of the service tax codes in the service tax code strings to declare yourself as an authorized registered business reseller. Taxable service and service tax codes: Consultancy - 9907061674 Training or coaching service - 9907071685 IT service - 9907101676 Digital services and electronic medium - 9907121690    Nepal    The sector valid values are Business and Individual.    Saudi Arabia    For address, you must specify addressLine3.    South Korea    You must specify the certifiedEmailId and legalName in the TaxRegistrationEntry object. Use Korean characters for legalName.   You must specify the businessRepresentativeName, itemOfBusiness, and lineOfBusiness in the southKoreaAdditionalInfo field of the additionalTaxInformation object. Use Korean characters for these fields.   You must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.   For the address object, use Korean characters for addressLine1, addressLine2 city, postalCode, and stateOrRegion.    Spain    You must specify the registrationType in the spainAdditionalInfo field of the additionalTaxInformation object.   If the registrationType is Local, you must specify the tax registration certificate document in the taxRegistrationDocuments field of the VerificationDetails object.    Turkey    You must specify the sector in the taxRegistrationEntry object.   If your sector is Business, Individual, or Government:   Specify the taxOffice. If your sector is Individual, don't enter this value.   (Optional) Specify the kepEmailId. If your sector is Individual, don't enter this value.    Note: In the  Tax Settings page of the Billing console, Government appears as Public institutions      If your sector is Business and you're subject to KDV tax, you must specify your industry in the industries field.   For address, you must specify districtOrCounty.    Ukraine    The sector valid values are Business and Individual.
    @Sendable
    public func putTaxRegistration(_ input: PutTaxRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutTaxRegistrationResponse {
        return try await self.client.execute(
            operation: "PutTaxRegistration", 
            path: "/PutTaxRegistration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension TaxSettings {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TaxSettings, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension TaxSettings {
    /// Retrieves the tax registration of accounts listed in a consolidated billing family. This can be used to retrieve up to 100 accounts' tax registrations in one call (default 50).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTaxRegistrationsPaginator(
        _ input: ListTaxRegistrationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTaxRegistrationsRequest, ListTaxRegistrationsResponse> {
        return .init(
            input: input,
            command: self.listTaxRegistrations,
            inputKey: \ListTaxRegistrationsRequest.nextToken,
            outputKey: \ListTaxRegistrationsResponse.nextToken,
            logger: logger
        )
    }
}

extension TaxSettings.ListTaxRegistrationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TaxSettings.ListTaxRegistrationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
