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

extension PcaConnectorScep {
    // MARK: Enums

    public enum ConnectorStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleting = "DELETING"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public enum ConnectorStatusReason: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case internalFailure = "INTERNAL_FAILURE"
        case privatecaAccessDenied = "PRIVATECA_ACCESS_DENIED"
        case privatecaInvalidState = "PRIVATECA_INVALID_STATE"
        case privatecaResourceNotFound = "PRIVATECA_RESOURCE_NOT_FOUND"
        public var description: String { return self.rawValue }
    }

    public enum ConnectorType: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case generalPurpose = "GENERAL_PURPOSE"
        case intune = "INTUNE"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Challenge: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the challenge.
        public let arn: String?
        /// The Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String?
        /// The date and time that the challenge was created.
        public let createdAt: Date?
        /// The SCEP challenge password, in UUID format.
        public let password: String?
        /// The date and time that the challenge was updated.
        public let updatedAt: Date?

        public init(arn: String? = nil, connectorArn: String? = nil, createdAt: Date? = nil, password: String? = nil, updatedAt: Date? = nil) {
            self.arn = arn
            self.connectorArn = connectorArn
            self.createdAt = createdAt
            self.password = password
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case connectorArn = "ConnectorArn"
            case createdAt = "CreatedAt"
            case password = "Password"
            case updatedAt = "UpdatedAt"
        }
    }

    public struct ChallengeMetadata: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the challenge.
        public let arn: String?
        /// The Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String?
        /// The date and time that the connector was created.
        public let createdAt: Date?
        /// The date and time that the connector was updated.
        public let updatedAt: Date?

        public init(arn: String? = nil, connectorArn: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
            self.arn = arn
            self.connectorArn = connectorArn
            self.createdAt = createdAt
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case connectorArn = "ConnectorArn"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
        }
    }

    public struct ChallengeMetadataSummary: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the challenge.
        public let arn: String?
        /// The Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String?
        /// The date and time that the challenge was created.
        public let createdAt: Date?
        /// The date and time that the challenge was updated.
        public let updatedAt: Date?

        public init(arn: String? = nil, connectorArn: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
            self.arn = arn
            self.connectorArn = connectorArn
            self.createdAt = createdAt
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case connectorArn = "ConnectorArn"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
        }
    }

    public struct Connector: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the connector.
        public let arn: String?
        /// The Amazon Resource Name (ARN) of the certificate authority associated with the connector.
        public let certificateAuthorityArn: String?
        /// The date and time that the connector was created.
        public let createdAt: Date?
        /// The connector's HTTPS public SCEP URL.
        public let endpoint: String?
        /// Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure MobileDeviceManagement, then the connector is for general-purpose use and this object is empty.
        public let mobileDeviceManagement: MobileDeviceManagement?
        /// Contains OpenID Connect (OIDC) parameters for use with Connector for SCEP for Microsoft Intune. For more information about using Connector for SCEP for Microsoft Intune, see Using Connector for SCEP for Microsoft Intune.
        public let openIdConfiguration: OpenIdConfiguration?
        /// The connector's status.
        public let status: ConnectorStatus?
        /// Information about why connector creation failed, if status is FAILED.
        public let statusReason: ConnectorStatusReason?
        /// The connector type.
        public let type: ConnectorType?
        /// The date and time that the connector was updated.
        public let updatedAt: Date?

        public init(arn: String? = nil, certificateAuthorityArn: String? = nil, createdAt: Date? = nil, endpoint: String? = nil, mobileDeviceManagement: MobileDeviceManagement? = nil, openIdConfiguration: OpenIdConfiguration? = nil, status: ConnectorStatus? = nil, statusReason: ConnectorStatusReason? = nil, type: ConnectorType? = nil, updatedAt: Date? = nil) {
            self.arn = arn
            self.certificateAuthorityArn = certificateAuthorityArn
            self.createdAt = createdAt
            self.endpoint = endpoint
            self.mobileDeviceManagement = mobileDeviceManagement
            self.openIdConfiguration = openIdConfiguration
            self.status = status
            self.statusReason = statusReason
            self.type = type
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case certificateAuthorityArn = "CertificateAuthorityArn"
            case createdAt = "CreatedAt"
            case endpoint = "Endpoint"
            case mobileDeviceManagement = "MobileDeviceManagement"
            case openIdConfiguration = "OpenIdConfiguration"
            case status = "Status"
            case statusReason = "StatusReason"
            case type = "Type"
            case updatedAt = "UpdatedAt"
        }
    }

    public struct ConnectorSummary: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the connector.
        public let arn: String?
        /// The Amazon Resource Name (ARN) of the connector's associated certificate authority.
        public let certificateAuthorityArn: String?
        /// The date and time that the challenge was created.
        public let createdAt: Date?
        /// The connector's HTTPS public SCEP URL.
        public let endpoint: String?
        /// Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure MobileDeviceManagement, then the connector is for general-purpose use and this object is empty.
        public let mobileDeviceManagement: MobileDeviceManagement?
        /// Contains OpenID Connect (OIDC) parameters for use with Microsoft Intune.
        public let openIdConfiguration: OpenIdConfiguration?
        /// The connector's status. Status can be creating, active, deleting, or failed.
        public let status: ConnectorStatus?
        /// Information about why connector creation failed, if status is FAILED.
        public let statusReason: ConnectorStatusReason?
        /// The connector type.
        public let type: ConnectorType?
        /// The date and time that the challenge was updated.
        public let updatedAt: Date?

        public init(arn: String? = nil, certificateAuthorityArn: String? = nil, createdAt: Date? = nil, endpoint: String? = nil, mobileDeviceManagement: MobileDeviceManagement? = nil, openIdConfiguration: OpenIdConfiguration? = nil, status: ConnectorStatus? = nil, statusReason: ConnectorStatusReason? = nil, type: ConnectorType? = nil, updatedAt: Date? = nil) {
            self.arn = arn
            self.certificateAuthorityArn = certificateAuthorityArn
            self.createdAt = createdAt
            self.endpoint = endpoint
            self.mobileDeviceManagement = mobileDeviceManagement
            self.openIdConfiguration = openIdConfiguration
            self.status = status
            self.statusReason = statusReason
            self.type = type
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case certificateAuthorityArn = "CertificateAuthorityArn"
            case createdAt = "CreatedAt"
            case endpoint = "Endpoint"
            case mobileDeviceManagement = "MobileDeviceManagement"
            case openIdConfiguration = "OpenIdConfiguration"
            case status = "Status"
            case statusReason = "StatusReason"
            case type = "Type"
            case updatedAt = "UpdatedAt"
        }
    }

    public struct CreateChallengeRequest: AWSEncodableShape {
        /// Custom string that can be used to distinguish between calls to the CreateChallenge action. Client tokens for CreateChallenge time out after five minutes. Therefore, if you call CreateChallenge multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.
        public let clientToken: String?
        /// The Amazon Resource Name (ARN) of the connector that you want to create a challenge for.
        public let connectorArn: String
        /// The key-value pairs to associate with the resource.
        public let tags: [String: String]?

        public init(clientToken: String? = CreateChallengeRequest.idempotencyToken(), connectorArn: String, tags: [String: String]? = nil) {
            self.clientToken = clientToken
            self.connectorArn = connectorArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, max: 200)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, min: 5)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case connectorArn = "ConnectorArn"
            case tags = "Tags"
        }
    }

    public struct CreateChallengeResponse: AWSDecodableShape {
        /// Returns the challenge details for the specified connector.
        public let challenge: Challenge?

        public init(challenge: Challenge? = nil) {
            self.challenge = challenge
        }

        private enum CodingKeys: String, CodingKey {
            case challenge = "Challenge"
        }
    }

    public struct CreateConnectorRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Amazon Web Services Private Certificate Authority certificate authority to use with this connector. Due to security vulnerabilities present in the SCEP protocol, we recommend using a private CA that's dedicated for use with the connector. To retrieve the private CAs associated with your account, you can call ListCertificateAuthorities using the Amazon Web Services Private CA API.
        public let certificateAuthorityArn: String
        /// Custom string that can be used to distinguish between calls to the CreateChallenge action. Client tokens for CreateChallenge time out after five minutes. Therefore, if you call CreateChallenge multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.
        public let clientToken: String?
        /// If you don't supply a value, by default Connector for SCEP creates a connector for general-purpose use. A general-purpose connector is designed to work with clients or endpoints that support the SCEP protocol, except Connector for SCEP for Microsoft Intune. With connectors for general-purpose use, you manage SCEP challenge passwords using Connector for SCEP. For information about considerations and limitations with using Connector for SCEP, see Considerations and Limitations. If you provide an IntuneConfiguration, Connector for SCEP creates a connector for use with Microsoft Intune, and you manage the challenge passwords using Microsoft Intune. For more information, see Using Connector for SCEP for Microsoft Intune.
        public let mobileDeviceManagement: MobileDeviceManagement?
        /// The key-value pairs to associate with the resource.
        public let tags: [String: String]?

        public init(certificateAuthorityArn: String, clientToken: String? = CreateConnectorRequest.idempotencyToken(), mobileDeviceManagement: MobileDeviceManagement? = nil, tags: [String: String]? = nil) {
            self.certificateAuthorityArn = certificateAuthorityArn
            self.clientToken = clientToken
            self.mobileDeviceManagement = mobileDeviceManagement
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.certificateAuthorityArn, name: "certificateAuthorityArn", parent: name, max: 200)
            try self.validate(self.certificateAuthorityArn, name: "certificateAuthorityArn", parent: name, min: 5)
            try self.validate(self.certificateAuthorityArn, name: "certificateAuthorityArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:acm-pca:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
            try self.mobileDeviceManagement?.validate(name: "\(name).mobileDeviceManagement")
        }

        private enum CodingKeys: String, CodingKey {
            case certificateAuthorityArn = "CertificateAuthorityArn"
            case clientToken = "ClientToken"
            case mobileDeviceManagement = "MobileDeviceManagement"
            case tags = "Tags"
        }
    }

    public struct CreateConnectorResponse: AWSDecodableShape {
        /// Returns the Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String?

        public init(connectorArn: String? = nil) {
            self.connectorArn = connectorArn
        }

        private enum CodingKeys: String, CodingKey {
            case connectorArn = "ConnectorArn"
        }
    }

    public struct DeleteChallengeRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the challenge password to delete.
        public let challengeArn: String

        public init(challengeArn: String) {
            self.challengeArn = challengeArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.challengeArn, key: "ChallengeArn")
        }

        public func validate(name: String) throws {
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, max: 200)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, min: 5)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/challenge\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteConnectorRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the connector to delete.
        public let connectorArn: String

        public init(connectorArn: String) {
            self.connectorArn = connectorArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.connectorArn, key: "ConnectorArn")
        }

        public func validate(name: String) throws {
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, max: 200)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, min: 5)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetChallengeMetadataRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the challenge.
        public let challengeArn: String

        public init(challengeArn: String) {
            self.challengeArn = challengeArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.challengeArn, key: "ChallengeArn")
        }

        public func validate(name: String) throws {
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, max: 200)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, min: 5)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/challenge\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetChallengeMetadataResponse: AWSDecodableShape {
        /// The metadata for the challenge.
        public let challengeMetadata: ChallengeMetadata?

        public init(challengeMetadata: ChallengeMetadata? = nil) {
            self.challengeMetadata = challengeMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case challengeMetadata = "ChallengeMetadata"
        }
    }

    public struct GetChallengePasswordRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the challenge.
        public let challengeArn: String

        public init(challengeArn: String) {
            self.challengeArn = challengeArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.challengeArn, key: "ChallengeArn")
        }

        public func validate(name: String) throws {
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, max: 200)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, min: 5)
            try self.validate(self.challengeArn, name: "challengeArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/challenge\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetChallengePasswordResponse: AWSDecodableShape {
        /// The SCEP challenge password.
        public let password: String?

        public init(password: String? = nil) {
            self.password = password
        }

        private enum CodingKeys: String, CodingKey {
            case password = "Password"
        }
    }

    public struct GetConnectorRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String

        public init(connectorArn: String) {
            self.connectorArn = connectorArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.connectorArn, key: "ConnectorArn")
        }

        public func validate(name: String) throws {
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, max: 200)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, min: 5)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectorResponse: AWSDecodableShape {
        /// The properties of the connector.
        public let connector: Connector?

        public init(connector: Connector? = nil) {
            self.connector = connector
        }

        private enum CodingKeys: String, CodingKey {
            case connector = "Connector"
        }
    }

    public struct IntuneConfiguration: AWSEncodableShape & AWSDecodableShape {
        /// The directory (tenant) ID from your Microsoft Entra ID app registration.
        public let azureApplicationId: String
        /// The primary domain from your Microsoft Entra ID app registration.
        public let domain: String

        public init(azureApplicationId: String, domain: String) {
            self.azureApplicationId = azureApplicationId
            self.domain = domain
        }

        public func validate(name: String) throws {
            try self.validate(self.azureApplicationId, name: "azureApplicationId", parent: name, max: 100)
            try self.validate(self.azureApplicationId, name: "azureApplicationId", parent: name, min: 15)
            try self.validate(self.azureApplicationId, name: "azureApplicationId", parent: name, pattern: "^[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}$")
            try self.validate(self.domain, name: "domain", parent: name, max: 256)
            try self.validate(self.domain, name: "domain", parent: name, min: 1)
            try self.validate(self.domain, name: "domain", parent: name, pattern: "^[a-zA-Z0-9._-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case azureApplicationId = "AzureApplicationId"
            case domain = "Domain"
        }
    }

    public struct ListChallengeMetadataRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the connector.
        public let connectorArn: String
        /// The maximum number of objects that you want Connector for SCEP to return for this request. If more objects are available, in the response, Connector for SCEP provides a NextToken value that you can use in a subsequent call to get the next batch of objects.
        public let maxResults: Int?
        /// When you request a list of objects with a MaxResults setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a NextToken value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.
        public let nextToken: String?

        public init(connectorArn: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.connectorArn = connectorArn
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.connectorArn, key: "ConnectorArn")
            request.encodeQuery(self.maxResults, key: "MaxResults")
            request.encodeQuery(self.nextToken, key: "NextToken")
        }

        public func validate(name: String) throws {
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, max: 200)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, min: 5)
            try self.validate(self.connectorArn, name: "connectorArn", parent: name, pattern: "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(?:[A-Za-z0-9_-]{4})*(?:[A-Za-z0-9_-]{2}==|[A-Za-z0-9_-]{3}=)?$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListChallengeMetadataResponse: AWSDecodableShape {
        /// The challenge metadata for the challenges belonging to your Amazon Web Services account.
        public let challenges: [ChallengeMetadataSummary]?
        /// When you request a list of objects with a MaxResults setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a NextToken value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.
        public let nextToken: String?

        public init(challenges: [ChallengeMetadataSummary]? = nil, nextToken: String? = nil) {
            self.challenges = challenges
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case challenges = "Challenges"
            case nextToken = "NextToken"
        }
    }

    public struct ListConnectorsRequest: AWSEncodableShape {
        /// The maximum number of objects that you want Connector for SCEP to return for this request. If more objects are available, in the response, Connector for SCEP provides a NextToken value that you can use in a subsequent call to get the next batch of objects.
        public let maxResults: Int?
        /// When you request a list of objects with a MaxResults setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a NextToken value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.maxResults, key: "MaxResults")
            request.encodeQuery(self.nextToken, key: "NextToken")
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(?:[A-Za-z0-9_-]{4})*(?:[A-Za-z0-9_-]{2}==|[A-Za-z0-9_-]{3}=)?$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListConnectorsResponse: AWSDecodableShape {
        /// The connectors belonging to your Amazon Web Services account.
        public let connectors: [ConnectorSummary]?
        /// When you request a list of objects with a MaxResults setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a NextToken value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.
        public let nextToken: String?

        public init(connectors: [ConnectorSummary]? = nil, nextToken: String? = nil) {
            self.connectors = connectors
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case connectors = "Connectors"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "ResourceArn")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The key-value pairs to associate with the resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct OpenIdConfiguration: AWSDecodableShape {
        /// The audience value to copy into your Microsoft Entra app registration's OIDC.
        public let audience: String?
        /// The issuer value to copy into your Microsoft Entra app registration's OIDC.
        public let issuer: String?
        /// The subject value to copy into your Microsoft Entra app registration's OIDC.
        public let subject: String?

        public init(audience: String? = nil, issuer: String? = nil, subject: String? = nil) {
            self.audience = audience
            self.issuer = issuer
            self.subject = subject
        }

        private enum CodingKeys: String, CodingKey {
            case audience = "Audience"
            case issuer = "Issuer"
            case subject = "Subject"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// The key-value pairs to associate with the resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "ResourceArn")
            try container.encode(self.tags, forKey: .tags)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// Specifies a list of tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "ResourceArn")
            request.encodeQuery(self.tagKeys, key: "tagKeys")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct MobileDeviceManagement: AWSEncodableShape & AWSDecodableShape {
        /// Configuration settings for use with Microsoft Intune. For information about using Connector for SCEP for Microsoft Intune, see Using Connector for SCEP for Microsoft Intune.
        public let intune: IntuneConfiguration?

        public init(intune: IntuneConfiguration? = nil) {
            self.intune = intune
        }

        public func validate(name: String) throws {
            try self.intune?.validate(name: "\(name).intune")
        }

        private enum CodingKeys: String, CodingKey {
            case intune = "Intune"
        }
    }
}

// MARK: - Errors

/// Error enum for PcaConnectorScep
public struct PcaConnectorScepErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize PcaConnectorScep
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

    /// You can receive this error if you attempt to perform an operation and you don't have the required permissions. This can be caused by insufficient permissions in policies attached to your Amazon Web Services Identity and Access Management (IAM) principal. It can also happen because of restrictions in place from an Amazon Web Services Organizations service control policy (SCP) that affects your Amazon Web Services account.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request is malformed or contains an error such as an invalid parameter value or a missing required parameter.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// This request can't be completed for one of the following reasons because the requested resource was being concurrently modified by another request.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request processing has failed because of an unknown error, exception or failure with an internal server.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The operation tried to access a nonexistent resource. The resource might be incorrectly specified, or it might have a status other than ACTIVE.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request would cause a service quota to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The limit on the number of requests per second was exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// An input validation error occurred. For example, invalid characters in a name tag, or an invalid pagination token.
    public static var validationException: Self { .init(.validationException) }
}

extension PcaConnectorScepErrorType: Equatable {
    public static func == (lhs: PcaConnectorScepErrorType, rhs: PcaConnectorScepErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PcaConnectorScepErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
