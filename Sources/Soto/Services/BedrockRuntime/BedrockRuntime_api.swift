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

/// Service object for interacting with AWS BedrockRuntime service.
///
/// Describes the API operations for running inference using Amazon Bedrock models.
public struct BedrockRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the BedrockRuntime client
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
            serviceName: "BedrockRuntime",
            serviceIdentifier: "bedrock-runtime",
            signingName: "bedrock",
            serviceProtocol: .restjson,
            apiVersion: "2023-09-30",
            endpoint: endpoint,
            errorType: BedrockRuntimeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Sends messages to the specified Amazon Bedrock model. Converse provides a consistent interface that works with all models that support messages. This allows you to write code once and use it with different models. Should a model have unique inference parameters, you can also pass those unique parameters to the model. For information about the Converse API, see Use the Converse API in the Amazon Bedrock User Guide. To use a guardrail, see  Use a guardrail with the Converse API in the Amazon Bedrock User Guide. To use a tool with a model, see Tool use (Function calling) in the Amazon Bedrock User Guide  For example code, see Converse API examples in the Amazon Bedrock User Guide.  This operation requires permission for the bedrock:InvokeModel action.
    @Sendable
    public func converse(_ input: ConverseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConverseResponse {
        return try await self.client.execute(
            operation: "Converse", 
            path: "/model/{modelId}/converse", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends messages to the specified Amazon Bedrock model and returns the response in a stream. ConverseStream provides a consistent API that works with all Amazon Bedrock models that support messages. This allows you to write code once and use it with different models. Should a model have unique inference parameters, you can also pass those unique parameters to the model.  To find out if a model supports streaming, call GetFoundationModel and check the responseStreamingSupported field in the response. For information about the Converse API, see Use the Converse API in the Amazon Bedrock User Guide. To use a guardrail, see  Use a guardrail with the Converse API in the Amazon Bedrock User Guide. To use a tool with a model, see Tool use (Function calling) in the Amazon Bedrock User Guide  For example code, see Conversation streaming example in the Amazon Bedrock User Guide.  This operation requires permission for the bedrock:InvokeModelWithResponseStream action.
    @Sendable
    public func converseStream(_ input: ConverseStreamRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConverseStreamResponse {
        return try await self.client.execute(
            operation: "ConverseStream", 
            path: "/model/{modelId}/converse-stream", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Invokes the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body.  You use model inference to generate text, images, and embeddings. For example code, see Invoke model code examples in the Amazon Bedrock User Guide.  This operation requires permission for the bedrock:InvokeModel action.
    @Sendable
    public func invokeModel(_ input: InvokeModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeModelResponse {
        return try await self.client.execute(
            operation: "InvokeModel", 
            path: "/model/{modelId}/invoke", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Invoke the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body. The response is returned in a stream. To see if a model supports streaming, call GetFoundationModel and check the responseStreamingSupported field in the response.  The CLI doesn't support InvokeModelWithResponseStream.  For example code, see Invoke model with streaming code example in the Amazon Bedrock User Guide.  This operation requires permissions to perform the bedrock:InvokeModelWithResponseStream action.
    @Sendable
    public func invokeModelWithResponseStream(_ input: InvokeModelWithResponseStreamRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeModelWithResponseStreamResponse {
        return try await self.client.execute(
            operation: "InvokeModelWithResponseStream", 
            path: "/model/{modelId}/invoke-with-response-stream", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension BedrockRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: BedrockRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
