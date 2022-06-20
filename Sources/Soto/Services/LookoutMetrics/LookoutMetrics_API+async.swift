//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LookoutMetrics {
    // MARK: Async API Calls

    /// Activates an anomaly detector.
    public func activateAnomalyDetector(_ input: ActivateAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateAnomalyDetectorResponse {
        return try await self.client.execute(operation: "ActivateAnomalyDetector", path: "/ActivateAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs a backtest for anomaly detection for the specified resource.
    public func backTestAnomalyDetector(_ input: BackTestAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BackTestAnomalyDetectorResponse {
        return try await self.client.execute(operation: "BackTestAnomalyDetector", path: "/BackTestAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an alert for an anomaly detector.
    public func createAlert(_ input: CreateAlertRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertResponse {
        return try await self.client.execute(operation: "CreateAlert", path: "/CreateAlert", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an anomaly detector.
    public func createAnomalyDetector(_ input: CreateAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnomalyDetectorResponse {
        return try await self.client.execute(operation: "CreateAnomalyDetector", path: "/CreateAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a dataset.
    public func createMetricSet(_ input: CreateMetricSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMetricSetResponse {
        return try await self.client.execute(operation: "CreateMetricSet", path: "/CreateMetricSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deactivates an anomaly detector.
    public func deactivateAnomalyDetector(_ input: DeactivateAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeactivateAnomalyDetectorResponse {
        return try await self.client.execute(operation: "DeactivateAnomalyDetector", path: "/DeactivateAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an alert.
    public func deleteAlert(_ input: DeleteAlertRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlertResponse {
        return try await self.client.execute(operation: "DeleteAlert", path: "/DeleteAlert", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a detector. Deleting an anomaly detector will delete all of its corresponding resources including any configured datasets and alerts.
    public func deleteAnomalyDetector(_ input: DeleteAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAnomalyDetectorResponse {
        return try await self.client.execute(operation: "DeleteAnomalyDetector", path: "/DeleteAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an alert. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func describeAlert(_ input: DescribeAlertRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertResponse {
        return try await self.client.execute(operation: "DescribeAlert", path: "/DescribeAlert", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the status of the specified anomaly detection jobs.
    public func describeAnomalyDetectionExecutions(_ input: DescribeAnomalyDetectionExecutionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnomalyDetectionExecutionsResponse {
        return try await self.client.execute(operation: "DescribeAnomalyDetectionExecutions", path: "/DescribeAnomalyDetectionExecutions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func describeAnomalyDetector(_ input: DescribeAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnomalyDetectorResponse {
        return try await self.client.execute(operation: "DescribeAnomalyDetector", path: "/DescribeAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a dataset. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func describeMetricSet(_ input: DescribeMetricSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMetricSetResponse {
        return try await self.client.execute(operation: "DescribeMetricSet", path: "/DescribeMetricSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detects an Amazon S3 dataset's file format, interval, and offset.
    public func detectMetricSetConfig(_ input: DetectMetricSetConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectMetricSetConfigResponse {
        return try await self.client.execute(operation: "DetectMetricSetConfig", path: "/DetectMetricSetConfig", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns details about a group of anomalous metrics.
    public func getAnomalyGroup(_ input: GetAnomalyGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAnomalyGroupResponse {
        return try await self.client.execute(operation: "GetAnomalyGroup", path: "/GetAnomalyGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get feedback for an anomaly group.
    public func getFeedback(_ input: GetFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFeedbackResponse {
        return try await self.client.execute(operation: "GetFeedback", path: "/GetFeedback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a selection of sample records from an Amazon S3 datasource.
    public func getSampleData(_ input: GetSampleDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSampleDataResponse {
        return try await self.client.execute(operation: "GetSampleData", path: "/GetSampleData", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the alerts attached to a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func listAlerts(_ input: ListAlertsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAlertsResponse {
        return try await self.client.execute(operation: "ListAlerts", path: "/ListAlerts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the detectors in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func listAnomalyDetectors(_ input: ListAnomalyDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomalyDetectorsResponse {
        return try await self.client.execute(operation: "ListAnomalyDetectors", path: "/ListAnomalyDetectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of measures that are potential causes or effects of an anomaly group.
    public func listAnomalyGroupRelatedMetrics(_ input: ListAnomalyGroupRelatedMetricsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomalyGroupRelatedMetricsResponse {
        return try await self.client.execute(operation: "ListAnomalyGroupRelatedMetrics", path: "/ListAnomalyGroupRelatedMetrics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of anomaly groups.
    public func listAnomalyGroupSummaries(_ input: ListAnomalyGroupSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomalyGroupSummariesResponse {
        return try await self.client.execute(operation: "ListAnomalyGroupSummaries", path: "/ListAnomalyGroupSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of anomalous metrics for a measure in an anomaly group.
    public func listAnomalyGroupTimeSeries(_ input: ListAnomalyGroupTimeSeriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomalyGroupTimeSeriesResponse {
        return try await self.client.execute(operation: "ListAnomalyGroupTimeSeries", path: "/ListAnomalyGroupTimeSeries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the datasets in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    public func listMetricSets(_ input: ListMetricSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMetricSetsResponse {
        return try await self.client.execute(operation: "ListMetricSets", path: "/ListMetricSets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of tags for a detector, dataset, or alert.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add feedback for an anomalous metric.
    public func putFeedback(_ input: PutFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutFeedbackResponse {
        return try await self.client.execute(operation: "PutFeedback", path: "/PutFeedback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a detector, dataset, or alert.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a detector, dataset, or alert.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Make changes to an existing alert.
    public func updateAlert(_ input: UpdateAlertRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlertResponse {
        return try await self.client.execute(operation: "UpdateAlert", path: "/UpdateAlert", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a detector. After activation, you can only change a detector's ingestion delay and description.
    public func updateAnomalyDetector(_ input: UpdateAnomalyDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAnomalyDetectorResponse {
        return try await self.client.execute(operation: "UpdateAnomalyDetector", path: "/UpdateAnomalyDetector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a dataset.
    public func updateMetricSet(_ input: UpdateMetricSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMetricSetResponse {
        return try await self.client.execute(operation: "UpdateMetricSet", path: "/UpdateMetricSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
