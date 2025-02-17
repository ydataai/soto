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

extension Mobile {
    // MARK: Enums

    public enum Platform: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case android = "ANDROID"
        case javascript = "JAVASCRIPT"
        case linux = "LINUX"
        case objc = "OBJC"
        case osx = "OSX"
        case swift = "SWIFT"
        case windows = "WINDOWS"
        public var description: String { return self.rawValue }
    }

    public enum ProjectState: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case importing = "IMPORTING"
        case normal = "NORMAL"
        case syncing = "SYNCING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BundleDetails: AWSDecodableShape {
        public let availablePlatforms: [Platform]?
        public let bundleId: String?
        public let description: String?
        public let iconUrl: String?
        public let title: String?
        public let version: String?

        public init(availablePlatforms: [Platform]? = nil, bundleId: String? = nil, description: String? = nil, iconUrl: String? = nil, title: String? = nil, version: String? = nil) {
            self.availablePlatforms = availablePlatforms
            self.bundleId = bundleId
            self.description = description
            self.iconUrl = iconUrl
            self.title = title
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case availablePlatforms = "availablePlatforms"
            case bundleId = "bundleId"
            case description = "description"
            case iconUrl = "iconUrl"
            case title = "title"
            case version = "version"
        }
    }

    public struct CreateProjectRequest: AWSEncodableShape {
        ///  ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation.
        public let contents: AWSHTTPBody?
        ///  Name of the project.
        public let name: String?
        ///  Default region where project resources should be created.
        public let region: String?
        ///  Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported.
        public let snapshotId: String?

        public init(contents: AWSHTTPBody? = nil, name: String? = nil, region: String? = nil, snapshotId: String? = nil) {
            self.contents = contents
            self.name = name
            self.region = region
            self.snapshotId = snapshotId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.singleValueContainer()
            try container.encode(self.contents)
            request.encodeQuery(self.name, key: "name")
            request.encodeQuery(self.region, key: "region")
            request.encodeQuery(self.snapshotId, key: "snapshotId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct CreateProjectResult: AWSDecodableShape {
        ///  Detailed information about the created AWS Mobile Hub project.
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DeleteProjectRequest: AWSEncodableShape {
        ///  Unique project identifier.
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.projectId, key: "projectId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteProjectResult: AWSDecodableShape {
        ///  Resources which were deleted.
        public let deletedResources: [Resource]?
        ///  Resources which were not deleted, due to a risk of losing potentially important data or files.
        public let orphanedResources: [Resource]?

        public init(deletedResources: [Resource]? = nil, orphanedResources: [Resource]? = nil) {
            self.deletedResources = deletedResources
            self.orphanedResources = orphanedResources
        }

        private enum CodingKeys: String, CodingKey {
            case deletedResources = "deletedResources"
            case orphanedResources = "orphanedResources"
        }
    }

    public struct DescribeBundleRequest: AWSEncodableShape {
        ///  Unique bundle identifier.
        public let bundleId: String

        public init(bundleId: String) {
            self.bundleId = bundleId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.bundleId, key: "bundleId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeBundleResult: AWSDecodableShape {
        ///  The details of the bundle.
        public let details: BundleDetails?

        public init(details: BundleDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DescribeProjectRequest: AWSEncodableShape {
        ///  Unique project identifier.
        public let projectId: String
        ///  If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.
        public let syncFromResources: Bool?

        public init(projectId: String, syncFromResources: Bool? = nil) {
            self.projectId = projectId
            self.syncFromResources = syncFromResources
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.projectId, key: "projectId")
            request.encodeQuery(self.syncFromResources, key: "syncFromResources")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeProjectResult: AWSDecodableShape {
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct ExportBundleRequest: AWSEncodableShape {
        ///  Unique bundle identifier.
        public let bundleId: String
        ///  Developer desktop or target application platform.
        public let platform: Platform?
        ///  Unique project identifier.
        public let projectId: String?

        public init(bundleId: String, platform: Platform? = nil, projectId: String? = nil) {
            self.bundleId = bundleId
            self.platform = platform
            self.projectId = projectId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.bundleId, key: "bundleId")
            request.encodeQuery(self.platform, key: "platform")
            request.encodeQuery(self.projectId, key: "projectId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ExportBundleResult: AWSDecodableShape {
        ///  URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project.
        public let downloadUrl: String?

        public init(downloadUrl: String? = nil) {
            self.downloadUrl = downloadUrl
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
        }
    }

    public struct ExportProjectRequest: AWSEncodableShape {
        ///  Unique project identifier.
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.projectId, key: "projectId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ExportProjectResult: AWSDecodableShape {
        ///  URL which can be used to download the exported project configuation file(s).
        public let downloadUrl: String?
        ///  URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again.
        public let shareUrl: String?
        ///  Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL.
        public let snapshotId: String?

        public init(downloadUrl: String? = nil, shareUrl: String? = nil, snapshotId: String? = nil) {
            self.downloadUrl = downloadUrl
            self.shareUrl = shareUrl
            self.snapshotId = snapshotId
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
            case shareUrl = "shareUrl"
            case snapshotId = "snapshotId"
        }
    }

    public struct ListBundlesRequest: AWSEncodableShape {
        ///  Maximum number of records to list in a single response.
        public let maxResults: Int?
        ///  Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.maxResults, key: "maxResults")
            request.encodeQuery(self.nextToken, key: "nextToken")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListBundlesResult: AWSDecodableShape {
        ///  A list of bundles.
        public let bundleList: [BundleDetails]?
        ///  Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries.
        public let nextToken: String?

        public init(bundleList: [BundleDetails]? = nil, nextToken: String? = nil) {
            self.bundleList = bundleList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case bundleList = "bundleList"
            case nextToken = "nextToken"
        }
    }

    public struct ListProjectsRequest: AWSEncodableShape {
        ///  Maximum number of records to list in a single response.
        public let maxResults: Int?
        ///  Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.maxResults, key: "maxResults")
            request.encodeQuery(self.nextToken, key: "nextToken")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListProjectsResult: AWSDecodableShape {
        public let nextToken: String?
        public let projects: [ProjectSummary]?

        public init(nextToken: String? = nil, projects: [ProjectSummary]? = nil) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct ProjectDetails: AWSDecodableShape {
        ///  Website URL for this project in the AWS Mobile Hub console.
        public let consoleUrl: String?
        ///  Date the project was created.
        public let createdDate: Date?
        ///  Date of the last modification of the project.
        public let lastUpdatedDate: Date?
        public let name: String?
        public let projectId: String?
        public let region: String?
        public let resources: [Resource]?
        public let state: ProjectState?

        public init(consoleUrl: String? = nil, createdDate: Date? = nil, lastUpdatedDate: Date? = nil, name: String? = nil, projectId: String? = nil, region: String? = nil, resources: [Resource]? = nil, state: ProjectState? = nil) {
            self.consoleUrl = consoleUrl
            self.createdDate = createdDate
            self.lastUpdatedDate = lastUpdatedDate
            self.name = name
            self.projectId = projectId
            self.region = region
            self.resources = resources
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case consoleUrl = "consoleUrl"
            case createdDate = "createdDate"
            case lastUpdatedDate = "lastUpdatedDate"
            case name = "name"
            case projectId = "projectId"
            case region = "region"
            case resources = "resources"
            case state = "state"
        }
    }

    public struct ProjectSummary: AWSDecodableShape {
        ///  Name of the project.
        public let name: String?
        ///  Unique project identifier.
        public let projectId: String?

        public init(name: String? = nil, projectId: String? = nil) {
            self.name = name
            self.projectId = projectId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case projectId = "projectId"
        }
    }

    public struct Resource: AWSDecodableShape {
        public let arn: String?
        public let attributes: [String: String]?
        public let feature: String?
        public let name: String?
        public let type: String?

        public init(arn: String? = nil, attributes: [String: String]? = nil, feature: String? = nil, name: String? = nil, type: String? = nil) {
            self.arn = arn
            self.attributes = attributes
            self.feature = feature
            self.name = name
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case attributes = "attributes"
            case feature = "feature"
            case name = "name"
            case type = "type"
        }
    }

    public struct UpdateProjectRequest: AWSEncodableShape {
        ///  ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation.
        public let contents: AWSHTTPBody?
        ///  Unique project identifier.
        public let projectId: String

        public init(contents: AWSHTTPBody? = nil, projectId: String) {
            self.contents = contents
            self.projectId = projectId
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.singleValueContainer()
            try container.encode(self.contents)
            request.encodeQuery(self.projectId, key: "projectId")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateProjectResult: AWSDecodableShape {
        ///  Detailed information about the updated AWS Mobile Hub project.
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }
}

// MARK: - Errors

/// Error enum for Mobile
public struct MobileErrorType: AWSErrorType {
    enum Code: String {
        case accountActionRequiredException = "AccountActionRequiredException"
        case badRequestException = "BadRequestException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Mobile
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

    ///  Account Action is required in order to continue the request.
    public static var accountActionRequiredException: Self { .init(.accountActionRequiredException) }
    ///  The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed.
    public static var badRequestException: Self { .init(.badRequestException) }
    ///  The service has encountered an unexpected error condition which prevents it from servicing the request.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    ///  There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    ///  No entity can be found with the specified identifier.
    public static var notFoundException: Self { .init(.notFoundException) }
    ///  The service is temporarily unavailable. The request should be retried after some time delay.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    ///  Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    ///  Credentials of the caller are insufficient to authorize the request.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension MobileErrorType: Equatable {
    public static func == (lhs: MobileErrorType, rhs: MobileErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MobileErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
