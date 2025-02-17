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

extension LicenseManagerLinuxSubscriptions {
    // MARK: Enums

    public enum LinuxSubscriptionsDiscovery: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        /// Disabled LinuxSubscriptionsDiscovery
        case disabled = "Disabled"
        /// Enabled LinuxSubscriptionsDiscovery
        case enabled = "Enabled"
        public var description: String { return self.rawValue }
    }

    public enum Operator: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        /// Contains operator
        case contains = "Contains"
        /// Equal operator
        case equal = "Equal"
        /// Not equal operator
        case notEqual = "NotEqual"
        public var description: String { return self.rawValue }
    }

    public enum OrganizationIntegration: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        /// Disabled OrganizationIntegration
        case disabled = "Disabled"
        /// Enabled OrganizationIntegration
        case enabled = "Enabled"
        public var description: String { return self.rawValue }
    }

    public enum Status: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        /// Completed status
        case completed = "Completed"
        /// Failed status
        case failed = "Failed"
        /// InProgress status
        case inProgress = "InProgress"
        /// Successful status
        case successful = "Successful"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Filter: AWSEncodableShape {
        /// The type of name to filter by.
        public let name: String?
        /// An operator for filtering results.
        public let `operator`: Operator?
        /// One or more values for the name to filter by.
        public let values: [String]?

        public init(name: String? = nil, operator: Operator? = nil, values: [String]? = nil) {
            self.name = name
            self.`operator` = `operator`
            self.values = values
        }

        public func validate(name: String) throws {
            try self.validate(self.values, name: "values", parent: name, max: 100)
            try self.validate(self.values, name: "values", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case `operator` = "Operator"
            case values = "Values"
        }
    }

    public struct GetServiceSettingsRequest: AWSEncodableShape {
        public init() {}
    }

    public struct GetServiceSettingsResponse: AWSDecodableShape {
        /// The Region in which License Manager displays the aggregated data for Linux subscriptions.
        public let homeRegions: [String]?
        /// Lists if discovery has been enabled for Linux subscriptions.
        public let linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery?
        /// Lists the settings defined for Linux subscriptions discovery. The settings include if Organizations integration has been enabled, and which Regions data will be aggregated from.
        public let linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings?
        /// Indicates the status of Linux subscriptions settings being applied.
        public let status: Status?
        /// A message which details the Linux subscriptions service settings current status.
        public let statusMessage: [String: String]?

        public init(homeRegions: [String]? = nil, linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery? = nil, linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings? = nil, status: Status? = nil, statusMessage: [String: String]? = nil) {
            self.homeRegions = homeRegions
            self.linuxSubscriptionsDiscovery = linuxSubscriptionsDiscovery
            self.linuxSubscriptionsDiscoverySettings = linuxSubscriptionsDiscoverySettings
            self.status = status
            self.statusMessage = statusMessage
        }

        private enum CodingKeys: String, CodingKey {
            case homeRegions = "HomeRegions"
            case linuxSubscriptionsDiscovery = "LinuxSubscriptionsDiscovery"
            case linuxSubscriptionsDiscoverySettings = "LinuxSubscriptionsDiscoverySettings"
            case status = "Status"
            case statusMessage = "StatusMessage"
        }
    }

    public struct Instance: AWSDecodableShape {
        /// The account ID which owns the instance.
        public let accountID: String?
        /// The AMI ID used to launch the instance.
        public let amiId: String?
        /// The instance ID of the resource.
        public let instanceID: String?
        /// The instance type of the resource.
        public let instanceType: String?
        /// The time in which the last discovery updated the instance details.
        public let lastUpdatedTime: String?
        /// The product code for the instance. For more information, see Usage operation values in the License Manager User Guide .
        public let productCode: [String]?
        /// The Region the instance is running in.
        public let region: String?
        /// The status of the instance.
        public let status: String?
        /// The name of the subscription being used by the instance.
        public let subscriptionName: String?
        /// The usage operation of the instance. For more information, see For more information, see Usage operation values in the License Manager User Guide.
        public let usageOperation: String?

        public init(accountID: String? = nil, amiId: String? = nil, instanceID: String? = nil, instanceType: String? = nil, lastUpdatedTime: String? = nil, productCode: [String]? = nil, region: String? = nil, status: String? = nil, subscriptionName: String? = nil, usageOperation: String? = nil) {
            self.accountID = accountID
            self.amiId = amiId
            self.instanceID = instanceID
            self.instanceType = instanceType
            self.lastUpdatedTime = lastUpdatedTime
            self.productCode = productCode
            self.region = region
            self.status = status
            self.subscriptionName = subscriptionName
            self.usageOperation = usageOperation
        }

        private enum CodingKeys: String, CodingKey {
            case accountID = "AccountID"
            case amiId = "AmiId"
            case instanceID = "InstanceID"
            case instanceType = "InstanceType"
            case lastUpdatedTime = "LastUpdatedTime"
            case productCode = "ProductCode"
            case region = "Region"
            case status = "Status"
            case subscriptionName = "SubscriptionName"
            case usageOperation = "UsageOperation"
        }
    }

    public struct LinuxSubscriptionsDiscoverySettings: AWSEncodableShape & AWSDecodableShape {
        /// Details if you have enabled resource discovery across your accounts in Organizations.
        public let organizationIntegration: OrganizationIntegration
        /// The Regions in which to discover data for Linux subscriptions.
        public let sourceRegions: [String]

        public init(organizationIntegration: OrganizationIntegration, sourceRegions: [String]) {
            self.organizationIntegration = organizationIntegration
            self.sourceRegions = sourceRegions
        }

        public func validate(name: String) throws {
            try self.validate(self.sourceRegions, name: "sourceRegions", parent: name, max: 100)
            try self.validate(self.sourceRegions, name: "sourceRegions", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case organizationIntegration = "OrganizationIntegration"
            case sourceRegions = "SourceRegions"
        }
    }

    public struct ListLinuxSubscriptionInstancesRequest: AWSEncodableShape {
        /// An array of structures that you can use to filter the results to those that match one or more sets of key-value pairs that you specify. For example, you can filter by the name of AmiID with an optional operator to see subscriptions that match, partially match, or don't match a certain Amazon Machine Image (AMI) ID. The valid names for this filter are:    AmiID     InstanceID     AccountID     Status     Region     UsageOperation     ProductCode     InstanceType    The valid Operators for this filter are:    contains     equals     Notequal
        public let filters: [Filter]?
        /// Maximum number of results to return in a single call.
        public let maxResults: Int?
        /// Token for the next set of results.
        public let nextToken: String?

        public init(filters: [Filter]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListLinuxSubscriptionInstancesResponse: AWSDecodableShape {
        /// An array that contains instance objects.
        public let instances: [Instance]?
        /// Token for the next set of results.
        public let nextToken: String?

        public init(instances: [Instance]? = nil, nextToken: String? = nil) {
            self.instances = instances
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case nextToken = "NextToken"
        }
    }

    public struct ListLinuxSubscriptionsRequest: AWSEncodableShape {
        /// An array of structures that you can use to filter the results to those that match one or more sets of key-value pairs that you specify. For example, you can filter by the name of Subscription with an optional operator to see subscriptions that match, partially match, or don't match a certain subscription's name. The valid names for this filter are:    Subscription    The valid Operators for this filter are:    contains     equals     Notequal
        public let filters: [Filter]?
        /// Maximum number of results to return in a single call.
        public let maxResults: Int?
        /// Token for the next set of results.
        public let nextToken: String?

        public init(filters: [Filter]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListLinuxSubscriptionsResponse: AWSDecodableShape {
        /// Token for the next set of results.
        public let nextToken: String?
        /// An array that contains subscription objects.
        public let subscriptions: [Subscription]?

        public init(nextToken: String? = nil, subscriptions: [Subscription]? = nil) {
            self.nextToken = nextToken
            self.subscriptions = subscriptions
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case subscriptions = "Subscriptions"
        }
    }

    public struct Subscription: AWSDecodableShape {
        /// The total amount of running instances using this subscription.
        public let instanceCount: Int64?
        /// The name of the subscription.
        public let name: String?
        /// The type of subscription. The type can be subscription-included with Amazon EC2, Bring Your Own Subscription model (BYOS), or from the Amazon Web Services Marketplace. Certain subscriptions may use licensing from the Amazon Web Services Marketplace as well as OS licensing from Amazon EC2 or BYOS.
        public let type: String?

        public init(instanceCount: Int64? = nil, name: String? = nil, type: String? = nil) {
            self.instanceCount = instanceCount
            self.name = name
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case instanceCount = "InstanceCount"
            case name = "Name"
            case type = "Type"
        }
    }

    public struct UpdateServiceSettingsRequest: AWSEncodableShape {
        /// Describes if updates are allowed to the service settings for Linux subscriptions. If you allow updates, you can aggregate Linux subscription data in more than one home Region.
        public let allowUpdate: Bool?
        /// Describes if the discovery of Linux subscriptions is enabled.
        public let linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery
        /// The settings defined for Linux subscriptions discovery. The settings include if Organizations integration has been enabled, and which Regions data will be aggregated from.
        public let linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings

        public init(allowUpdate: Bool? = nil, linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery, linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings) {
            self.allowUpdate = allowUpdate
            self.linuxSubscriptionsDiscovery = linuxSubscriptionsDiscovery
            self.linuxSubscriptionsDiscoverySettings = linuxSubscriptionsDiscoverySettings
        }

        public func validate(name: String) throws {
            try self.linuxSubscriptionsDiscoverySettings.validate(name: "\(name).linuxSubscriptionsDiscoverySettings")
        }

        private enum CodingKeys: String, CodingKey {
            case allowUpdate = "AllowUpdate"
            case linuxSubscriptionsDiscovery = "LinuxSubscriptionsDiscovery"
            case linuxSubscriptionsDiscoverySettings = "LinuxSubscriptionsDiscoverySettings"
        }
    }

    public struct UpdateServiceSettingsResponse: AWSDecodableShape {
        /// The Region in which License Manager displays the aggregated data for Linux subscriptions.
        public let homeRegions: [String]?
        /// Lists if discovery has been enabled for Linux subscriptions.
        public let linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery?
        /// The settings defined for Linux subscriptions discovery. The settings include if Organizations integration has been enabled, and which Regions data will be aggregated from.
        public let linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings?
        /// Indicates the status of Linux subscriptions settings being applied.
        public let status: Status?
        /// A message which details the Linux subscriptions service settings current status.
        public let statusMessage: [String: String]?

        public init(homeRegions: [String]? = nil, linuxSubscriptionsDiscovery: LinuxSubscriptionsDiscovery? = nil, linuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings? = nil, status: Status? = nil, statusMessage: [String: String]? = nil) {
            self.homeRegions = homeRegions
            self.linuxSubscriptionsDiscovery = linuxSubscriptionsDiscovery
            self.linuxSubscriptionsDiscoverySettings = linuxSubscriptionsDiscoverySettings
            self.status = status
            self.statusMessage = statusMessage
        }

        private enum CodingKeys: String, CodingKey {
            case homeRegions = "HomeRegions"
            case linuxSubscriptionsDiscovery = "LinuxSubscriptionsDiscovery"
            case linuxSubscriptionsDiscoverySettings = "LinuxSubscriptionsDiscoverySettings"
            case status = "Status"
            case statusMessage = "StatusMessage"
        }
    }
}

// MARK: - Errors

/// Error enum for LicenseManagerLinuxSubscriptions
public struct LicenseManagerLinuxSubscriptionsErrorType: AWSErrorType {
    enum Code: String {
        case internalServerException = "InternalServerException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize LicenseManagerLinuxSubscriptions
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// An exception occurred with the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The provided input is not valid. Try your request again.
    public static var validationException: Self { .init(.validationException) }
}

extension LicenseManagerLinuxSubscriptionsErrorType: Equatable {
    public static func == (lhs: LicenseManagerLinuxSubscriptionsErrorType, rhs: LicenseManagerLinuxSubscriptionsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LicenseManagerLinuxSubscriptionsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
