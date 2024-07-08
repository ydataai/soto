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

extension CostAndUsageReportService {
    // MARK: Enums

    public enum AWSRegion: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case bahrain = "me-south-1"
        case beijing = "cn-north-1"
        case canadaCentral = "ca-central-1"
        case capeTown = "af-south-1"
        case frankfurt = "eu-central-1"
        case hongKong = "ap-east-1"
        case hyderabad = "ap-south-2"
        case ireland = "eu-west-1"
        case jakarta = "ap-southeast-3"
        case london = "eu-west-2"
        case milano = "eu-south-1"
        case mumbai = "ap-south-1"
        case ningxia = "cn-northwest-1"
        case northernCalifornia = "us-west-1"
        case ohio = "us-east-2"
        case oregon = "us-west-2"
        case osaka = "ap-northeast-3"
        case paris = "eu-west-3"
        case saoPaulo = "sa-east-1"
        case seoul = "ap-northeast-2"
        case singapore = "ap-southeast-1"
        case spain = "eu-south-2"
        case stockholm = "eu-north-1"
        case sydney = "ap-southeast-2"
        case tokyo = "ap-northeast-1"
        case uae = "me-central-1"
        case usStandard = "us-east-1"
        case zurich = "eu-central-2"
        public var description: String { return self.rawValue }
    }

    public enum AdditionalArtifact: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case athena = "ATHENA"
        case quicksight = "QUICKSIGHT"
        case redshift = "REDSHIFT"
        public var description: String { return self.rawValue }
    }

    public enum CompressionFormat: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case gzip = "GZIP"
        case parquet = "Parquet"
        case zip = "ZIP"
        public var description: String { return self.rawValue }
    }

    public enum LastStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case errorNoBucket = "ERROR_NO_BUCKET"
        case errorPermissions = "ERROR_PERMISSIONS"
        case success = "SUCCESS"
        public var description: String { return self.rawValue }
    }

    public enum ReportFormat: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case csv = "textORcsv"
        case parquet = "Parquet"
        public var description: String { return self.rawValue }
    }

    public enum ReportVersioning: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case createNewReport = "CREATE_NEW_REPORT"
        case overwriteReport = "OVERWRITE_REPORT"
        public var description: String { return self.rawValue }
    }

    public enum SchemaElement: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case manualDiscountCompatibility = "MANUAL_DISCOUNT_COMPATIBILITY"
        case resources = "RESOURCES"
        case splitCostAllocationData = "SPLIT_COST_ALLOCATION_DATA"
        public var description: String { return self.rawValue }
    }

    public enum TimeUnit: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case daily = "DAILY"
        case hourly = "HOURLY"
        case monthly = "MONTHLY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteReportDefinitionRequest: AWSEncodableShape {
        /// The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.
        public let reportName: String

        public init(reportName: String) {
            self.reportName = reportName
        }

        public func validate(name: String) throws {
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
        }
    }

    public struct DeleteReportDefinitionResponse: AWSDecodableShape {
        public let responseMessage: String?

        public init(responseMessage: String? = nil) {
            self.responseMessage = responseMessage
        }

        private enum CodingKeys: String, CodingKey {
            case responseMessage = "ResponseMessage"
        }
    }

    public struct DescribeReportDefinitionsRequest: AWSEncodableShape {
        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 5)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 5)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9_\\.\\-=]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeReportDefinitionsResponse: AWSDecodableShape {
        public let nextToken: String?
        /// An Amazon Web Services Cost and Usage Report list owned by the account.
        public let reportDefinitions: [ReportDefinition]?

        public init(nextToken: String? = nil, reportDefinitions: [ReportDefinition]? = nil) {
            self.nextToken = nextToken
            self.reportDefinitions = reportDefinitions
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case reportDefinitions = "ReportDefinitions"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        /// The report name of the report definition that tags are to be returned for.
        public let reportName: String

        public init(reportName: String) {
            self.reportName = reportName
        }

        public func validate(name: String) throws {
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The tags assigned to the report definition resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct ModifyReportDefinitionRequest: AWSEncodableShape {
        public let reportDefinition: ReportDefinition
        public let reportName: String

        public init(reportDefinition: ReportDefinition, reportName: String) {
            self.reportDefinition = reportDefinition
            self.reportName = reportName
        }

        public func validate(name: String) throws {
            try self.reportDefinition.validate(name: "\(name).reportDefinition")
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
            case reportName = "ReportName"
        }
    }

    public struct ModifyReportDefinitionResponse: AWSDecodableShape {
        public init() {}
    }

    public struct PutReportDefinitionRequest: AWSEncodableShape {
        /// Represents the output of the PutReportDefinition operation. The content consists of the detailed  metadata and data file information.
        public let reportDefinition: ReportDefinition
        /// The tags to be assigned to the report definition resource.
        public let tags: [Tag]?

        public init(reportDefinition: ReportDefinition, tags: [Tag]? = nil) {
            self.reportDefinition = reportDefinition
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.reportDefinition.validate(name: "\(name).reportDefinition")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
            case tags = "Tags"
        }
    }

    public struct PutReportDefinitionResponse: AWSDecodableShape {
        public init() {}
    }

    public struct ReportDefinition: AWSEncodableShape & AWSDecodableShape {
        /// A list of manifests that you want Amazon Web Services to create for this report.
        public let additionalArtifacts: [AdditionalArtifact]?
        /// A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs.
        public let additionalSchemaElements: [SchemaElement]
        ///  The Amazon resource name of the billing view. The BillingViewArn is needed to create Amazon Web Services Cost and Usage Report for each billing group maintained in the Amazon Web Services Billing Conductor service. The BillingViewArn for a billing group can be constructed as: arn:aws:billing::payer-account-id:billingview/billing-group-primary-account-id
        public let billingViewArn: String?
        public let compression: CompressionFormat
        public let format: ReportFormat
        /// Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to  previous months. These charges can include refunds, credits, or support fees.
        public let refreshClosedReports: Bool?
        public let reportName: String
        /// The status of the report.
        public let reportStatus: ReportStatus?
        /// Whether you want Amazon Web Services to overwrite the previous version of each report or  to deliver the report in addition to the previous versions.
        public let reportVersioning: ReportVersioning?
        public let s3Bucket: String
        public let s3Prefix: String
        public let s3Region: AWSRegion
        public let timeUnit: TimeUnit

        public init(additionalArtifacts: [AdditionalArtifact]? = nil, additionalSchemaElements: [SchemaElement], billingViewArn: String? = nil, compression: CompressionFormat, format: ReportFormat, refreshClosedReports: Bool? = nil, reportName: String, reportStatus: ReportStatus? = nil, reportVersioning: ReportVersioning? = nil, s3Bucket: String, s3Prefix: String, s3Region: AWSRegion, timeUnit: TimeUnit) {
            self.additionalArtifacts = additionalArtifacts
            self.additionalSchemaElements = additionalSchemaElements
            self.billingViewArn = billingViewArn
            self.compression = compression
            self.format = format
            self.refreshClosedReports = refreshClosedReports
            self.reportName = reportName
            self.reportStatus = reportStatus
            self.reportVersioning = reportVersioning
            self.s3Bucket = s3Bucket
            self.s3Prefix = s3Prefix
            self.s3Region = s3Region
            self.timeUnit = timeUnit
        }

        public func validate(name: String) throws {
            try self.validate(self.billingViewArn, name: "billingViewArn", parent: name, max: 128)
            try self.validate(self.billingViewArn, name: "billingViewArn", parent: name, pattern: "^(arn:aws(-cn)?:billing::[0-9]{12}:billingview/)?[a-zA-Z0-9_\\+=\\.\\-@].{1,30}$")
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
            try self.reportStatus?.validate(name: "\(name).reportStatus")
            try self.validate(self.s3Bucket, name: "s3Bucket", parent: name, max: 256)
            try self.validate(self.s3Bucket, name: "s3Bucket", parent: name, pattern: "^[A-Za-z0-9_\\.\\-]+$")
            try self.validate(self.s3Prefix, name: "s3Prefix", parent: name, max: 256)
            try self.validate(self.s3Prefix, name: "s3Prefix", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()/]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case additionalArtifacts = "AdditionalArtifacts"
            case additionalSchemaElements = "AdditionalSchemaElements"
            case billingViewArn = "BillingViewArn"
            case compression = "Compression"
            case format = "Format"
            case refreshClosedReports = "RefreshClosedReports"
            case reportName = "ReportName"
            case reportStatus = "ReportStatus"
            case reportVersioning = "ReportVersioning"
            case s3Bucket = "S3Bucket"
            case s3Prefix = "S3Prefix"
            case s3Region = "S3Region"
            case timeUnit = "TimeUnit"
        }
    }

    public struct ReportStatus: AWSEncodableShape & AWSDecodableShape {
        /// A timestamp that gives the date of a report delivery.
        public let lastDelivery: String?
        /// An enum that gives the status of a report delivery.
        public let lastStatus: LastStatus?

        public init(lastDelivery: String? = nil, lastStatus: LastStatus? = nil) {
            self.lastDelivery = lastDelivery
            self.lastStatus = lastStatus
        }

        public func validate(name: String) throws {
            try self.validate(self.lastDelivery, name: "lastDelivery", parent: name, max: 20)
            try self.validate(self.lastDelivery, name: "lastDelivery", parent: name, min: 16)
            try self.validate(self.lastDelivery, name: "lastDelivery", parent: name, pattern: "^[0-9]{8}[T][0-9]{6}([Z]|[+-][0-9]{4})$")
        }

        private enum CodingKeys: String, CodingKey {
            case lastDelivery = "lastDelivery"
            case lastStatus = "lastStatus"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The key of the tag. Tag keys are case sensitive. Each report definition can only have up to one tag with the same key. If you try to add an existing tag with the same key, the existing tag value will be updated to the new value.
        public let key: String
        /// The value of the tag. Tag values are case-sensitive. This can be an empty string.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: ".*")
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, pattern: ".*")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        /// The report name of the report definition that tags are to be associated with.
        public let reportName: String
        /// The tags to be assigned to the report definition resource.
        public let tags: [Tag]

        public init(reportName: String, tags: [Tag]) {
            self.reportName = reportName
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        /// The report name of the report definition that tags are to be disassociated from.
        public let reportName: String
        /// The tags to be disassociated from the report definition resource.
        public let tagKeys: [String]

        public init(reportName: String, tagKeys: [String]) {
            self.reportName = reportName
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.reportName, name: "reportName", parent: name, max: 256)
            try self.validate(self.reportName, name: "reportName", parent: name, pattern: "^[0-9A-Za-z!\\-_.*\\'()]+$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: ".*")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for CostAndUsageReportService
public struct CostAndUsageReportServiceErrorType: AWSErrorType {
    enum Code: String {
        case duplicateReportNameException = "DuplicateReportNameException"
        case internalErrorException = "InternalErrorException"
        case reportLimitReachedException = "ReportLimitReachedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CostAndUsageReportService
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

    /// A report with the specified name already exists in the account. Specify a different report name.
    public static var duplicateReportNameException: Self { .init(.duplicateReportNameException) }
    /// An error on the server occurred during the processing of your request. Try again later.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// This account already has five reports defined. To define a new report, you must delete an existing report.
    public static var reportLimitReachedException: Self { .init(.reportLimitReachedException) }
    /// The specified report (ReportName) in the request doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public static var validationException: Self { .init(.validationException) }
}

extension CostAndUsageReportServiceErrorType: Equatable {
    public static func == (lhs: CostAndUsageReportServiceErrorType, rhs: CostAndUsageReportServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CostAndUsageReportServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
