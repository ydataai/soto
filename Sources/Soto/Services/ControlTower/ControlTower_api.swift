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

/// Service object for interacting with AWS ControlTower service.
///
/// Amazon Web Services Control Tower offers application programming interface (API) operations that support programmatic interaction with these types of resources:     Controls      DisableControl     EnableControl     GetEnabledControl     ListControlOperations     ListEnabledControls     UpdateEnabledControl        Landing zones      CreateLandingZone     DeleteLandingZone     GetLandingZone     GetLandingZoneOperation     ListLandingZones     ResetLandingZone     UpdateLandingZone        Baselines      DisableBaseline     EnableBaseline     GetBaseline     GetBaselineOperation     GetEnabledBaseline     ListBaselines     ListEnabledBaselines     ResetEnabledBaseline     UpdateEnabledBaseline       Tagging     ListTagsForResource     TagResource     UntagResource      For more information about these types of resources, see the  Amazon Web Services Control Tower User Guide .  About control APIs  These interfaces allow you to apply the Amazon Web Services library of pre-defined controls to your organizational units, programmatically. In Amazon Web Services Control Tower, the terms "control" and "guardrail" are synonyms. To call these APIs, you'll need to know:   the controlIdentifier for the control--or guardrail--you are targeting.   the ARN associated with the target organizational unit (OU), which we call the targetIdentifier.   the ARN associated with a resource that you wish to tag or untag.    To get the controlIdentifier for your Amazon Web Services Control Tower control:  The controlIdentifier is an ARN that is specified for each control. You can view the controlIdentifier in the console on the Control details page, as well as in the documentation. The controlIdentifier is unique in each Amazon Web Services Region for each control. You can find the controlIdentifier for each Region and control in the Tables of control metadata or the Control availability by Region tables in the Amazon Web Services Control Tower Controls Reference Guide. A quick-reference list of control identifers for the Amazon Web Services Control Tower legacy Strongly recommended and Elective controls is given in Resource identifiers for APIs and controls in the  Amazon Web Services Control Tower Controls Reference Guide . Remember that Mandatory controls cannot be added or removed.   ARN format: arn:aws:controltower:{REGION}::control/{CONTROL_NAME}   Example:   arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED    To get the targetIdentifier:  The targetIdentifier is the ARN for an OU. In the Amazon Web Services Organizations console, you can find the ARN for the OU on the Organizational unit details page associated with that OU.   OU ARN format:   arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}    About landing zone APIs  You can configure and launch an Amazon Web Services Control Tower landing zone with APIs. For an introduction and steps, see Getting started with Amazon Web Services Control Tower using APIs. For an overview of landing zone API operations, see  Amazon Web Services Control Tower supports landing zone APIs. The individual API operations for landing zones are detailed in this document, the API reference manual, in the "Actions" section.  About baseline APIs  You can apply the AWSControlTowerBaseline baseline to an organizational unit (OU) as a way to register the OU with Amazon Web Services Control Tower, programmatically. For a general overview of this capability, see Amazon Web Services Control Tower supports APIs for OU registration and configuration with baselines. You can call the baseline API operations to view the baselines that Amazon Web Services Control Tower enables for your landing zone, on your behalf, when setting up the landing zone. These baselines are read-only baselines. The individual API operations for baselines are detailed in this document, the API reference manual, in the "Actions" section. For usage examples, see Baseline API input and output examples with CLI.  Details and examples     Control API input and output examples with CLI     Baseline API input and output examples with CLI     Enable controls with CloudFormation     Launch a landing zone with CloudFormation     Control metadata tables (large page)     Control availability by Region tables (large page)     List of identifiers for legacy controls     Controls reference guide     Controls library groupings     Creating Amazon Web Services Control Tower resources with Amazon Web Services CloudFormation    To view the open source resource repository on GitHub, see aws-cloudformation/aws-cloudformation-resource-providers-controltower   Recording API Requests  Amazon Web Services Control Tower supports Amazon Web Services CloudTrail, a service that records Amazon Web Services API calls for your Amazon Web Services account and delivers log files to an Amazon S3 bucket. By using information collected by CloudTrail, you can determine which requests the Amazon Web Services Control Tower service received, who made the request and when, and so on. For more about Amazon Web Services Control Tower and its support for CloudTrail, see Logging Amazon Web Services Control Tower Actions with Amazon Web Services CloudTrail in the Amazon Web Services Control Tower User Guide. To learn more about CloudTrail, including how to turn it on and find your log files, see the Amazon Web Services CloudTrail User Guide.
public struct ControlTower: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ControlTower client
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
            serviceName: "ControlTower",
            serviceIdentifier: "controltower",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ControlTowerErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "controltower-fips.ca-central-1.amazonaws.com",
            "ca-west-1": "controltower-fips.ca-west-1.amazonaws.com",
            "us-east-1": "controltower-fips.us-east-1.amazonaws.com",
            "us-east-2": "controltower-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "controltower-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "controltower-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "controltower-fips.us-west-1.amazonaws.com",
            "us-west-2": "controltower-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates a new landing zone. This API call starts an asynchronous operation that creates and configures a landing zone,  based on the parameters specified in the manifest JSON file.
    @Sendable
    public func createLandingZone(_ input: CreateLandingZoneInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLandingZoneOutput {
        return try await self.client.execute(
            operation: "CreateLandingZone", 
            path: "/create-landingzone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Decommissions a landing zone. This API call starts an asynchronous operation that deletes Amazon Web Services Control Tower  resources deployed in accounts managed by Amazon Web Services Control Tower.
    @Sendable
    public func deleteLandingZone(_ input: DeleteLandingZoneInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLandingZoneOutput {
        return try await self.client.execute(
            operation: "DeleteLandingZone", 
            path: "/delete-landingzone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disable an EnabledBaseline resource on the specified Target. This API starts an asynchronous operation to remove all resources deployed as part of the baseline enablement. The resource will vary depending on the enabled baseline. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func disableBaseline(_ input: DisableBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DisableBaselineOutput {
        return try await self.client.execute(
            operation: "DisableBaseline", 
            path: "/disable-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This API call turns off a control. It starts an asynchronous operation that deletes Amazon Web Services resources on the specified organizational unit and the accounts it contains. The resources will vary according to the control that you specify. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func disableControl(_ input: DisableControlInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DisableControlOutput {
        return try await self.client.execute(
            operation: "DisableControl", 
            path: "/disable-control", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Enable (apply) a Baseline to a Target. This API starts an asynchronous operation to deploy resources specified by the Baseline to the specified Target. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func enableBaseline(_ input: EnableBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> EnableBaselineOutput {
        return try await self.client.execute(
            operation: "EnableBaseline", 
            path: "/enable-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This API call activates a control. It starts an asynchronous operation that creates Amazon Web Services resources on the specified organizational unit and the accounts it contains. The resources created will vary according to the control that you specify. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func enableControl(_ input: EnableControlInput, logger: Logger = AWSClient.loggingDisabled) async throws -> EnableControlOutput {
        return try await self.client.execute(
            operation: "EnableControl", 
            path: "/enable-control", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve details about an existing Baseline resource by specifying its identifier. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func getBaseline(_ input: GetBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBaselineOutput {
        return try await self.client.execute(
            operation: "GetBaseline", 
            path: "/get-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details of an asynchronous baseline operation, as initiated by any of these APIs: EnableBaseline, DisableBaseline, UpdateEnabledBaseline, ResetEnabledBaseline. A status message is displayed in case of operation failure. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func getBaselineOperation(_ input: GetBaselineOperationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBaselineOperationOutput {
        return try await self.client.execute(
            operation: "GetBaselineOperation", 
            path: "/get-baseline-operation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the status of a particular EnableControl or DisableControl operation. Displays a message in case of error. Details for an operation are available for 90 days. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func getControlOperation(_ input: GetControlOperationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetControlOperationOutput {
        return try await self.client.execute(
            operation: "GetControlOperation", 
            path: "/get-control-operation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve details of an EnabledBaseline resource by specifying its identifier.
    @Sendable
    public func getEnabledBaseline(_ input: GetEnabledBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEnabledBaselineOutput {
        return try await self.client.execute(
            operation: "GetEnabledBaseline", 
            path: "/get-enabled-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves details about an enabled control. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func getEnabledControl(_ input: GetEnabledControlInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetEnabledControlOutput {
        return try await self.client.execute(
            operation: "GetEnabledControl", 
            path: "/get-enabled-control", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns details about the landing zone. Displays a message in case of error.
    @Sendable
    public func getLandingZone(_ input: GetLandingZoneInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLandingZoneOutput {
        return try await self.client.execute(
            operation: "GetLandingZone", 
            path: "/get-landingzone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the status of the specified landing zone operation. Details for an operation are available for  90 days.
    @Sendable
    public func getLandingZoneOperation(_ input: GetLandingZoneOperationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLandingZoneOperationOutput {
        return try await self.client.execute(
            operation: "GetLandingZoneOperation", 
            path: "/get-landingzone-operation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a summary list of all available baselines. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func listBaselines(_ input: ListBaselinesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListBaselinesOutput {
        return try await self.client.execute(
            operation: "ListBaselines", 
            path: "/list-baselines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides a list of operations in progress or queued. For usage examples, see ListControlOperation examples.
    @Sendable
    public func listControlOperations(_ input: ListControlOperationsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListControlOperationsOutput {
        return try await self.client.execute(
            operation: "ListControlOperations", 
            path: "/list-control-operations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of summaries describing EnabledBaseline resources. You can filter the list by the corresponding Baseline or Target of the EnabledBaseline resources. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func listEnabledBaselines(_ input: ListEnabledBaselinesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEnabledBaselinesOutput {
        return try await self.client.execute(
            operation: "ListEnabledBaselines", 
            path: "/list-enabled-baselines", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the controls enabled by Amazon Web Services Control Tower on the specified organizational unit and the accounts it contains. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func listEnabledControls(_ input: ListEnabledControlsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEnabledControlsOutput {
        return try await self.client.execute(
            operation: "ListEnabledControls", 
            path: "/list-enabled-controls", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all landing zone operations from the past 90 days. Results are sorted by time, with the most recent operation first.
    @Sendable
    public func listLandingZoneOperations(_ input: ListLandingZoneOperationsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLandingZoneOperationsOutput {
        return try await self.client.execute(
            operation: "ListLandingZoneOperations", 
            path: "/list-landingzone-operations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the landing zone ARN for the landing zone deployed in your managed account. This API also  creates an ARN for existing accounts that do not yet have a landing zone ARN.  Returns one landing zone ARN.
    @Sendable
    public func listLandingZones(_ input: ListLandingZonesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLandingZonesOutput {
        return try await self.client.execute(
            operation: "ListLandingZones", 
            path: "/list-landingzones", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of tags associated with the resource. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Re-enables an EnabledBaseline resource. For example, this API can re-apply the existing Baseline after a new member account is moved to the target OU. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func resetEnabledBaseline(_ input: ResetEnabledBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ResetEnabledBaselineOutput {
        return try await self.client.execute(
            operation: "ResetEnabledBaseline", 
            path: "/reset-enabled-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This API call resets a landing zone. It starts an asynchronous operation that resets the landing zone to the parameters specified in the original configuration, which you specified in the manifest file. Nothing in the manifest file's original landing zone configuration is changed during the reset process, by default. This API is not the same as a rollback of a landing zone version, which is not a supported operation.
    @Sendable
    public func resetLandingZone(_ input: ResetLandingZoneInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ResetLandingZoneOutput {
        return try await self.client.execute(
            operation: "ResetLandingZone", 
            path: "/reset-landingzone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Applies tags to a resource. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from a resource. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an EnabledBaseline resource's applied parameters or version. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    @Sendable
    public func updateEnabledBaseline(_ input: UpdateEnabledBaselineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnabledBaselineOutput {
        return try await self.client.execute(
            operation: "UpdateEnabledBaseline", 
            path: "/update-enabled-baseline", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Updates the configuration of an already enabled control. If the enabled control shows an EnablementStatus of SUCCEEDED, supply parameters that are different from the currently configured parameters. Otherwise, Amazon Web Services Control Tower will not accept the request. If the enabled control shows an EnablementStatus of FAILED, Amazon Web Services Control Tower updates the control to match any valid parameters that you supply. If the DriftSummary status for the control shows as DRIFTED, you cannot call this API. Instead, you can update the control by calling DisableControl and again calling EnableControl, or you can run an extending governance operation. For usage examples, see the  Controls Reference Guide .
    @Sendable
    public func updateEnabledControl(_ input: UpdateEnabledControlInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateEnabledControlOutput {
        return try await self.client.execute(
            operation: "UpdateEnabledControl", 
            path: "/update-enabled-control", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This API call updates the landing zone. It starts an asynchronous operation that updates the  landing zone based on the new landing zone version, or on the changed parameters specified in the  updated manifest file.
    @Sendable
    public func updateLandingZone(_ input: UpdateLandingZoneInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLandingZoneOutput {
        return try await self.client.execute(
            operation: "UpdateLandingZone", 
            path: "/update-landingzone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ControlTower {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ControlTower, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ControlTower {
    /// Returns a summary list of all available baselines. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listBaselinesPaginator(
        _ input: ListBaselinesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListBaselinesInput, ListBaselinesOutput> {
        return .init(
            input: input,
            command: self.listBaselines,
            inputKey: \ListBaselinesInput.nextToken,
            outputKey: \ListBaselinesOutput.nextToken,
            logger: logger
        )
    }

    /// Provides a list of operations in progress or queued. For usage examples, see ListControlOperation examples.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listControlOperationsPaginator(
        _ input: ListControlOperationsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListControlOperationsInput, ListControlOperationsOutput> {
        return .init(
            input: input,
            command: self.listControlOperations,
            inputKey: \ListControlOperationsInput.nextToken,
            outputKey: \ListControlOperationsOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a list of summaries describing EnabledBaseline resources. You can filter the list by the corresponding Baseline or Target of the EnabledBaseline resources. For usage examples, see  the Amazon Web Services Control Tower User Guide .
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEnabledBaselinesPaginator(
        _ input: ListEnabledBaselinesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEnabledBaselinesInput, ListEnabledBaselinesOutput> {
        return .init(
            input: input,
            command: self.listEnabledBaselines,
            inputKey: \ListEnabledBaselinesInput.nextToken,
            outputKey: \ListEnabledBaselinesOutput.nextToken,
            logger: logger
        )
    }

    /// Lists the controls enabled by Amazon Web Services Control Tower on the specified organizational unit and the accounts it contains. For usage examples, see the  Controls Reference Guide .
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEnabledControlsPaginator(
        _ input: ListEnabledControlsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEnabledControlsInput, ListEnabledControlsOutput> {
        return .init(
            input: input,
            command: self.listEnabledControls,
            inputKey: \ListEnabledControlsInput.nextToken,
            outputKey: \ListEnabledControlsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all landing zone operations from the past 90 days. Results are sorted by time, with the most recent operation first.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLandingZoneOperationsPaginator(
        _ input: ListLandingZoneOperationsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLandingZoneOperationsInput, ListLandingZoneOperationsOutput> {
        return .init(
            input: input,
            command: self.listLandingZoneOperations,
            inputKey: \ListLandingZoneOperationsInput.nextToken,
            outputKey: \ListLandingZoneOperationsOutput.nextToken,
            logger: logger
        )
    }

    /// Returns the landing zone ARN for the landing zone deployed in your managed account. This API also  creates an ARN for existing accounts that do not yet have a landing zone ARN.  Returns one landing zone ARN.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLandingZonesPaginator(
        _ input: ListLandingZonesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLandingZonesInput, ListLandingZonesOutput> {
        return .init(
            input: input,
            command: self.listLandingZones,
            inputKey: \ListLandingZonesInput.nextToken,
            outputKey: \ListLandingZonesOutput.nextToken,
            logger: logger
        )
    }
}

extension ControlTower.ListBaselinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListBaselinesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ControlTower.ListControlOperationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListControlOperationsInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ControlTower.ListEnabledBaselinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListEnabledBaselinesInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ControlTower.ListEnabledControlsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListEnabledControlsInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            targetIdentifier: self.targetIdentifier
        )
    }
}

extension ControlTower.ListLandingZoneOperationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListLandingZoneOperationsInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ControlTower.ListLandingZonesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ControlTower.ListLandingZonesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
