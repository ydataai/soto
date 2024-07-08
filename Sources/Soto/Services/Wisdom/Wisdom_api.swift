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

/// Service object for interacting with AWS Wisdom service.
///
/// Amazon Connect Wisdom delivers agents the information they need to solve customer issues as they're actively speaking with customers. Agents can search across connected repositories from within their agent desktop to find answers quickly. Use Amazon Connect Wisdom to create an assistant and a knowledge base, for example, or manage content by uploading custom files.
public struct Wisdom: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Wisdom client
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
            serviceName: "Wisdom",
            serviceIdentifier: "wisdom",
            serviceProtocol: .restjson,
            apiVersion: "2020-10-19",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: WisdomErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "wisdom-fips.us-east-1.amazonaws.com",
            "us-west-2": "wisdom-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an Amazon Connect Wisdom assistant.
    @Sendable
    public func createAssistant(_ input: CreateAssistantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAssistantResponse {
        return try await self.client.execute(
            operation: "CreateAssistant", 
            path: "/assistants", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the only supported association is with a knowledge base. An assistant can have only a single association.
    @Sendable
    public func createAssistantAssociation(_ input: CreateAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAssistantAssociationResponse {
        return try await self.client.execute(
            operation: "CreateAssistantAssociation", 
            path: "/assistants/{assistantId}/associations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates Wisdom content. Before to calling this API, use StartContentUpload to upload an asset.
    @Sendable
    public func createContent(_ input: CreateContentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateContentResponse {
        return try await self.client.execute(
            operation: "CreateContent", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a knowledge base.  When using this API, you cannot reuse Amazon AppIntegrations DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do, you'll get an InvalidRequestException error.  For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:   Call DeleteKnowledgeBase.   Call DeleteDataIntegration.   Call CreateDataIntegration to recreate the DataIntegration or a create different one.   Call CreateKnowledgeBase.
    @Sendable
    public func createKnowledgeBase(_ input: CreateKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateKnowledgeBaseResponse {
        return try await self.client.execute(
            operation: "CreateKnowledgeBase", 
            path: "/knowledgeBases", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Wisdom quick response.
    @Sendable
    public func createQuickResponse(_ input: CreateQuickResponseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateQuickResponseResponse {
        return try await self.client.execute(
            operation: "CreateQuickResponse", 
            path: "/knowledgeBases/{knowledgeBaseId}/quickResponses", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a session. A session is a contextual container used for generating recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is enabled.
    @Sendable
    public func createSession(_ input: CreateSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSessionResponse {
        return try await self.client.execute(
            operation: "CreateSession", 
            path: "/assistants/{assistantId}/sessions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an assistant.
    @Sendable
    public func deleteAssistant(_ input: DeleteAssistantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAssistantResponse {
        return try await self.client.execute(
            operation: "DeleteAssistant", 
            path: "/assistants/{assistantId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an assistant association.
    @Sendable
    public func deleteAssistantAssociation(_ input: DeleteAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAssistantAssociationResponse {
        return try await self.client.execute(
            operation: "DeleteAssistantAssociation", 
            path: "/assistants/{assistantId}/associations/{assistantAssociationId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the content.
    @Sendable
    public func deleteContent(_ input: DeleteContentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteContentResponse {
        return try await self.client.execute(
            operation: "DeleteContent", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the quick response import job.
    @Sendable
    public func deleteImportJob(_ input: DeleteImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteImportJobResponse {
        return try await self.client.execute(
            operation: "DeleteImportJob", 
            path: "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the knowledge base.  When you use this API to delete an external knowledge base such as Salesforce or ServiceNow, you must also delete the Amazon AppIntegrations DataIntegration. This is because you can't reuse the DataIntegration after it's been associated with an external knowledge base. However, you can delete and recreate it. See DeleteDataIntegration and CreateDataIntegration in the Amazon AppIntegrations API Reference.
    @Sendable
    public func deleteKnowledgeBase(_ input: DeleteKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteKnowledgeBaseResponse {
        return try await self.client.execute(
            operation: "DeleteKnowledgeBase", 
            path: "/knowledgeBases/{knowledgeBaseId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a quick response.
    @Sendable
    public func deleteQuickResponse(_ input: DeleteQuickResponseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteQuickResponseResponse {
        return try await self.client.execute(
            operation: "DeleteQuickResponse", 
            path: "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an assistant.
    @Sendable
    public func getAssistant(_ input: GetAssistantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssistantResponse {
        return try await self.client.execute(
            operation: "GetAssistant", 
            path: "/assistants/{assistantId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an assistant association.
    @Sendable
    public func getAssistantAssociation(_ input: GetAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssistantAssociationResponse {
        return try await self.client.execute(
            operation: "GetAssistantAssociation", 
            path: "/assistants/{assistantId}/associations/{assistantAssociationId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves content, including a pre-signed URL to download the content.
    @Sendable
    public func getContent(_ input: GetContentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetContentResponse {
        return try await self.client.execute(
            operation: "GetContent", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves summary information about the content.
    @Sendable
    public func getContentSummary(_ input: GetContentSummaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetContentSummaryResponse {
        return try await self.client.execute(
            operation: "GetContentSummary", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the started import job.
    @Sendable
    public func getImportJob(_ input: GetImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetImportJobResponse {
        return try await self.client.execute(
            operation: "GetImportJob", 
            path: "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the knowledge base.
    @Sendable
    public func getKnowledgeBase(_ input: GetKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetKnowledgeBaseResponse {
        return try await self.client.execute(
            operation: "GetKnowledgeBase", 
            path: "/knowledgeBases/{knowledgeBaseId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the quick response.
    @Sendable
    public func getQuickResponse(_ input: GetQuickResponseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetQuickResponseResponse {
        return try await self.client.execute(
            operation: "GetQuickResponse", 
            path: "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves recommendations for the specified session. To avoid retrieving the same recommendations in subsequent calls, use NotifyRecommendationsReceived. This API supports long-polling behavior with the waitTimeSeconds parameter. Short poll is the default behavior and only returns recommendations already available. To perform a manual query against an assistant, use QueryAssistant.
    @available(*, deprecated, message: "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications.")
    @Sendable
    public func getRecommendations(_ input: GetRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRecommendationsResponse {
        return try await self.client.execute(
            operation: "GetRecommendations", 
            path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information for a specified session.
    @Sendable
    public func getSession(_ input: GetSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSessionResponse {
        return try await self.client.execute(
            operation: "GetSession", 
            path: "/assistants/{assistantId}/sessions/{sessionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists information about assistant associations.
    @Sendable
    public func listAssistantAssociations(_ input: ListAssistantAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssistantAssociationsResponse {
        return try await self.client.execute(
            operation: "ListAssistantAssociations", 
            path: "/assistants/{assistantId}/associations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists information about assistants.
    @Sendable
    public func listAssistants(_ input: ListAssistantsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssistantsResponse {
        return try await self.client.execute(
            operation: "ListAssistants", 
            path: "/assistants", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the content.
    @Sendable
    public func listContents(_ input: ListContentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListContentsResponse {
        return try await self.client.execute(
            operation: "ListContents", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists information about import jobs.
    @Sendable
    public func listImportJobs(_ input: ListImportJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListImportJobsResponse {
        return try await self.client.execute(
            operation: "ListImportJobs", 
            path: "/knowledgeBases/{knowledgeBaseId}/importJobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the knowledge bases.
    @Sendable
    public func listKnowledgeBases(_ input: ListKnowledgeBasesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListKnowledgeBasesResponse {
        return try await self.client.execute(
            operation: "ListKnowledgeBases", 
            path: "/knowledgeBases", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists information about quick response.
    @Sendable
    public func listQuickResponses(_ input: ListQuickResponsesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListQuickResponsesResponse {
        return try await self.client.execute(
            operation: "ListQuickResponses", 
            path: "/knowledgeBases/{knowledgeBaseId}/quickResponses", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for the specified resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified recommendations from the specified assistant's queue of newly available recommendations. You can use this API in conjunction with GetRecommendations and a waitTimeSeconds input for long-polling behavior and avoiding duplicate recommendations.
    @Sendable
    public func notifyRecommendationsReceived(_ input: NotifyRecommendationsReceivedRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> NotifyRecommendationsReceivedResponse {
        return try await self.client.execute(
            operation: "NotifyRecommendationsReceived", 
            path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    @available(*, deprecated, message: "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications.")
    @Sendable
    public func queryAssistant(_ input: QueryAssistantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> QueryAssistantResponse {
        return try await self.client.execute(
            operation: "QueryAssistant", 
            path: "/assistants/{assistantId}/query", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a URI template from a knowledge base.
    @Sendable
    public func removeKnowledgeBaseTemplateUri(_ input: RemoveKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveKnowledgeBaseTemplateUriResponse {
        return try await self.client.execute(
            operation: "RemoveKnowledgeBaseTemplateUri", 
            path: "/knowledgeBases/{knowledgeBaseId}/templateUri", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    @Sendable
    public func searchContent(_ input: SearchContentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchContentResponse {
        return try await self.client.execute(
            operation: "SearchContent", 
            path: "/knowledgeBases/{knowledgeBaseId}/search", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Searches existing Wisdom quick responses in a Wisdom knowledge base.
    @Sendable
    public func searchQuickResponses(_ input: SearchQuickResponsesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchQuickResponsesResponse {
        return try await self.client.execute(
            operation: "SearchQuickResponses", 
            path: "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Searches for sessions.
    @Sendable
    public func searchSessions(_ input: SearchSessionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchSessionsResponse {
        return try await self.client.execute(
            operation: "SearchSessions", 
            path: "/assistants/{assistantId}/searchSessions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT request to the returned URL with your file, making sure to include the required headers. Then use CreateContent to finalize the content creation process or UpdateContent to modify an existing resource. You can only upload content to a knowledge base of type CUSTOM.
    @Sendable
    public func startContentUpload(_ input: StartContentUploadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartContentUploadResponse {
        return try await self.client.execute(
            operation: "StartContentUpload", 
            path: "/knowledgeBases/{knowledgeBaseId}/upload", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Start an asynchronous job to import Wisdom resources from an uploaded source file. Before calling this API, use StartContentUpload to upload an asset that contains the resource data.   For importing Wisdom quick responses, you need to upload a csv file including the quick responses. For information about how to format the csv file for importing quick responses, see Import quick responses.
    @Sendable
    public func startImportJob(_ input: StartImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartImportJobResponse {
        return try await self.client.execute(
            operation: "StartImportJob", 
            path: "/knowledgeBases/{knowledgeBaseId}/importJobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds the specified tags to the specified resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates information about the content.
    @Sendable
    public func updateContent(_ input: UpdateContentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateContentResponse {
        return try await self.client.execute(
            operation: "UpdateContent", 
            path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases of type EXTERNAL. Include a single variable in ${variable} format; this interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce article, it has an Id value, and you can set the template URI to https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    @Sendable
    public func updateKnowledgeBaseTemplateUri(_ input: UpdateKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateKnowledgeBaseTemplateUriResponse {
        return try await self.client.execute(
            operation: "UpdateKnowledgeBaseTemplateUri", 
            path: "/knowledgeBases/{knowledgeBaseId}/templateUri", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing Wisdom quick response.
    @Sendable
    public func updateQuickResponse(_ input: UpdateQuickResponseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateQuickResponseResponse {
        return try await self.client.execute(
            operation: "UpdateQuickResponse", 
            path: "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Wisdom {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Wisdom, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Wisdom {
    /// Lists information about assistant associations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssistantAssociationsPaginator(
        _ input: ListAssistantAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssistantAssociationsRequest, ListAssistantAssociationsResponse> {
        return .init(
            input: input,
            command: self.listAssistantAssociations,
            inputKey: \ListAssistantAssociationsRequest.nextToken,
            outputKey: \ListAssistantAssociationsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists information about assistants.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssistantsPaginator(
        _ input: ListAssistantsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssistantsRequest, ListAssistantsResponse> {
        return .init(
            input: input,
            command: self.listAssistants,
            inputKey: \ListAssistantsRequest.nextToken,
            outputKey: \ListAssistantsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listContentsPaginator(
        _ input: ListContentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListContentsRequest, ListContentsResponse> {
        return .init(
            input: input,
            command: self.listContents,
            inputKey: \ListContentsRequest.nextToken,
            outputKey: \ListContentsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists information about import jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listImportJobsPaginator(
        _ input: ListImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListImportJobsRequest, ListImportJobsResponse> {
        return .init(
            input: input,
            command: self.listImportJobs,
            inputKey: \ListImportJobsRequest.nextToken,
            outputKey: \ListImportJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the knowledge bases.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listKnowledgeBasesPaginator(
        _ input: ListKnowledgeBasesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListKnowledgeBasesRequest, ListKnowledgeBasesResponse> {
        return .init(
            input: input,
            command: self.listKnowledgeBases,
            inputKey: \ListKnowledgeBasesRequest.nextToken,
            outputKey: \ListKnowledgeBasesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists information about quick response.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listQuickResponsesPaginator(
        _ input: ListQuickResponsesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListQuickResponsesRequest, ListQuickResponsesResponse> {
        return .init(
            input: input,
            command: self.listQuickResponses,
            inputKey: \ListQuickResponsesRequest.nextToken,
            outputKey: \ListQuickResponsesResponse.nextToken,
            logger: logger
        )
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications.")
    public func queryAssistantPaginator(
        _ input: QueryAssistantRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<QueryAssistantRequest, QueryAssistantResponse> {
        return .init(
            input: input,
            command: self.queryAssistant,
            inputKey: \QueryAssistantRequest.nextToken,
            outputKey: \QueryAssistantResponse.nextToken,
            logger: logger
        )
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func searchContentPaginator(
        _ input: SearchContentRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<SearchContentRequest, SearchContentResponse> {
        return .init(
            input: input,
            command: self.searchContent,
            inputKey: \SearchContentRequest.nextToken,
            outputKey: \SearchContentResponse.nextToken,
            logger: logger
        )
    }

    /// Searches existing Wisdom quick responses in a Wisdom knowledge base.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func searchQuickResponsesPaginator(
        _ input: SearchQuickResponsesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<SearchQuickResponsesRequest, SearchQuickResponsesResponse> {
        return .init(
            input: input,
            command: self.searchQuickResponses,
            inputKey: \SearchQuickResponsesRequest.nextToken,
            outputKey: \SearchQuickResponsesResponse.nextToken,
            logger: logger
        )
    }

    /// Searches for sessions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func searchSessionsPaginator(
        _ input: SearchSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<SearchSessionsRequest, SearchSessionsResponse> {
        return .init(
            input: input,
            command: self.searchSessions,
            inputKey: \SearchSessionsRequest.nextToken,
            outputKey: \SearchSessionsResponse.nextToken,
            logger: logger
        )
    }
}

extension Wisdom.ListAssistantAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListAssistantAssociationsRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.ListAssistantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListAssistantsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.ListContentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListContentsRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.ListImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListImportJobsRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.ListKnowledgeBasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListKnowledgeBasesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.ListQuickResponsesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.ListQuickResponsesRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Wisdom.QueryAssistantRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.QueryAssistantRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token,
            queryText: self.queryText
        )
    }
}

extension Wisdom.SearchContentRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.SearchContentRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token,
            searchExpression: self.searchExpression
        )
    }
}

extension Wisdom.SearchQuickResponsesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.SearchQuickResponsesRequest {
        return .init(
            attributes: self.attributes,
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token,
            searchExpression: self.searchExpression
        )
    }
}

extension Wisdom.SearchSessionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Wisdom.SearchSessionsRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token,
            searchExpression: self.searchExpression
        )
    }
}
