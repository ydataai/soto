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

/// Service object for interacting with AWS SFN service.
///
/// Step Functions Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows. You can use Step Functions to build applications from individual components, each of which performs a discrete function, or task, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues. Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on Amazon Web Services, your own servers, or any system that has access to Amazon Web Services. You can access and use Step Functions using the console, the Amazon Web Services SDKs, or an HTTP API. For more information about Step Functions, see the  Step Functions Developer Guide .
public struct SFN: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SFN client
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
            amzTarget: "AWSStepFunctions",
            serviceName: "SFN",
            serviceIdentifier: "states",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2016-11-23",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SFNErrorType.self,
            xmlNamespace: "http://swf.amazonaws.com/doc/2015-07-20/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "states-fips.us-east-1.amazonaws.com",
            "us-east-2": "states-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "states-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "states.us-gov-west-1.amazonaws.com",
            "us-west-1": "states-fips.us-west-1.amazonaws.com",
            "us-west-2": "states-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to Step Functions. Activities must poll Step Functions using the GetActivityTask API action and respond using SendTask* API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateActivity is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateActivity's idempotency check is based on the activity name. If a following request has different tags values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different.
    @Sendable
    public func createActivity(_ input: CreateActivityInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateActivityOutput {
        return try await self.client.execute(
            operation: "CreateActivity", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a state machine. A state machine consists of a collection of states that can do work (Task states), determine to which states to transition next (Choice states), stop an execution with an error (Fail states), and so on. State machines are specified using a JSON-based, structured language. For more information, see Amazon States Language in the Step Functions User Guide.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateStateMachine is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateStateMachine's idempotency check is based on the state machine name, definition, type, LoggingConfiguration and TracingConfiguration. If a following request has a different roleArn or tags, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, roleArn and tags will not be updated, even if they are different.
    @Sendable
    public func createStateMachine(_ input: CreateStateMachineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateStateMachineOutput {
        return try await self.client.execute(
            operation: "CreateStateMachine", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an activity.
    @Sendable
    public func deleteActivity(_ input: DeleteActivityInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteActivityOutput {
        return try await self.client.execute(
            operation: "DeleteActivity", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to DELETING and begins the deletion process.   If the given state machine Amazon Resource Name (ARN) is a qualified state machine ARN, it will fail with ValidationException.  A qualified state machine ARN refers to a Distributed Map state defined within a state machine. For example, the qualified state machine ARN arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel refers to a Distributed Map state with a label mapStateLabel in the state machine named stateMachineName.   For EXPRESS state machines, the deletion will happen eventually (usually less than a minute). Running executions may emit logs after DeleteStateMachine API is called.
    @Sendable
    public func deleteStateMachine(_ input: DeleteStateMachineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteStateMachineOutput {
        return try await self.client.execute(
            operation: "DeleteStateMachine", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes an activity.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    @Sendable
    public func describeActivity(_ input: DescribeActivityInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeActivityOutput {
        return try await self.client.execute(
            operation: "DescribeActivity", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides all information about a state machine execution, such as the state machine associated with the execution, the execution input and output, and relevant execution metadata. Use this API action to return the Map Run ARN if the execution was dispatched by a Map Run.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machine executions unless they were dispatched by a Map Run.
    @Sendable
    public func describeExecution(_ input: DescribeExecutionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeExecutionOutput {
        return try await self.client.execute(
            operation: "DescribeExecution", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about a Map Run's configuration, progress, and results. For more information, see Examining Map Run in the Step Functions Developer Guide.
    @Sendable
    public func describeMapRun(_ input: DescribeMapRunInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeMapRunOutput {
        return try await self.client.execute(
            operation: "DescribeMapRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about a state machine's definition, its IAM role Amazon Resource Name (ARN), and configuration. If the state machine ARN is a qualified state machine ARN, the response returned includes the Map state's label.  A qualified state machine ARN refers to a Distributed Map state defined within a state machine. For example, the qualified state machine ARN arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel refers to a Distributed Map state with a label mapStateLabel in the state machine named stateMachineName.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    @Sendable
    public func describeStateMachine(_ input: DescribeStateMachineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeStateMachineOutput {
        return try await self.client.execute(
            operation: "DescribeStateMachine", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides information about a state machine's definition, its execution role ARN, and configuration. If an execution was dispatched by a Map Run, the Map Run is returned in the response. Additionally, the state machine returned will be the state machine associated with the Map Run.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    @Sendable
    public func describeStateMachineForExecution(_ input: DescribeStateMachineForExecutionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeStateMachineForExecutionOutput {
        return try await self.client.execute(
            operation: "DescribeStateMachineForExecution", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a taskToken with a null string.   This API action isn't logged in CloudTrail.    Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). Polling with GetActivityTask can cause latency in some implementations. See Avoid Latency When Polling for Activity Tasks in the Step Functions Developer Guide.
    @Sendable
    public func getActivityTask(_ input: GetActivityTaskInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetActivityTaskOutput {
        return try await self.client.execute(
            operation: "GetActivityTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This API action is not supported by EXPRESS state machines.
    @Sendable
    public func getExecutionHistory(_ input: GetExecutionHistoryInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetExecutionHistoryOutput {
        return try await self.client.execute(
            operation: "GetExecutionHistory", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the existing activities.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    @Sendable
    public func listActivities(_ input: ListActivitiesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListActivitiesOutput {
        return try await self.client.execute(
            operation: "ListActivities", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all executions of a state machine or a Map Run. You can list all executions related to a state machine by specifying a state machine Amazon Resource Name (ARN), or those related to a Map Run by specifying a Map Run ARN. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    @Sendable
    public func listExecutions(_ input: ListExecutionsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListExecutionsOutput {
        return try await self.client.execute(
            operation: "ListExecutions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all Map Runs that were started by a given state machine execution. Use this API action to obtain Map Run ARNs, and then call DescribeMapRun to obtain more information, if needed.
    @Sendable
    public func listMapRuns(_ input: ListMapRunsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMapRunsOutput {
        return try await self.client.execute(
            operation: "ListMapRuns", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the existing state machines.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    @Sendable
    public func listStateMachines(_ input: ListStateMachinesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListStateMachinesOutput {
        return try await self.client.execute(
            operation: "ListStateMachines", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List tags for a given resource.  Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken failed.
    @Sendable
    public func sendTaskFailure(_ input: SendTaskFailureInput, logger: Logger = AWSClient.loggingDisabled) async throws -> SendTaskFailureOutput {
        return try await self.client.execute(
            operation: "SendTaskFailure", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Used by activity workers and task states using the callback pattern to report to Step Functions that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an ActivityTimedOut entry for activities, or a TaskTimedOut entry for for tasks using the job run or callback pattern.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval for heartbeats.
    @Sendable
    public func sendTaskHeartbeat(_ input: SendTaskHeartbeatInput, logger: Logger = AWSClient.loggingDisabled) async throws -> SendTaskHeartbeatOutput {
        return try await self.client.execute(
            operation: "SendTaskHeartbeat", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken completed successfully.
    @Sendable
    public func sendTaskSuccess(_ input: SendTaskSuccessInput, logger: Logger = AWSClient.loggingDisabled) async throws -> SendTaskSuccessOutput {
        return try await self.client.execute(
            operation: "SendTaskSuccess", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a state machine execution. If the given state machine Amazon Resource Name (ARN) is a qualified state machine ARN, it will fail with ValidationException.  A qualified state machine ARN refers to a Distributed Map state defined within a state machine. For example, the qualified state machine ARN arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel refers to a Distributed Map state with a label mapStateLabel in the state machine named stateMachineName.    StartExecution is idempotent for STANDARD workflows. For a STANDARD workflow, if StartExecution is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90 days.   StartExecution is not idempotent for EXPRESS workflows.
    @Sendable
    public func startExecution(_ input: StartExecutionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StartExecutionOutput {
        return try await self.client.execute(
            operation: "StartExecution", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a Synchronous Express state machine execution. StartSyncExecution
    /// 			  is not available for STANDARD workflows.   StartSyncExecution will return a 200 OK response, even if your execution fails, because the status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your execution from running, such as permissions errors, limit errors, or issues with your state machine code and configuration.    This API action isn't logged in CloudTrail.
    @Sendable
    public func startSyncExecution(_ input: StartSyncExecutionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StartSyncExecutionOutput {
        return try await self.client.execute(
            operation: "StartSyncExecution", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "sync-", 
            logger: logger
        )
    }

    /// Stops an execution.  This API action is not supported by EXPRESS state machines.
    @Sendable
    public func stopExecution(_ input: StopExecutionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> StopExecutionOutput {
        return try await self.client.execute(
            operation: "StopExecution", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Add a tag to a Step Functions resource.  An array of key-value pairs. For more information, see Using Cost Allocation Tags in the Amazon Web Services Billing and Cost Management User Guide, and Controlling Access Using IAM Tags.  Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove a tag from a Step Functions resource
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an in-progress Map Run's configuration to include changes to the settings that control maximum concurrency and Map Run failure.
    @Sendable
    public func updateMapRun(_ input: UpdateMapRunInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateMapRunOutput {
        return try await self.client.execute(
            operation: "UpdateMapRun", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing state machine by modifying its definition, roleArn, or loggingConfiguration. Running executions will continue to use the previous definition and roleArn. You must include at least one of definition or roleArn or you will receive a MissingRequiredParameter error.  If the given state machine Amazon Resource Name (ARN) is a qualified state machine ARN, it will fail with ValidationException.  A qualified state machine ARN refers to a Distributed Map state defined within a state machine. For example, the qualified state machine ARN arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel refers to a Distributed Map state with a label mapStateLabel in the state machine named stateMachineName.   All StartExecution calls within a few seconds will use the updated definition and roleArn. Executions started immediately after calling UpdateStateMachine may use the previous state machine definition and roleArn.
    @Sendable
    public func updateStateMachine(_ input: UpdateStateMachineInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateStateMachineOutput {
        return try await self.client.execute(
            operation: "UpdateStateMachine", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SFN {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SFN, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SFN {
    /// Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This API action is not supported by EXPRESS state machines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getExecutionHistoryPaginator(
        _ input: GetExecutionHistoryInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetExecutionHistoryInput, GetExecutionHistoryOutput> {
        return .init(
            input: input,
            command: self.getExecutionHistory,
            inputKey: \GetExecutionHistoryInput.nextToken,
            outputKey: \GetExecutionHistoryOutput.nextToken,
            logger: logger
        )
    }

    /// Lists the existing activities.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listActivitiesPaginator(
        _ input: ListActivitiesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListActivitiesInput, ListActivitiesOutput> {
        return .init(
            input: input,
            command: self.listActivities,
            inputKey: \ListActivitiesInput.nextToken,
            outputKey: \ListActivitiesOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all executions of a state machine or a Map Run. You can list all executions related to a state machine by specifying a state machine Amazon Resource Name (ARN), or those related to a Map Run by specifying a Map Run ARN. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listExecutionsPaginator(
        _ input: ListExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListExecutionsInput, ListExecutionsOutput> {
        return .init(
            input: input,
            command: self.listExecutions,
            inputKey: \ListExecutionsInput.nextToken,
            outputKey: \ListExecutionsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all Map Runs that were started by a given state machine execution. Use this API action to obtain Map Run ARNs, and then call DescribeMapRun to obtain more information, if needed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMapRunsPaginator(
        _ input: ListMapRunsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMapRunsInput, ListMapRunsOutput> {
        return .init(
            input: input,
            command: self.listMapRuns,
            inputKey: \ListMapRunsInput.nextToken,
            outputKey: \ListMapRunsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists the existing state machines.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listStateMachinesPaginator(
        _ input: ListStateMachinesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListStateMachinesInput, ListStateMachinesOutput> {
        return .init(
            input: input,
            command: self.listStateMachines,
            inputKey: \ListStateMachinesInput.nextToken,
            outputKey: \ListStateMachinesOutput.nextToken,
            logger: logger
        )
    }
}

extension SFN.GetExecutionHistoryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SFN.GetExecutionHistoryInput {
        return .init(
            executionArn: self.executionArn,
            includeExecutionData: self.includeExecutionData,
            maxResults: self.maxResults,
            nextToken: token,
            reverseOrder: self.reverseOrder
        )
    }
}

extension SFN.ListActivitiesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListActivitiesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SFN.ListExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListExecutionsInput {
        return .init(
            mapRunArn: self.mapRunArn,
            maxResults: self.maxResults,
            nextToken: token,
            stateMachineArn: self.stateMachineArn,
            statusFilter: self.statusFilter
        )
    }
}

extension SFN.ListMapRunsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListMapRunsInput {
        return .init(
            executionArn: self.executionArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SFN.ListStateMachinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListStateMachinesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
