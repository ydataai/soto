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

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension SageMakerMetrics {
    // MARK: Enums

    public enum PutMetricsErrorCode: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case conflictError = "CONFLICT_ERROR"
        case internalError = "INTERNAL_ERROR"
        case metricLimitExceeded = "METRIC_LIMIT_EXCEEDED"
        case validationError = "VALIDATION_ERROR"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BatchPutMetricsError: AWSDecodableShape {
        /// The error code of an error that occured when attempting to put metrics.    METRIC_LIMIT_EXCEEDED: The maximum amount of metrics per resource is exceeded.    INTERNAL_ERROR: An internal error occured.    VALIDATION_ERROR: The metric data failed validation.    CONFLICT_ERROR: Multiple requests attempted to modify the same data simultaneously.
        public let code: PutMetricsErrorCode?
        /// An index that corresponds to the metric in the request.
        public let metricIndex: Int?

        public init(code: PutMetricsErrorCode? = nil, metricIndex: Int? = nil) {
            self.code = code
            self.metricIndex = metricIndex
        }

        private enum CodingKeys: String, CodingKey {
            case code = "Code"
            case metricIndex = "MetricIndex"
        }
    }

    public struct BatchPutMetricsRequest: AWSEncodableShape {
        /// A list of raw metric values to put.
        public let metricData: [RawMetricData]?
        /// The name of the Trial Component to associate with the metrics.
        public let trialComponentName: String?

        public init(metricData: [RawMetricData]? = nil, trialComponentName: String? = nil) {
            self.metricData = metricData
            self.trialComponentName = trialComponentName
        }

        public func validate(name: String) throws {
            try self.metricData?.forEach {
                try $0.validate(name: "\(name).metricData[]")
            }
            try self.validate(self.metricData, name: "metricData", parent: name, max: 10)
            try self.validate(self.metricData, name: "metricData", parent: name, min: 1)
            try self.validate(self.trialComponentName, name: "trialComponentName", parent: name, max: 120)
            try self.validate(self.trialComponentName, name: "trialComponentName", parent: name, min: 1)
            try self.validate(self.trialComponentName, name: "trialComponentName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}$")
        }

        private enum CodingKeys: String, CodingKey {
            case metricData = "MetricData"
            case trialComponentName = "TrialComponentName"
        }
    }

    public struct BatchPutMetricsResponse: AWSDecodableShape {
        /// Lists any errors that occur when inserting metric data.
        public let errors: [BatchPutMetricsError]?

        public init(errors: [BatchPutMetricsError]? = nil) {
            self.errors = errors
        }

        private enum CodingKeys: String, CodingKey {
            case errors = "Errors"
        }
    }

    public struct RawMetricData: AWSEncodableShape {
        /// The name of the metric.
        public let metricName: String?
        /// The metric step (epoch).
        public let step: Int?
        /// The time that the metric was recorded.
        public let timestamp: Date?
        /// The metric value.
        public let value: Double?

        public init(metricName: String? = nil, step: Int? = nil, timestamp: Date? = nil, value: Double? = nil) {
            self.metricName = metricName
            self.step = step
            self.timestamp = timestamp
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.metricName, name: "metricName", parent: name, max: 255)
            try self.validate(self.metricName, name: "metricName", parent: name, min: 1)
            try self.validate(self.metricName, name: "metricName", parent: name, pattern: "^.+$")
            try self.validate(self.step, name: "step", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case step = "Step"
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }
}
