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

/// Service object for interacting with AWS RUM service.
///
/// With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about  your web application performance from actual user sessions in real time. The data collected includes page load  times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and  also see breakdowns by the browsers and devices that your customers use. You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch  RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error  messages, stack traces, and user sessions. You can also use RUM to  understand the range of end-user impact including the number of users, geolocations, and browsers used.
public struct RUM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RUM client
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
            serviceName: "RUM",
            serviceIdentifier: "rum",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: RUMErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Specifies the extended metrics and custom metrics that you want a CloudWatch RUM app monitor to send to a destination. Valid destinations include CloudWatch and Evidently. By default, RUM app monitors send some metrics to CloudWatch. These default metrics are listed in CloudWatch metrics that you can collect  with CloudWatch RUM. In addition to these default metrics, you can choose to send extended metrics or custom metrics or both.   Extended metrics enable you to send metrics with additional dimensions not included  in the default metrics. You can also send extended metrics to Evidently as well as CloudWatch.  The valid dimension names for the additional dimensions for extended metrics are BrowserName, CountryCode, DeviceType, FileType, OSName, and PageId. For more information, see   Extended metrics that you can send to CloudWatch and CloudWatch Evidently.   Custom metrics are metrics that you define. You can send custom metrics to CloudWatch or to CloudWatch Evidently or to both. With custom metrics,  you can use any metric name and namespace, and to derive the metrics you can use any custom events, built-in events,  custom attributes, or default attributes.  You can't send custom metrics to the AWS/RUM namespace. You must send custom metrics to a  custom namespace that you define. The namespace that you use can't start with AWS/.  CloudWatch RUM prepends RUM/CustomMetrics/ to the custom namespace that you define,  so the final namespace for your metrics in CloudWatch is  RUM/CustomMetrics/your-custom-namespace .   The maximum number of metric definitions that you can specify in one  BatchCreateRumMetricDefinitions operation is 200. The maximum number of metric definitions that one destination can contain is 2000. Extended metrics sent to CloudWatch and RUM custom metrics are charged as CloudWatch custom metrics. Each combination of additional dimension name and dimension value counts as a custom metric. For more information, see  Amazon CloudWatch Pricing. You must have already created a destination for the metrics before you send them. For more information, see  PutRumMetricsDestination. If some metric definitions specified in a BatchCreateRumMetricDefinitions operations are not valid, those metric definitions fail and return errors, but all valid metric definitions in the same operation still succeed.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/BatchCreateRumMetricDefinitions.html
    @Sendable
    public func batchCreateRumMetricDefinitions(_ input: BatchCreateRumMetricDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchCreateRumMetricDefinitionsResponse {
        return try await self.client.execute(
            operation: "BatchCreateRumMetricDefinitions", 
            path: "/rummetrics/{AppMonitorName}/metrics", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified metrics from being sent to an extended metrics destination. If some metric definition IDs specified in a BatchDeleteRumMetricDefinitions operations are not valid, those metric definitions fail and return errors, but all valid metric definition IDs in the same operation are still  deleted. The maximum number of metric definitions that you can specify in one  BatchDeleteRumMetricDefinitions operation is 200.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/BatchDeleteRumMetricDefinitions.html
    @Sendable
    public func batchDeleteRumMetricDefinitions(_ input: BatchDeleteRumMetricDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchDeleteRumMetricDefinitionsResponse {
        return try await self.client.execute(
            operation: "BatchDeleteRumMetricDefinitions", 
            path: "/rummetrics/{AppMonitorName}/metrics", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single destination.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html
    @Sendable
    public func batchGetRumMetricDefinitions(_ input: BatchGetRumMetricDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchGetRumMetricDefinitionsResponse {
        return try await self.client.execute(
            operation: "BatchGetRumMetricDefinitions", 
            path: "/rummetrics/{AppMonitorName}/metrics", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM. The data includes performance and reliability information such as page load time, client-side errors,  and user behavior. You use this operation only to create a new app monitor. To update an existing app monitor, use UpdateAppMonitor instead. After you create an app monitor, sign in to the CloudWatch RUM console to get  the JavaScript code snippet to add to your web application. For more information, see How do I find a code snippet that I've already generated?
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html
    @Sendable
    public func createAppMonitor(_ input: CreateAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAppMonitorResponse {
        return try await self.client.execute(
            operation: "CreateAppMonitor", 
            path: "/appmonitor", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing app monitor. This immediately stops the collection of data.
    @Sendable
    public func deleteAppMonitor(_ input: DeleteAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAppMonitorResponse {
        return try await self.client.execute(
            operation: "DeleteAppMonitor", 
            path: "/appmonitor/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a destination for CloudWatch RUM extended metrics, so that the specified app monitor stops sending extended metrics to that destination.
    @Sendable
    public func deleteRumMetricsDestination(_ input: DeleteRumMetricsDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRumMetricsDestinationResponse {
        return try await self.client.execute(
            operation: "DeleteRumMetricsDestination", 
            path: "/rummetrics/{AppMonitorName}/metricsdestination", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the complete configuration information for one app monitor.
    @Sendable
    public func getAppMonitor(_ input: GetAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppMonitorResponse {
        return try await self.client.execute(
            operation: "GetAppMonitor", 
            path: "/appmonitor/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    @Sendable
    public func getAppMonitorData(_ input: GetAppMonitorDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAppMonitorDataResponse {
        return try await self.client.execute(
            operation: "GetAppMonitorData", 
            path: "/appmonitor/{Name}/data", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    @Sendable
    public func listAppMonitors(_ input: ListAppMonitorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAppMonitorsResponse {
        return try await self.client.execute(
            operation: "ListAppMonitors", 
            path: "/appmonitors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of destinations that you have created to receive RUM extended metrics,  for the specified app monitor. For more information about extended metrics, see AddRumMetrics.
    @Sendable
    public func listRumMetricsDestinations(_ input: ListRumMetricsDestinationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRumMetricsDestinationsResponse {
        return try await self.client.execute(
            operation: "ListRumMetricsDestinations", 
            path: "/rummetrics/{AppMonitorName}/metricsdestination", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the tags associated with a CloudWatch RUM resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code  snippet that RUM generates for you to add to your application includes PutRumEvents operations to  send this data to RUM. Each PutRumEvents operation can send a batch of events from one user session.
    @Sendable
    public func putRumEvents(_ input: PutRumEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutRumEventsResponse {
        return try await self.client.execute(
            operation: "PutRumEvents", 
            path: "/appmonitors/{Id}/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "dataplane.", 
            logger: logger
        )
    }

    /// Creates or updates a destination to receive extended metrics from CloudWatch RUM. You can send extended metrics to CloudWatch or to a CloudWatch Evidently experiment. For more information about extended metrics, see BatchCreateRumMetricDefinitions.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/PutRumMetricsDestination.html
    @Sendable
    public func putRumMetricsDestination(_ input: PutRumMetricsDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutRumMetricsDestinationResponse {
        return try await self.client.execute(
            operation: "PutRumMetricsDestination", 
            path: "/rummetrics/{AppMonitorName}/metricsdestination", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently,  the only resources that  can be tagged app monitors. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags.  If you specify a new tag key for the resource,  this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see Tagging Amazon Web Services resources.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor configuration that you specify in this operation are changed. For any parameters that you omit, the existing values are kept. You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use TagResource. To create a new app monitor, use CreateAppMonitor. After you update an app monitor, sign in to the CloudWatch RUM console to get  the updated JavaScript code snippet to add to your web application. For more information, see How do I find a code snippet that I've already generated?
    @Sendable
    public func updateAppMonitor(_ input: UpdateAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAppMonitorResponse {
        return try await self.client.execute(
            operation: "UpdateAppMonitor", 
            path: "/appmonitor/{Name}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies one existing metric definition for CloudWatch RUM extended metrics. For  more information about extended metrics, see BatchCreateRumMetricsDefinitions.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/UpdateRumMetricDefinitions.html
    @Sendable
    public func updateRumMetricDefinition(_ input: UpdateRumMetricDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRumMetricDefinitionResponse {
        return try await self.client.execute(
            operation: "UpdateRumMetricDefinition", 
            path: "/rummetrics/{AppMonitorName}/metrics", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension RUM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RUM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RUM {
    /// Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single destination.
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func batchGetRumMetricDefinitionsPaginator(
        _ input: BatchGetRumMetricDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<BatchGetRumMetricDefinitionsRequest, BatchGetRumMetricDefinitionsResponse> {
        return .init(
            input: input,
            command: self.batchGetRumMetricDefinitions,
            inputKey: \BatchGetRumMetricDefinitionsRequest.nextToken,
            outputKey: \BatchGetRumMetricDefinitionsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getAppMonitorDataPaginator(
        _ input: GetAppMonitorDataRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetAppMonitorDataRequest, GetAppMonitorDataResponse> {
        return .init(
            input: input,
            command: self.getAppMonitorData,
            inputKey: \GetAppMonitorDataRequest.nextToken,
            outputKey: \GetAppMonitorDataResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAppMonitorsPaginator(
        _ input: ListAppMonitorsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAppMonitorsRequest, ListAppMonitorsResponse> {
        return .init(
            input: input,
            command: self.listAppMonitors,
            inputKey: \ListAppMonitorsRequest.nextToken,
            outputKey: \ListAppMonitorsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of destinations that you have created to receive RUM extended metrics,  for the specified app monitor. For more information about extended metrics, see AddRumMetrics.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRumMetricsDestinationsPaginator(
        _ input: ListRumMetricsDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRumMetricsDestinationsRequest, ListRumMetricsDestinationsResponse> {
        return .init(
            input: input,
            command: self.listRumMetricsDestinations,
            inputKey: \ListRumMetricsDestinationsRequest.nextToken,
            outputKey: \ListRumMetricsDestinationsResponse.nextToken,
            logger: logger
        )
    }
}

extension RUM.BatchGetRumMetricDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RUM.BatchGetRumMetricDefinitionsRequest {
        return .init(
            appMonitorName: self.appMonitorName,
            destination: self.destination,
            destinationArn: self.destinationArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RUM.GetAppMonitorDataRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RUM.GetAppMonitorDataRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            timeRange: self.timeRange
        )
    }
}

extension RUM.ListAppMonitorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RUM.ListAppMonitorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RUM.ListRumMetricsDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RUM.ListRumMetricsDestinationsRequest {
        return .init(
            appMonitorName: self.appMonitorName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
