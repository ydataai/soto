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

#if os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension CostAndUsageReportService {
    // MARK: Enums

    public enum AWSRegion: String, CustomStringConvertible, Codable, Sendable {
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

    public enum AdditionalArtifact: String, CustomStringConvertible, Codable, Sendable {
        case athena = "ATHENA"
        case quicksight = "QUICKSIGHT"
        case redshift = "REDSHIFT"
        public var description: String { return self.rawValue }
    }

    public enum CompressionFormat: String, CustomStringConvertible, Codable, Sendable {
        case gzip = "GZIP"
        case parquet = "Parquet"
        case zip = "ZIP"
        public var description: String { return self.rawValue }
    }

    public enum ReportFormat: String, CustomStringConvertible, Codable, Sendable {
        case csv = "textORcsv"
        case parquet = "Parquet"
        public var description: String { return self.rawValue }
    }

    public enum ReportVersioning: String, CustomStringConvertible, Codable, Sendable {
        case createNewReport = "CREATE_NEW_REPORT"
        case overwriteReport = "OVERWRITE_REPORT"
        public var description: String { return self.rawValue }
    }

    public enum SchemaElement: String, CustomStringConvertible, Codable, Sendable {
        case resources = "RESOURCES"
        case splitCostAllocationData = "SPLIT_COST_ALLOCATION_DATA"
        public var description: String { return self.rawValue }
    }

    public enum TimeUnit: String, CustomStringConvertible, Codable, Sendable {
        case daily = "DAILY"
        case hourly = "HOURLY"
        case monthly = "MONTHLY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteReportDefinitionRequest: AWSEncodableShape {
        /// The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.
        public let reportName: String?

        public init(reportName: String? = nil) {
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
        /// A list of AWS Cost and Usage reports owned by the account.
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

        public init(reportDefinition: ReportDefinition) {
            self.reportDefinition = reportDefinition
        }

        public func validate(name: String) throws {
            try self.reportDefinition.validate(name: "\(name).reportDefinition")
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
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
        ///  The Amazon resource name of the billing view. You can get this value by using the billing view service public APIs.
        public let billingViewArn: String?
        public let compression: CompressionFormat
        public let format: ReportFormat
        /// Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to  previous months. These charges can include refunds, credits, or support fees.
        public let refreshClosedReports: Bool?
        public let reportName: String
        /// Whether you want Amazon Web Services to overwrite the previous version of each report or  to deliver the report in addition to the previous versions.
        public let reportVersioning: ReportVersioning?
        public let s3Bucket: String
        public let s3Prefix: String
        public let s3Region: AWSRegion
        public let timeUnit: TimeUnit

        public init(additionalArtifacts: [AdditionalArtifact]? = nil, additionalSchemaElements: [SchemaElement], billingViewArn: String? = nil, compression: CompressionFormat, format: ReportFormat, refreshClosedReports: Bool? = nil, reportName: String, reportVersioning: ReportVersioning? = nil, s3Bucket: String, s3Prefix: String, s3Region: AWSRegion, timeUnit: TimeUnit) {
            self.additionalArtifacts = additionalArtifacts
            self.additionalSchemaElements = additionalSchemaElements
            self.billingViewArn = billingViewArn
            self.compression = compression
            self.format = format
            self.refreshClosedReports = refreshClosedReports
            self.reportName = reportName
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
            case reportVersioning = "ReportVersioning"
            case s3Bucket = "S3Bucket"
            case s3Prefix = "S3Prefix"
            case s3Region = "S3Region"
            case timeUnit = "TimeUnit"
        }
    }
}

// MARK: - Errors

/// Error enum for CostAndUsageReportService
public struct CostAndUsageReportServiceErrorType: AWSErrorType {
    enum Code: String {
        case duplicateReportNameException = "DuplicateReportNameException"
        case internalErrorException = "InternalErrorException"
        case reportLimitReachedException = "ReportLimitReachedException"
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
    /// The input fails to satisfy the constraints specified by an AWS service.
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
