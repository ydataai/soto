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

import Foundation
import SotoCore

extension ConnectCampaigns {
    // MARK: Enums

    public enum CampaignState: String, CustomStringConvertible, Codable, _SotoSendable {
        /// Campaign is in failed state
        case failed = "Failed"
        /// Campaign is in initialized state
        case initialized = "Initialized"
        /// Campaign is in paused state
        case paused = "Paused"
        /// Campaign is in running state
        case running = "Running"
        /// Campaign is in stopped state
        case stopped = "Stopped"
        public var description: String { return self.rawValue }
    }

    public enum EncryptionType: String, CustomStringConvertible, Codable, _SotoSendable {
        case kms = "KMS"
        public var description: String { return self.rawValue }
    }

    public enum FailureCode: String, CustomStringConvertible, Codable, _SotoSendable {
        /// The request failed to satisfy the constraints specified by the service
        case invalidInput = "InvalidInput"
        /// Request throttled due to large number of pending dial requests
        case requestThrottled = "RequestThrottled"
        /// Unexpected error during processing of request
        case unknownError = "UnknownError"
        public var description: String { return self.rawValue }
    }

    public enum GetCampaignStateBatchFailureCode: String, CustomStringConvertible, Codable, _SotoSendable {
        /// The specified resource was not found
        case resourceNotFound = "ResourceNotFound"
        /// Unexpected error during processing of request
        case unknownError = "UnknownError"
        public var description: String { return self.rawValue }
    }

    public enum InstanceIdFilterOperator: String, CustomStringConvertible, Codable, _SotoSendable {
        /// Equals operator
        case eq = "Eq"
        public var description: String { return self.rawValue }
    }

    public enum InstanceOnboardingJobFailureCode: String, CustomStringConvertible, Codable, _SotoSendable {
        case eventBridgeAccessDenied = "EVENT_BRIDGE_ACCESS_DENIED"
        case eventBridgeManagedRuleLimitExceeded = "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED"
        case iamAccessDenied = "IAM_ACCESS_DENIED"
        case internalFailure = "INTERNAL_FAILURE"
        case kmsAccessDenied = "KMS_ACCESS_DENIED"
        case kmsKeyNotFound = "KMS_KEY_NOT_FOUND"
        public var description: String { return self.rawValue }
    }

    public enum InstanceOnboardingJobStatusCode: String, CustomStringConvertible, Codable, _SotoSendable {
        case failed = "FAILED"
        case inProgress = "IN_PROGRESS"
        case succeeded = "SUCCEEDED"
        public var description: String { return self.rawValue }
    }

    public enum DialerConfig: AWSEncodableShape & AWSDecodableShape, _SotoSendable {
        case predictiveDialerConfig(PredictiveDialerConfig)
        case progressiveDialerConfig(ProgressiveDialerConfig)

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            guard container.allKeys.count == 1, let key = container.allKeys.first else {
                let context = DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Expected exactly one key, but got \(container.allKeys.count)"
                )
                throw DecodingError.dataCorrupted(context)
            }
            switch key {
            case .predictiveDialerConfig:
                let value = try container.decode(PredictiveDialerConfig.self, forKey: .predictiveDialerConfig)
                self = .predictiveDialerConfig(value)
            case .progressiveDialerConfig:
                let value = try container.decode(ProgressiveDialerConfig.self, forKey: .progressiveDialerConfig)
                self = .progressiveDialerConfig(value)
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            switch self {
            case .predictiveDialerConfig(let value):
                try container.encode(value, forKey: .predictiveDialerConfig)
            case .progressiveDialerConfig(let value):
                try container.encode(value, forKey: .progressiveDialerConfig)
            }
        }

        public func validate(name: String) throws {
            switch self {
            case .predictiveDialerConfig(let value):
                try value.validate(name: "\(name).predictiveDialerConfig")
            case .progressiveDialerConfig(let value):
                try value.validate(name: "\(name).progressiveDialerConfig")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case predictiveDialerConfig
            case progressiveDialerConfig
        }
    }

    // MARK: Shapes

    public struct AnswerMachineDetectionConfig: AWSEncodableShape & AWSDecodableShape {
        /// Enable or disable answering machine detection
        public let enableAnswerMachineDetection: Bool

        public init(enableAnswerMachineDetection: Bool) {
            self.enableAnswerMachineDetection = enableAnswerMachineDetection
        }

        private enum CodingKeys: String, CodingKey {
            case enableAnswerMachineDetection
        }
    }

    public struct Campaign: AWSDecodableShape {
        public let arn: String
        public let connectInstanceId: String
        public let dialerConfig: DialerConfig
        public let id: String
        public let name: String
        public let outboundCallConfig: OutboundCallConfig
        public let tags: [String: String]?

        public init(arn: String, connectInstanceId: String, dialerConfig: DialerConfig, id: String, name: String, outboundCallConfig: OutboundCallConfig, tags: [String: String]? = nil) {
            self.arn = arn
            self.connectInstanceId = connectInstanceId
            self.dialerConfig = dialerConfig
            self.id = id
            self.name = name
            self.outboundCallConfig = outboundCallConfig
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case connectInstanceId
            case dialerConfig
            case id
            case name
            case outboundCallConfig
            case tags
        }
    }

    public struct CampaignFilters: AWSEncodableShape {
        public let instanceIdFilter: InstanceIdFilter?

        public init(instanceIdFilter: InstanceIdFilter? = nil) {
            self.instanceIdFilter = instanceIdFilter
        }

        public func validate(name: String) throws {
            try self.instanceIdFilter?.validate(name: "\(name).instanceIdFilter")
        }

        private enum CodingKeys: String, CodingKey {
            case instanceIdFilter
        }
    }

    public struct CampaignSummary: AWSDecodableShape {
        public let arn: String
        public let connectInstanceId: String
        public let id: String
        public let name: String

        public init(arn: String, connectInstanceId: String, id: String, name: String) {
            self.arn = arn
            self.connectInstanceId = connectInstanceId
            self.id = id
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case connectInstanceId
            case id
            case name
        }
    }

    public struct CreateCampaignRequest: AWSEncodableShape {
        public let connectInstanceId: String
        public let dialerConfig: DialerConfig
        public let name: String
        public let outboundCallConfig: OutboundCallConfig
        public let tags: [String: String]?

        public init(connectInstanceId: String, dialerConfig: DialerConfig, name: String, outboundCallConfig: OutboundCallConfig, tags: [String: String]? = nil) {
            self.connectInstanceId = connectInstanceId
            self.dialerConfig = dialerConfig
            self.name = name
            self.outboundCallConfig = outboundCallConfig
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
            try self.dialerConfig.validate(name: "\(name).dialerConfig")
            try self.validate(self.name, name: "name", parent: name, max: 127)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.outboundCallConfig.validate(name: "\(name).outboundCallConfig")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceId
            case dialerConfig
            case name
            case outboundCallConfig
            case tags
        }
    }

    public struct CreateCampaignResponse: AWSDecodableShape {
        public let arn: String?
        public let id: String?
        public let tags: [String: String]?

        public init(arn: String? = nil, id: String? = nil, tags: [String: String]? = nil) {
            self.arn = arn
            self.id = id
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case id
            case tags
        }
    }

    public struct DeleteCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteConnectInstanceConfigRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectInstanceId", location: .uri("connectInstanceId"))
        ]

        public let connectInstanceId: String

        public init(connectInstanceId: String) {
            self.connectInstanceId = connectInstanceId
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteInstanceOnboardingJobRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectInstanceId", location: .uri("connectInstanceId"))
        ]

        public let connectInstanceId: String

        public init(connectInstanceId: String) {
            self.connectInstanceId = connectInstanceId
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeCampaignResponse: AWSDecodableShape {
        public let campaign: Campaign?

        public init(campaign: Campaign? = nil) {
            self.campaign = campaign
        }

        private enum CodingKeys: String, CodingKey {
            case campaign
        }
    }

    public struct DialRequest: AWSEncodableShape {
        public let attributes: [String: String]
        public let clientToken: String
        @CustomCoding<ISO8601DateCoder>
        public var expirationTime: Date
        public let phoneNumber: String

        public init(attributes: [String: String], clientToken: String, expirationTime: Date, phoneNumber: String) {
            self.attributes = attributes
            self.clientToken = clientToken
            self.expirationTime = expirationTime
            self.phoneNumber = phoneNumber
        }

        public func validate(name: String) throws {
            try self.attributes.forEach {
                try validate($0.key, name: "attributes.key", parent: name, max: 32767)
                try validate($0.key, name: "attributes.key", parent: name, pattern: "^[a-zA-Z0-9\\-_]+$")
                try validate($0.value, name: "attributes[\"\($0.key)\"]", parent: name, max: 32767)
            }
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, max: 20)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case clientToken
            case expirationTime
            case phoneNumber
        }
    }

    public struct EncryptionConfig: AWSEncodableShape & AWSDecodableShape {
        public let enabled: Bool
        public let encryptionType: EncryptionType?
        public let keyArn: String?

        public init(enabled: Bool, encryptionType: EncryptionType? = nil, keyArn: String? = nil) {
            self.enabled = enabled
            self.encryptionType = encryptionType
            self.keyArn = keyArn
        }

        public func validate(name: String) throws {
            try self.validate(self.keyArn, name: "keyArn", parent: name, max: 500)
        }

        private enum CodingKeys: String, CodingKey {
            case enabled
            case encryptionType
            case keyArn
        }
    }

    public struct FailedCampaignStateResponse: AWSDecodableShape {
        public let campaignId: String?
        public let failureCode: GetCampaignStateBatchFailureCode?

        public init(campaignId: String? = nil, failureCode: GetCampaignStateBatchFailureCode? = nil) {
            self.campaignId = campaignId
            self.failureCode = failureCode
        }

        private enum CodingKeys: String, CodingKey {
            case campaignId
            case failureCode
        }
    }

    public struct FailedRequest: AWSDecodableShape {
        public let clientToken: String?
        public let failureCode: FailureCode?
        public let id: String?

        public init(clientToken: String? = nil, failureCode: FailureCode? = nil, id: String? = nil) {
            self.clientToken = clientToken
            self.failureCode = failureCode
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken
            case failureCode
            case id
        }
    }

    public struct GetCampaignStateBatchRequest: AWSEncodableShape {
        public let campaignIds: [String]

        public init(campaignIds: [String]) {
            self.campaignIds = campaignIds
        }

        public func validate(name: String) throws {
            try self.campaignIds.forEach {
                try validate($0, name: "campaignIds[]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case campaignIds
        }
    }

    public struct GetCampaignStateBatchResponse: AWSDecodableShape {
        public let failedRequests: [FailedCampaignStateResponse]?
        public let successfulRequests: [SuccessfulCampaignStateResponse]?

        public init(failedRequests: [FailedCampaignStateResponse]? = nil, successfulRequests: [SuccessfulCampaignStateResponse]? = nil) {
            self.failedRequests = failedRequests
            self.successfulRequests = successfulRequests
        }

        private enum CodingKeys: String, CodingKey {
            case failedRequests
            case successfulRequests
        }
    }

    public struct GetCampaignStateRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetCampaignStateResponse: AWSDecodableShape {
        public let state: CampaignState?

        public init(state: CampaignState? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state
        }
    }

    public struct GetConnectInstanceConfigRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectInstanceId", location: .uri("connectInstanceId"))
        ]

        public let connectInstanceId: String

        public init(connectInstanceId: String) {
            self.connectInstanceId = connectInstanceId
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectInstanceConfigResponse: AWSDecodableShape {
        public let connectInstanceConfig: InstanceConfig?

        public init(connectInstanceConfig: InstanceConfig? = nil) {
            self.connectInstanceConfig = connectInstanceConfig
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceConfig
        }
    }

    public struct GetInstanceOnboardingJobStatusRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectInstanceId", location: .uri("connectInstanceId"))
        ]

        public let connectInstanceId: String

        public init(connectInstanceId: String) {
            self.connectInstanceId = connectInstanceId
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetInstanceOnboardingJobStatusResponse: AWSDecodableShape {
        public let connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus?

        public init(connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus? = nil) {
            self.connectInstanceOnboardingJobStatus = connectInstanceOnboardingJobStatus
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceOnboardingJobStatus
        }
    }

    public struct InstanceConfig: AWSDecodableShape {
        public let connectInstanceId: String
        public let encryptionConfig: EncryptionConfig
        public let serviceLinkedRoleArn: String

        public init(connectInstanceId: String, encryptionConfig: EncryptionConfig, serviceLinkedRoleArn: String) {
            self.connectInstanceId = connectInstanceId
            self.encryptionConfig = encryptionConfig
            self.serviceLinkedRoleArn = serviceLinkedRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceId
            case encryptionConfig
            case serviceLinkedRoleArn
        }
    }

    public struct InstanceIdFilter: AWSEncodableShape {
        public let `operator`: InstanceIdFilterOperator
        public let value: String

        public init(operator: InstanceIdFilterOperator, value: String) {
            self.`operator` = `operator`
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.value, name: "value", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case `operator`
            case value
        }
    }

    public struct InstanceOnboardingJobStatus: AWSDecodableShape {
        public let connectInstanceId: String
        public let failureCode: InstanceOnboardingJobFailureCode?
        public let status: InstanceOnboardingJobStatusCode

        public init(connectInstanceId: String, failureCode: InstanceOnboardingJobFailureCode? = nil, status: InstanceOnboardingJobStatusCode) {
            self.connectInstanceId = connectInstanceId
            self.failureCode = failureCode
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceId
            case failureCode
            case status
        }
    }

    public struct ListCampaignsRequest: AWSEncodableShape {
        public let filters: CampaignFilters?
        public let maxResults: Int?
        public let nextToken: String?

        public init(filters: CampaignFilters? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.validate(name: "\(name).filters")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 50)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
        }
    }

    public struct ListCampaignsResponse: AWSDecodableShape {
        public let campaignSummaryList: [CampaignSummary]?
        public let nextToken: String?

        public init(campaignSummaryList: [CampaignSummary]? = nil, nextToken: String? = nil) {
            self.campaignSummaryList = campaignSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case campaignSummaryList
            case nextToken
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "arn", location: .uri("arn"))
        ]

        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, max: 500)
            try self.validate(self.arn, name: "arn", parent: name, min: 20)
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:.*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct OutboundCallConfig: AWSEncodableShape & AWSDecodableShape {
        public let answerMachineDetectionConfig: AnswerMachineDetectionConfig?
        public let connectContactFlowId: String
        public let connectQueueId: String
        public let connectSourcePhoneNumber: String?

        public init(answerMachineDetectionConfig: AnswerMachineDetectionConfig? = nil, connectContactFlowId: String, connectQueueId: String, connectSourcePhoneNumber: String? = nil) {
            self.answerMachineDetectionConfig = answerMachineDetectionConfig
            self.connectContactFlowId = connectContactFlowId
            self.connectQueueId = connectQueueId
            self.connectSourcePhoneNumber = connectSourcePhoneNumber
        }

        public func validate(name: String) throws {
            try self.validate(self.connectContactFlowId, name: "connectContactFlowId", parent: name, max: 500)
            try self.validate(self.connectQueueId, name: "connectQueueId", parent: name, max: 500)
            try self.validate(self.connectSourcePhoneNumber, name: "connectSourcePhoneNumber", parent: name, max: 100)
        }

        private enum CodingKeys: String, CodingKey {
            case answerMachineDetectionConfig
            case connectContactFlowId
            case connectQueueId
            case connectSourcePhoneNumber
        }
    }

    public struct PauseCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PredictiveDialerConfig: AWSEncodableShape & AWSDecodableShape {
        public let bandwidthAllocation: Double

        public init(bandwidthAllocation: Double) {
            self.bandwidthAllocation = bandwidthAllocation
        }

        public func validate(name: String) throws {
            try self.validate(self.bandwidthAllocation, name: "bandwidthAllocation", parent: name, max: 1.0)
            try self.validate(self.bandwidthAllocation, name: "bandwidthAllocation", parent: name, min: 0.0)
        }

        private enum CodingKeys: String, CodingKey {
            case bandwidthAllocation
        }
    }

    public struct ProgressiveDialerConfig: AWSEncodableShape & AWSDecodableShape {
        public let bandwidthAllocation: Double

        public init(bandwidthAllocation: Double) {
            self.bandwidthAllocation = bandwidthAllocation
        }

        public func validate(name: String) throws {
            try self.validate(self.bandwidthAllocation, name: "bandwidthAllocation", parent: name, max: 1.0)
            try self.validate(self.bandwidthAllocation, name: "bandwidthAllocation", parent: name, min: 0.0)
        }

        private enum CodingKeys: String, CodingKey {
            case bandwidthAllocation
        }
    }

    public struct PutDialRequestBatchRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let dialRequests: [DialRequest]
        public let id: String

        public init(dialRequests: [DialRequest], id: String) {
            self.dialRequests = dialRequests
            self.id = id
        }

        public func validate(name: String) throws {
            try self.dialRequests.forEach {
                try $0.validate(name: "\(name).dialRequests[]")
            }
            try self.validate(self.dialRequests, name: "dialRequests", parent: name, max: 25)
            try self.validate(self.dialRequests, name: "dialRequests", parent: name, min: 1)
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case dialRequests
        }
    }

    public struct PutDialRequestBatchResponse: AWSDecodableShape {
        public let failedRequests: [FailedRequest]?
        public let successfulRequests: [SuccessfulRequest]?

        public init(failedRequests: [FailedRequest]? = nil, successfulRequests: [SuccessfulRequest]? = nil) {
            self.failedRequests = failedRequests
            self.successfulRequests = successfulRequests
        }

        private enum CodingKeys: String, CodingKey {
            case failedRequests
            case successfulRequests
        }
    }

    public struct ResumeCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct StartCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct StartInstanceOnboardingJobRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectInstanceId", location: .uri("connectInstanceId"))
        ]

        public let connectInstanceId: String
        public let encryptionConfig: EncryptionConfig

        public init(connectInstanceId: String, encryptionConfig: EncryptionConfig) {
            self.connectInstanceId = connectInstanceId
            self.encryptionConfig = encryptionConfig
        }

        public func validate(name: String) throws {
            try self.validate(self.connectInstanceId, name: "connectInstanceId", parent: name, max: 256)
            try self.encryptionConfig.validate(name: "\(name).encryptionConfig")
        }

        private enum CodingKeys: String, CodingKey {
            case encryptionConfig
        }
    }

    public struct StartInstanceOnboardingJobResponse: AWSDecodableShape {
        public let connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus?

        public init(connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus? = nil) {
            self.connectInstanceOnboardingJobStatus = connectInstanceOnboardingJobStatus
        }

        private enum CodingKeys: String, CodingKey {
            case connectInstanceOnboardingJobStatus
        }
    }

    public struct StopCampaignRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct SuccessfulCampaignStateResponse: AWSDecodableShape {
        public let campaignId: String?
        public let state: CampaignState?

        public init(campaignId: String? = nil, state: CampaignState? = nil) {
            self.campaignId = campaignId
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case campaignId
            case state
        }
    }

    public struct SuccessfulRequest: AWSDecodableShape {
        public let clientToken: String?
        public let id: String?

        public init(clientToken: String? = nil, id: String? = nil) {
            self.clientToken = clientToken
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken
            case id
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "arn", location: .uri("arn"))
        ]

        public let arn: String
        public let tags: [String: String]

        public init(arn: String, tags: [String: String]) {
            self.arn = arn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, max: 500)
            try self.validate(self.arn, name: "arn", parent: name, min: 20)
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:.*")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "arn", location: .uri("arn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring("tagKeys"))
        ]

        public let arn: String
        public let tagKeys: [String]

        public init(arn: String, tagKeys: [String]) {
            self.arn = arn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, max: 500)
            try self.validate(self.arn, name: "arn", parent: name, min: 20)
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:.*")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateCampaignDialerConfigRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let dialerConfig: DialerConfig
        public let id: String

        public init(dialerConfig: DialerConfig, id: String) {
            self.dialerConfig = dialerConfig
            self.id = id
        }

        public func validate(name: String) throws {
            try self.dialerConfig.validate(name: "\(name).dialerConfig")
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case dialerConfig
        }
    }

    public struct UpdateCampaignNameRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let id: String
        public let name: String

        public init(id: String, name: String) {
            self.id = id
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 256)
            try self.validate(self.name, name: "name", parent: name, max: 127)
            try self.validate(self.name, name: "name", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name
        }
    }

    public struct UpdateCampaignOutboundCallConfigRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri("id"))
        ]

        public let answerMachineDetectionConfig: AnswerMachineDetectionConfig?
        public let connectContactFlowId: String?
        public let connectSourcePhoneNumber: String?
        public let id: String

        public init(answerMachineDetectionConfig: AnswerMachineDetectionConfig? = nil, connectContactFlowId: String? = nil, connectSourcePhoneNumber: String? = nil, id: String) {
            self.answerMachineDetectionConfig = answerMachineDetectionConfig
            self.connectContactFlowId = connectContactFlowId
            self.connectSourcePhoneNumber = connectSourcePhoneNumber
            self.id = id
        }

        public func validate(name: String) throws {
            try self.validate(self.connectContactFlowId, name: "connectContactFlowId", parent: name, max: 500)
            try self.validate(self.connectSourcePhoneNumber, name: "connectSourcePhoneNumber", parent: name, max: 100)
            try self.validate(self.id, name: "id", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case answerMachineDetectionConfig
            case connectContactFlowId
            case connectSourcePhoneNumber
        }
    }
}
