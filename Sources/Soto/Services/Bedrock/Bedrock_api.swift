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

/// Service object for interacting with AWS Bedrock service.
///
/// Describes the API operations for creating, managing, fine-turning, and evaluating Amazon Bedrock models.
public struct Bedrock: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Bedrock client
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
            serviceName: "Bedrock",
            serviceIdentifier: "bedrock",
            serviceProtocol: .restjson,
            apiVersion: "2023-04-20",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: BedrockErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "bedrock-ap-northeast-1": "bedrock.ap-northeast-1.amazonaws.com",
        "bedrock-ap-south-1": "bedrock.ap-south-1.amazonaws.com",
        "bedrock-ap-southeast-1": "bedrock.ap-southeast-1.amazonaws.com",
        "bedrock-ap-southeast-2": "bedrock.ap-southeast-2.amazonaws.com",
        "bedrock-ca-central-1": "bedrock.ca-central-1.amazonaws.com",
        "bedrock-eu-central-1": "bedrock.eu-central-1.amazonaws.com",
        "bedrock-eu-west-1": "bedrock.eu-west-1.amazonaws.com",
        "bedrock-eu-west-2": "bedrock.eu-west-2.amazonaws.com",
        "bedrock-eu-west-3": "bedrock.eu-west-3.amazonaws.com",
        "bedrock-fips-ca-central-1": "bedrock-fips.ca-central-1.amazonaws.com",
        "bedrock-fips-us-east-1": "bedrock-fips.us-east-1.amazonaws.com",
        "bedrock-fips-us-gov-west-1": "bedrock-fips.us-gov-west-1.amazonaws.com",
        "bedrock-fips-us-west-2": "bedrock-fips.us-west-2.amazonaws.com",
        "bedrock-runtime-ap-northeast-1": "bedrock-runtime.ap-northeast-1.amazonaws.com",
        "bedrock-runtime-ap-south-1": "bedrock-runtime.ap-south-1.amazonaws.com",
        "bedrock-runtime-ap-southeast-1": "bedrock-runtime.ap-southeast-1.amazonaws.com",
        "bedrock-runtime-ap-southeast-2": "bedrock-runtime.ap-southeast-2.amazonaws.com",
        "bedrock-runtime-ca-central-1": "bedrock-runtime.ca-central-1.amazonaws.com",
        "bedrock-runtime-eu-central-1": "bedrock-runtime.eu-central-1.amazonaws.com",
        "bedrock-runtime-eu-west-1": "bedrock-runtime.eu-west-1.amazonaws.com",
        "bedrock-runtime-eu-west-2": "bedrock-runtime.eu-west-2.amazonaws.com",
        "bedrock-runtime-eu-west-3": "bedrock-runtime.eu-west-3.amazonaws.com",
        "bedrock-runtime-fips-ca-central-1": "bedrock-runtime-fips.ca-central-1.amazonaws.com",
        "bedrock-runtime-fips-us-east-1": "bedrock-runtime-fips.us-east-1.amazonaws.com",
        "bedrock-runtime-fips-us-gov-west-1": "bedrock-runtime-fips.us-gov-west-1.amazonaws.com",
        "bedrock-runtime-fips-us-west-2": "bedrock-runtime-fips.us-west-2.amazonaws.com",
        "bedrock-runtime-sa-east-1": "bedrock-runtime.sa-east-1.amazonaws.com",
        "bedrock-runtime-us-east-1": "bedrock-runtime.us-east-1.amazonaws.com",
        "bedrock-runtime-us-gov-west-1": "bedrock-runtime.us-gov-west-1.amazonaws.com",
        "bedrock-runtime-us-west-2": "bedrock-runtime.us-west-2.amazonaws.com",
        "bedrock-sa-east-1": "bedrock.sa-east-1.amazonaws.com",
        "bedrock-us-east-1": "bedrock.us-east-1.amazonaws.com",
        "bedrock-us-gov-west-1": "bedrock.us-gov-west-1.amazonaws.com",
        "bedrock-us-west-2": "bedrock.us-west-2.amazonaws.com"
    ]}



    // MARK: API Calls

    /// API operation for creating and managing Amazon Bedrock automatic model evaluation jobs and model evaluation jobs that use human workers. To learn more about the requirements for creating a model evaluation job see, Model evaluations.
    @Sendable
    public func createEvaluationJob(_ input: CreateEvaluationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEvaluationJobResponse {
        return try await self.client.execute(
            operation: "CreateEvaluationJob", 
            path: "/evaluation-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a guardrail to block topics and to filter out harmful content.   Specify a name and optional description.   Specify messages for when the guardrail successfully blocks a prompt or a model response in the blockedInputMessaging and blockedOutputsMessaging fields.   Specify topics for the guardrail to deny in the topicPolicyConfig object. Each GuardrailTopicConfig object in the topicsConfig list pertains to one topic.   Give a name and description so that the guardrail can properly identify the topic.   Specify DENY in the type field.   (Optional) Provide up to five prompts that you would categorize as belonging to the topic in the examples list.     Specify filter strengths for the harmful categories defined in Amazon Bedrock in the contentPolicyConfig object. Each GuardrailContentFilterConfig object in the filtersConfig list pertains to a harmful category. For more information, see Content filters. For more information about the fields in a content filter, see GuardrailContentFilterConfig.   Specify the category in the type field.   Specify the strength of the filter for prompts in the inputStrength field and for model responses in the strength field of the GuardrailContentFilterConfig.     (Optional) For security, include the ARN of a KMS key in the kmsKeyId field.   (Optional) Attach any tags to the guardrail in the tags object. For more information, see Tag resources.
    @Sendable
    public func createGuardrail(_ input: CreateGuardrailRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGuardrailResponse {
        return try await self.client.execute(
            operation: "CreateGuardrail", 
            path: "/guardrails", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a version of the guardrail. Use this API to create a snapshot of the  guardrail when you are satisfied with a configuration, or to compare the configuration with another version.
    @Sendable
    public func createGuardrailVersion(_ input: CreateGuardrailVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGuardrailVersionResponse {
        return try await self.client.execute(
            operation: "CreateGuardrailVersion", 
            path: "/guardrails/{guardrailIdentifier}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a fine-tuning job to customize a base model. You specify the base foundation model and the location of the training data. After the  model-customization job completes successfully, your custom model resource will be ready to use. Amazon Bedrock returns validation loss metrics and output generations after the job completes.  For information on the format of training and validation data, see Prepare the datasets.  Model-customization jobs are asynchronous and the completion time depends on the base model and the training/validation data size. To monitor a job, use the GetModelCustomizationJob operation to retrieve the job status. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func createModelCustomizationJob(_ input: CreateModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "CreateModelCustomizationJob", 
            path: "/model-customization-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates dedicated throughput for a base or custom model with the model units and for the duration that you specify. For pricing details, see Amazon Bedrock Pricing. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    @Sendable
    public func createProvisionedModelThroughput(_ input: CreateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "CreateProvisionedModelThroughput", 
            path: "/provisioned-model-throughput", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a custom model that you created earlier. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func deleteCustomModel(_ input: DeleteCustomModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteCustomModelResponse {
        return try await self.client.execute(
            operation: "DeleteCustomModel", 
            path: "/custom-models/{modelIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a guardrail.   To delete a guardrail, only specify the ARN of the guardrail in the guardrailIdentifier field. If you delete a guardrail, all of its versions will be deleted.   To delete a version of a guardrail, specify the ARN of the guardrail in the guardrailIdentifier field and the version in the guardrailVersion field.
    @Sendable
    public func deleteGuardrail(_ input: DeleteGuardrailRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGuardrailResponse {
        return try await self.client.execute(
            operation: "DeleteGuardrail", 
            path: "/guardrails/{guardrailIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete the invocation logging.
    @Sendable
    public func deleteModelInvocationLoggingConfiguration(_ input: DeleteModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Provisioned Throughput. You can't delete a Provisioned Throughput before the commitment term is over. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    @Sendable
    public func deleteProvisionedModelThroughput(_ input: DeleteProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "DeleteProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the properties associated with a Amazon Bedrock custom model that you have created.For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func getCustomModel(_ input: GetCustomModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCustomModelResponse {
        return try await self.client.execute(
            operation: "GetCustomModel", 
            path: "/custom-models/{modelIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the properties associated with a model evaluation job, including the status of the job. For more information, see Model evaluations.
    @Sendable
    public func getEvaluationJob(_ input: GetEvaluationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEvaluationJobResponse {
        return try await self.client.execute(
            operation: "GetEvaluationJob", 
            path: "/evaluation-jobs/{jobIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get details about a Amazon Bedrock foundation model.
    @Sendable
    public func getFoundationModel(_ input: GetFoundationModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFoundationModelResponse {
        return try await self.client.execute(
            operation: "GetFoundationModel", 
            path: "/foundation-models/{modelIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets details about a guardrail. If you don't specify a version, the response returns details for the DRAFT version.
    @Sendable
    public func getGuardrail(_ input: GetGuardrailRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGuardrailResponse {
        return try await self.client.execute(
            operation: "GetGuardrail", 
            path: "/guardrails/{guardrailIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the properties associated with a model-customization job, including the status of the job. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func getModelCustomizationJob(_ input: GetModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "GetModelCustomizationJob", 
            path: "/model-customization-jobs/{jobIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the current configuration values for model invocation logging.
    @Sendable
    public func getModelInvocationLoggingConfiguration(_ input: GetModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "GetModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns details for a Provisioned Throughput. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    @Sendable
    public func getProvisionedModelThroughput(_ input: GetProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "GetProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func listCustomModels(_ input: ListCustomModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCustomModelsResponse {
        return try await self.client.execute(
            operation: "ListCustomModels", 
            path: "/custom-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists model evaluation jobs.
    @Sendable
    public func listEvaluationJobs(_ input: ListEvaluationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEvaluationJobsResponse {
        return try await self.client.execute(
            operation: "ListEvaluationJobs", 
            path: "/evaluation-jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists Amazon Bedrock foundation models that you can use. You can filter the results with the request parameters. For more information, see Foundation models in the Amazon Bedrock User Guide.
    @Sendable
    public func listFoundationModels(_ input: ListFoundationModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFoundationModelsResponse {
        return try await self.client.execute(
            operation: "ListFoundationModels", 
            path: "/foundation-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists details about all the guardrails in an account. To list the DRAFT version of all your guardrails, don't specify the guardrailIdentifier field. To list all versions of a guardrail, specify the ARN of the guardrail in the guardrailIdentifier field. You can set the maximum number of results to return in a response in the maxResults field. If there are more results than the number you set, the response returns a nextToken that you can send in another ListGuardrails request to see the next batch of results.
    @Sendable
    public func listGuardrails(_ input: ListGuardrailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGuardrailsResponse {
        return try await self.client.execute(
            operation: "ListGuardrails", 
            path: "/guardrails", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func listModelCustomizationJobs(_ input: ListModelCustomizationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListModelCustomizationJobsResponse {
        return try await self.client.execute(
            operation: "ListModelCustomizationJobs", 
            path: "/model-customization-jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the Provisioned Throughputs in the account. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    @Sendable
    public func listProvisionedModelThroughputs(_ input: ListProvisionedModelThroughputsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProvisionedModelThroughputsResponse {
        return try await self.client.execute(
            operation: "ListProvisionedModelThroughputs", 
            path: "/provisioned-model-throughputs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List the tags associated with the specified resource. For more information, see  Tagging resources in the Amazon Bedrock User Guide.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/listTagsForResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Set the configuration values for model invocation logging.
    @Sendable
    public func putModelInvocationLoggingConfiguration(_ input: PutModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "PutModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an in progress model evaluation job.
    @Sendable
    public func stopEvaluationJob(_ input: StopEvaluationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopEvaluationJobResponse {
        return try await self.client.execute(
            operation: "StopEvaluationJob", 
            path: "/evaluation-job/{jobIdentifier}/stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an active model customization job. For more information, see Custom models in the Amazon Bedrock User Guide.
    @Sendable
    public func stopModelCustomizationJob(_ input: StopModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "StopModelCustomizationJob", 
            path: "/model-customization-jobs/{jobIdentifier}/stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associate tags with a resource. For more information, see  Tagging resources in the Amazon Bedrock User Guide.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove one or more tags from a resource. For more information, see  Tagging resources in the Amazon Bedrock User Guide.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/untagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a guardrail with the values you specify.   Specify a name and optional description.   Specify messages for when the guardrail successfully blocks a prompt or a model response in the blockedInputMessaging and blockedOutputsMessaging fields.   Specify topics for the guardrail to deny in the topicPolicyConfig object. Each GuardrailTopicConfig object in the topicsConfig list pertains to one topic.   Give a name and description so that the guardrail can properly identify the topic.   Specify DENY in the type field.   (Optional) Provide up to five prompts that you would categorize as belonging to the topic in the examples list.     Specify filter strengths for the harmful categories defined in Amazon Bedrock in the contentPolicyConfig object. Each GuardrailContentFilterConfig object in the filtersConfig list pertains to a harmful category. For more information, see Content filters. For more information about the fields in a content filter, see GuardrailContentFilterConfig.   Specify the category in the type field.   Specify the strength of the filter for prompts in the inputStrength field and for model responses in the strength field of the GuardrailContentFilterConfig.     (Optional) For security, include the ARN of a KMS key in the kmsKeyId field.   (Optional) Attach any tags to the guardrail in the tags object. For more information, see Tag resources.
    @Sendable
    public func updateGuardrail(_ input: UpdateGuardrailRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateGuardrailResponse {
        return try await self.client.execute(
            operation: "UpdateGuardrail", 
            path: "/guardrails/{guardrailIdentifier}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the name or associated model for a Provisioned Throughput. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    @Sendable
    public func updateProvisionedModelThroughput(_ input: UpdateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "UpdateProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Bedrock {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Bedrock, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Bedrock {
    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see Custom models in the Amazon Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCustomModelsPaginator(
        _ input: ListCustomModelsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCustomModelsRequest, ListCustomModelsResponse> {
        return .init(
            input: input,
            command: self.listCustomModels,
            inputKey: \ListCustomModelsRequest.nextToken,
            outputKey: \ListCustomModelsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists model evaluation jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEvaluationJobsPaginator(
        _ input: ListEvaluationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEvaluationJobsRequest, ListEvaluationJobsResponse> {
        return .init(
            input: input,
            command: self.listEvaluationJobs,
            inputKey: \ListEvaluationJobsRequest.nextToken,
            outputKey: \ListEvaluationJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists details about all the guardrails in an account. To list the DRAFT version of all your guardrails, don't specify the guardrailIdentifier field. To list all versions of a guardrail, specify the ARN of the guardrail in the guardrailIdentifier field. You can set the maximum number of results to return in a response in the maxResults field. If there are more results than the number you set, the response returns a nextToken that you can send in another ListGuardrails request to see the next batch of results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGuardrailsPaginator(
        _ input: ListGuardrailsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGuardrailsRequest, ListGuardrailsResponse> {
        return .init(
            input: input,
            command: self.listGuardrails,
            inputKey: \ListGuardrailsRequest.nextToken,
            outputKey: \ListGuardrailsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Amazon Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listModelCustomizationJobsPaginator(
        _ input: ListModelCustomizationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListModelCustomizationJobsRequest, ListModelCustomizationJobsResponse> {
        return .init(
            input: input,
            command: self.listModelCustomizationJobs,
            inputKey: \ListModelCustomizationJobsRequest.nextToken,
            outputKey: \ListModelCustomizationJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the Provisioned Throughputs in the account. For more information, see Provisioned Throughput in the Amazon Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProvisionedModelThroughputsPaginator(
        _ input: ListProvisionedModelThroughputsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProvisionedModelThroughputsRequest, ListProvisionedModelThroughputsResponse> {
        return .init(
            input: input,
            command: self.listProvisionedModelThroughputs,
            inputKey: \ListProvisionedModelThroughputsRequest.nextToken,
            outputKey: \ListProvisionedModelThroughputsResponse.nextToken,
            logger: logger
        )
    }
}

extension Bedrock.ListCustomModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListCustomModelsRequest {
        return .init(
            baseModelArnEquals: self.baseModelArnEquals,
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            foundationModelArnEquals: self.foundationModelArnEquals,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

extension Bedrock.ListEvaluationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListEvaluationJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )
    }
}

extension Bedrock.ListGuardrailsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListGuardrailsRequest {
        return .init(
            guardrailIdentifier: self.guardrailIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Bedrock.ListModelCustomizationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListModelCustomizationJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )
    }
}

extension Bedrock.ListProvisionedModelThroughputsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListProvisionedModelThroughputsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            modelArnEquals: self.modelArnEquals,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )
    }
}
