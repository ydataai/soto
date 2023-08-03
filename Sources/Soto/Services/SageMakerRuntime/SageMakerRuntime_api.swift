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

/// Service object for interacting with AWS SageMakerRuntime service.
///
///  The Amazon SageMaker runtime API.
public struct SageMakerRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SageMakerRuntime client
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
            serviceName: "SageMakerRuntime",
            serviceIdentifier: "runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2017-05-13",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SageMakerRuntimeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "af-south-1": "runtime-fips.sagemaker.af-south-1.amazonaws.com",
            "ap-east-1": "runtime-fips.sagemaker.ap-east-1.amazonaws.com",
            "ap-northeast-1": "runtime-fips.sagemaker.ap-northeast-1.amazonaws.com",
            "ap-northeast-2": "runtime-fips.sagemaker.ap-northeast-2.amazonaws.com",
            "ap-northeast-3": "runtime-fips.sagemaker.ap-northeast-3.amazonaws.com",
            "ap-south-1": "runtime-fips.sagemaker.ap-south-1.amazonaws.com",
            "ap-south-2": "runtime-fips.sagemaker.ap-south-2.amazonaws.com",
            "ap-southeast-1": "runtime-fips.sagemaker.ap-southeast-1.amazonaws.com",
            "ap-southeast-2": "runtime-fips.sagemaker.ap-southeast-2.amazonaws.com",
            "ap-southeast-3": "runtime-fips.sagemaker.ap-southeast-3.amazonaws.com",
            "ap-southeast-4": "runtime-fips.sagemaker.ap-southeast-4.amazonaws.com",
            "ca-central-1": "runtime-fips.sagemaker.ca-central-1.amazonaws.com",
            "eu-central-1": "runtime-fips.sagemaker.eu-central-1.amazonaws.com",
            "eu-central-2": "runtime-fips.sagemaker.eu-central-2.amazonaws.com",
            "eu-north-1": "runtime-fips.sagemaker.eu-north-1.amazonaws.com",
            "eu-south-1": "runtime-fips.sagemaker.eu-south-1.amazonaws.com",
            "eu-south-2": "runtime-fips.sagemaker.eu-south-2.amazonaws.com",
            "eu-west-1": "runtime-fips.sagemaker.eu-west-1.amazonaws.com",
            "eu-west-2": "runtime-fips.sagemaker.eu-west-2.amazonaws.com",
            "eu-west-3": "runtime-fips.sagemaker.eu-west-3.amazonaws.com",
            "me-central-1": "runtime-fips.sagemaker.me-central-1.amazonaws.com",
            "me-south-1": "runtime-fips.sagemaker.me-south-1.amazonaws.com",
            "sa-east-1": "runtime-fips.sagemaker.sa-east-1.amazonaws.com",
            "us-east-1": "runtime-fips.sagemaker.us-east-1.amazonaws.com",
            "us-east-2": "runtime-fips.sagemaker.us-east-2.amazonaws.com",
            "us-gov-east-1": "runtime.sagemaker.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "runtime.sagemaker.us-gov-west-1.amazonaws.com",
            "us-west-1": "runtime-fips.sagemaker.us-west-1.amazonaws.com",
            "us-west-2": "runtime-fips.sagemaker.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.  For an overview of Amazon SageMaker, see How It Works.  Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.  Calls to InvokeEndpoint are authenticated by using Amazon Web Services Signature Version 4. For information, see Authenticating Requests (Amazon Web Services Signature Version 4) in the Amazon S3 API Reference. A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.  Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller.
    @Sendable
    public func invokeEndpoint(_ input: InvokeEndpointInput, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeEndpointOutput {
        return try await self.client.execute(
            operation: "InvokeEndpoint", 
            path: "/endpoints/{EndpointName}/invocations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint in an asynchronous manner. Inference requests sent to this API are enqueued for asynchronous processing. The processing of the inference request may or may not complete before you receive a response from this API. The response from this API will not contain the result of the inference request but contain information about where you can locate it. Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax. Calls to InvokeEndpointAsync are authenticated by using Amazon Web Services Signature Version 4. For information, see Authenticating Requests (Amazon Web Services Signature Version 4) in the Amazon S3 API Reference.
    @Sendable
    public func invokeEndpointAsync(_ input: InvokeEndpointAsyncInput, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeEndpointAsyncOutput {
        return try await self.client.execute(
            operation: "InvokeEndpointAsync", 
            path: "/endpoints/{EndpointName}/async-invocations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SageMakerRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SageMakerRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
