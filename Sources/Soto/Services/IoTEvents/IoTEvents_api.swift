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

/// Service object for interacting with AWS IoTEvents service.
///
/// AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events API operations to create, read, update, and delete inputs and detector models, and to list their versions.
public struct IoTEvents: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTEvents client
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
            serviceName: "IoTEvents",
            serviceIdentifier: "iotevents",
            serviceProtocol: .restjson,
            apiVersion: "2018-07-27",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: IoTEventsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "iotevents-fips.ca-central-1.amazonaws.com",
            "us-east-1": "iotevents-fips.us-east-1.amazonaws.com",
            "us-east-2": "iotevents-fips.us-east-2.amazonaws.com",
            "us-gov-west-1": "iotevents-fips.us-gov-west-1.amazonaws.com",
            "us-west-2": "iotevents-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see Create an alarm model in the AWS IoT Events Developer Guide.
    @Sendable
    public func createAlarmModel(_ input: CreateAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAlarmModelResponse {
        return try await self.client.execute(
            operation: "CreateAlarmModel", 
            path: "/alarm-models", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a detector model.
    @Sendable
    public func createDetectorModel(_ input: CreateDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDetectorModelResponse {
        return try await self.client.execute(
            operation: "CreateDetectorModel", 
            path: "/detector-models", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an input.
    @Sendable
    public func createInput(_ input: CreateInputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateInputResponse {
        return try await self.client.execute(
            operation: "CreateInput", 
            path: "/inputs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an alarm model. Any alarm instances that were created based on this alarm model are also deleted. This action can't be undone.
    @Sendable
    public func deleteAlarmModel(_ input: DeleteAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAlarmModelResponse {
        return try await self.client.execute(
            operation: "DeleteAlarmModel", 
            path: "/alarm-models/{alarmModelName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a detector model. Any active instances of the detector model are also deleted.
    @Sendable
    public func deleteDetectorModel(_ input: DeleteDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDetectorModelResponse {
        return try await self.client.execute(
            operation: "DeleteDetectorModel", 
            path: "/detector-models/{detectorModelName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an input.
    @Sendable
    public func deleteInput(_ input: DeleteInputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteInputResponse {
        return try await self.client.execute(
            operation: "DeleteInput", 
            path: "/inputs/{inputName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about an alarm model. If you don't specify a value for the alarmModelVersion parameter, the latest version is returned.
    @Sendable
    public func describeAlarmModel(_ input: DescribeAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAlarmModelResponse {
        return try await self.client.execute(
            operation: "DescribeAlarmModel", 
            path: "/alarm-models/{alarmModelName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    @Sendable
    public func describeDetectorModel(_ input: DescribeDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDetectorModelResponse {
        return try await self.client.execute(
            operation: "DescribeDetectorModel", 
            path: "/detector-models/{detectorModelName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves runtime information about a detector model analysis.  After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    @Sendable
    public func describeDetectorModelAnalysis(_ input: DescribeDetectorModelAnalysisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDetectorModelAnalysisResponse {
        return try await self.client.execute(
            operation: "DescribeDetectorModelAnalysis", 
            path: "/analysis/detector-models/{analysisId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes an input.
    @Sendable
    public func describeInput(_ input: DescribeInputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeInputResponse {
        return try await self.client.execute(
            operation: "DescribeInput", 
            path: "/inputs/{inputName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the current settings of the AWS IoT Events logging options.
    @Sendable
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeLoggingOptionsResponse {
        return try await self.client.execute(
            operation: "DescribeLoggingOptions", 
            path: "/logging", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves one or more analysis results of the detector model.  After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    @Sendable
    public func getDetectorModelAnalysisResults(_ input: GetDetectorModelAnalysisResultsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDetectorModelAnalysisResultsResponse {
        return try await self.client.execute(
            operation: "GetDetectorModelAnalysisResults", 
            path: "/analysis/detector-models/{analysisId}/results", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the versions of an alarm model. The operation returns only the metadata associated with each alarm model version.
    @Sendable
    public func listAlarmModelVersions(_ input: ListAlarmModelVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAlarmModelVersionsResponse {
        return try await self.client.execute(
            operation: "ListAlarmModelVersions", 
            path: "/alarm-models/{alarmModelName}/versions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the alarm models that you created. The operation returns only the metadata associated with each alarm model.
    @Sendable
    public func listAlarmModels(_ input: ListAlarmModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAlarmModelsResponse {
        return try await self.client.execute(
            operation: "ListAlarmModels", 
            path: "/alarm-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    @Sendable
    public func listDetectorModelVersions(_ input: ListDetectorModelVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDetectorModelVersionsResponse {
        return try await self.client.execute(
            operation: "ListDetectorModelVersions", 
            path: "/detector-models/{detectorModelName}/versions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    @Sendable
    public func listDetectorModels(_ input: ListDetectorModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDetectorModelsResponse {
        return try await self.client.execute(
            operation: "ListDetectorModels", 
            path: "/detector-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists one or more input routings.
    @Sendable
    public func listInputRoutings(_ input: ListInputRoutingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListInputRoutingsResponse {
        return try await self.client.execute(
            operation: "ListInputRoutings", 
            path: "/input-routings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the inputs you have created.
    @Sendable
    public func listInputs(_ input: ListInputsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListInputsResponse {
        return try await self.client.execute(
            operation: "ListInputs", 
            path: "/inputs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags (metadata) you have assigned to the resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    @Sendable
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "PutLoggingOptions", 
            path: "/logging", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Performs an analysis of your detector model. For more information,  see Troubleshooting a detector model  in the AWS IoT Events Developer Guide.
    @Sendable
    public func startDetectorModelAnalysis(_ input: StartDetectorModelAnalysisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDetectorModelAnalysisResponse {
        return try await self.client.execute(
            operation: "StartDetectorModelAnalysis", 
            path: "/analysis/detector-models", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the given tags (metadata) from the resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an alarm model. Any alarms that were created based on the previous version are deleted and then created again as new data arrives.
    @Sendable
    public func updateAlarmModel(_ input: UpdateAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAlarmModelResponse {
        return try await self.client.execute(
            operation: "UpdateAlarmModel", 
            path: "/alarm-models/{alarmModelName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    @Sendable
    public func updateDetectorModel(_ input: UpdateDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDetectorModelResponse {
        return try await self.client.execute(
            operation: "UpdateDetectorModel", 
            path: "/detector-models/{detectorModelName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an input.
    @Sendable
    public func updateInput(_ input: UpdateInputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateInputResponse {
        return try await self.client.execute(
            operation: "UpdateInput", 
            path: "/inputs/{inputName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension IoTEvents {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTEvents, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
