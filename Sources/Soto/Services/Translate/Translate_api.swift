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

/// Service object for interacting with AWS Translate service.
///
/// Provides translation of the input content from the source language to the target language.
public struct Translate: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Translate client
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
            amzTarget: "AWSShineFrontendService_20170701",
            serviceName: "Translate",
            serviceIdentifier: "translate",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: TranslateErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "translate-fips.us-east-1.amazonaws.com",
            "us-east-2": "translate-fips.us-east-2.amazonaws.com",
            "us-gov-west-1": "translate-fips.us-gov-west-1.amazonaws.com",
            "us-west-2": "translate-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3. Parallel data files contain examples that show how you want segments of text to be translated. By adding parallel data, you can influence the style, tone, and word choice in your translation output.
    @Sendable
    public func createParallelData(_ input: CreateParallelDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateParallelDataResponse {
        return try await self.client.execute(
            operation: "CreateParallelData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a parallel data resource in Amazon Translate.
    @Sendable
    public func deleteParallelData(_ input: DeleteParallelDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteParallelDataResponse {
        return try await self.client.execute(
            operation: "DeleteParallelData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A synchronous action that deletes a custom terminology.
    @Sendable
    public func deleteTerminology(_ input: DeleteTerminologyRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteTerminology", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the properties associated with an asynchronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.
    @Sendable
    public func describeTextTranslationJob(_ input: DescribeTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeTextTranslationJobResponse {
        return try await self.client.execute(
            operation: "DescribeTextTranslationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about a parallel data resource.
    @Sendable
    public func getParallelData(_ input: GetParallelDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetParallelDataResponse {
        return try await self.client.execute(
            operation: "GetParallelData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a custom terminology.
    @Sendable
    public func getTerminology(_ input: GetTerminologyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTerminologyResponse {
        return try await self.client.execute(
            operation: "GetTerminology", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates a custom terminology, depending on whether one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. The only supported merge strategy is OVERWRITE, where the imported terminology overwrites the existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology takes up to 10 minutes to fully propagate. After that, translations have access to the new terminology.
    @Sendable
    public func importTerminology(_ input: ImportTerminologyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportTerminologyResponse {
        return try await self.client.execute(
            operation: "ImportTerminology", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a list of languages (RFC-5646 codes and names) that Amazon Translate supports.
    @Sendable
    public func listLanguages(_ input: ListLanguagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLanguagesResponse {
        return try await self.client.execute(
            operation: "ListLanguages", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a list of your parallel data resources in Amazon Translate.
    @Sendable
    public func listParallelData(_ input: ListParallelDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListParallelDataResponse {
        return try await self.client.execute(
            operation: "ListParallelData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all tags associated with a given Amazon Translate resource. For more information, see  Tagging your resources.
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

    /// Provides a list of custom terminologies associated with your account.
    @Sendable
    public func listTerminologies(_ input: ListTerminologiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTerminologiesResponse {
        return try await self.client.execute(
            operation: "ListTerminologies", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a list of the batch translation jobs that you have submitted.
    @Sendable
    public func listTextTranslationJobs(_ input: ListTextTranslationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTextTranslationJobsResponse {
        return try await self.client.execute(
            operation: "ListTextTranslationJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an asynchronous batch translation job. Use batch translation jobs to translate large volumes of text across multiple documents at once. For batch translation, you can input documents with different source languages (specify auto as the source language). You can specify one or more target languages. Batch translation translates each input document into each of the target languages. For more information, see Asynchronous batch processing.
    ///  Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.
    @Sendable
    public func startTextTranslationJob(_ input: StartTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartTextTranslationJobResponse {
        return try await self.client.execute(
            operation: "StartTextTranslationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.
    @Sendable
    public func stopTextTranslationJob(_ input: StopTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopTextTranslationJobResponse {
        return try await self.client.execute(
            operation: "StopTextTranslationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates a specific tag with a resource. A tag is a key-value pair that adds as a metadata to a resource. For more information, see  Tagging your resources.
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

    /// Translates the input document from the source language to the target language.     This synchronous operation supports plain text or HTML for the input document.  TranslateDocument supports translations from English to any supported language,  and from any supported language to English. Therefore, specify either the source language code or the target language code as “en” (English).    TranslateDocument does not support language auto-detection.  If you set the Formality parameter, the request will fail if the target language does  not support formality. For a list of target languages that support formality, see Setting formality.
    @Sendable
    public func translateDocument(_ input: TranslateDocumentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TranslateDocumentResponse {
        return try await self.client.execute(
            operation: "TranslateDocument", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Translates input text from the source language to the target language. For a list of available languages and language codes, see Supported languages.
    @Sendable
    public func translateText(_ input: TranslateTextRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TranslateTextResponse {
        return try await self.client.execute(
            operation: "TranslateText", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a specific tag associated with an Amazon Translate resource. For more information, see  Tagging your resources.
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

    /// Updates a previously created parallel data resource by importing a new input file from Amazon S3.
    @Sendable
    public func updateParallelData(_ input: UpdateParallelDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateParallelDataResponse {
        return try await self.client.execute(
            operation: "UpdateParallelData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Translate {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Translate, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Translate {
    /// Provides a list of languages (RFC-5646 codes and names) that Amazon Translate supports.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLanguagesPaginator(
        _ input: ListLanguagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLanguagesRequest, ListLanguagesResponse> {
        return .init(
            input: input,
            command: self.listLanguages,
            inputKey: \ListLanguagesRequest.nextToken,
            outputKey: \ListLanguagesResponse.nextToken,
            logger: logger
        )
    }

    /// Provides a list of your parallel data resources in Amazon Translate.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listParallelDataPaginator(
        _ input: ListParallelDataRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListParallelDataRequest, ListParallelDataResponse> {
        return .init(
            input: input,
            command: self.listParallelData,
            inputKey: \ListParallelDataRequest.nextToken,
            outputKey: \ListParallelDataResponse.nextToken,
            logger: logger
        )
    }

    /// Provides a list of custom terminologies associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTerminologiesPaginator(
        _ input: ListTerminologiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTerminologiesRequest, ListTerminologiesResponse> {
        return .init(
            input: input,
            command: self.listTerminologies,
            inputKey: \ListTerminologiesRequest.nextToken,
            outputKey: \ListTerminologiesResponse.nextToken,
            logger: logger
        )
    }

    /// Gets a list of the batch translation jobs that you have submitted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTextTranslationJobsPaginator(
        _ input: ListTextTranslationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTextTranslationJobsRequest, ListTextTranslationJobsResponse> {
        return .init(
            input: input,
            command: self.listTextTranslationJobs,
            inputKey: \ListTextTranslationJobsRequest.nextToken,
            outputKey: \ListTextTranslationJobsResponse.nextToken,
            logger: logger
        )
    }
}

extension Translate.ListLanguagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListLanguagesRequest {
        return .init(
            displayLanguageCode: self.displayLanguageCode,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Translate.ListParallelDataRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListParallelDataRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Translate.ListTerminologiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTerminologiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Translate.ListTextTranslationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTextTranslationJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
