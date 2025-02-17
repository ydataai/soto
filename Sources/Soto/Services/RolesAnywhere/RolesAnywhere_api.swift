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

@_exported import SotoCore

/// Service object for interacting with AWS RolesAnywhere service.
///
/// Identity and Access Management Roles Anywhere provides a secure way for your workloads such as servers, containers, and applications that run outside of Amazon Web Services to obtain temporary Amazon Web Services credentials. Your workloads can use the same IAM policies and roles you have for native Amazon Web Services applications to access Amazon Web Services resources. Using IAM Roles Anywhere eliminates the need to manage long-term credentials for workloads running outside of Amazon Web Services.  To use IAM Roles Anywhere, your workloads must use X.509 certificates issued by their certificate authority (CA). You register the CA with IAM Roles Anywhere as a trust anchor to establish trust between your public key infrastructure (PKI) and IAM Roles Anywhere. If you don't manage your own PKI system, you can use Private Certificate Authority to create a CA and then use that to establish trust with IAM Roles Anywhere.  This guide describes the IAM Roles Anywhere operations that you can call programmatically. For more information about IAM Roles Anywhere, see the IAM Roles Anywhere User Guide.
public struct RolesAnywhere: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RolesAnywhere client
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
            serviceName: "RolesAnywhere",
            serviceIdentifier: "rolesanywhere",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: RolesAnywhereErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "rolesanywhere-fips.us-east-1.amazonaws.com",
            "us-east-2": "rolesanywhere-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "rolesanywhere-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "rolesanywhere-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "rolesanywhere-fips.us-west-1.amazonaws.com",
            "us-west-2": "rolesanywhere-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates a profile, a list of the roles that Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with IAM managed policies.  Required permissions:  rolesanywhere:CreateProfile.
    @Sendable
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "CreateProfile", 
            path: "/profiles", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a trust anchor to establish trust between IAM Roles Anywhere and your certificate authority (CA). You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by the CA in exchange for temporary Amazon Web Services credentials.  Required permissions:  rolesanywhere:CreateTrustAnchor.
    @Sendable
    public func createTrustAnchor(_ input: CreateTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "CreateTrustAnchor", 
            path: "/trustanchors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete an entry from the attribute mapping rules enforced by a given profile.
    @Sendable
    public func deleteAttributeMapping(_ input: DeleteAttributeMappingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAttributeMappingResponse {
        return try await self.client.execute(
            operation: "DeleteAttributeMapping", 
            path: "/profiles/{profileId}/mappings", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a certificate revocation list (CRL).  Required permissions:  rolesanywhere:DeleteCrl.
    @Sendable
    public func deleteCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "DeleteCrl", 
            path: "/crl/{crlId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a profile.  Required permissions:  rolesanywhere:DeleteProfile.
    @Sendable
    public func deleteProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "DeleteProfile", 
            path: "/profile/{profileId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a trust anchor.  Required permissions:  rolesanywhere:DeleteTrustAnchor.
    @Sendable
    public func deleteTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "DeleteTrustAnchor", 
            path: "/trustanchor/{trustAnchorId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disables a certificate revocation list (CRL).  Required permissions:  rolesanywhere:DisableCrl.
    @Sendable
    public func disableCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "DisableCrl", 
            path: "/crl/{crlId}/disable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disables a profile. When disabled, temporary credential requests with this profile fail.  Required permissions:  rolesanywhere:DisableProfile.
    @Sendable
    public func disableProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "DisableProfile", 
            path: "/profile/{profileId}/disable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disables a trust anchor. When disabled, temporary credential requests specifying this trust anchor are unauthorized.  Required permissions:  rolesanywhere:DisableTrustAnchor.
    @Sendable
    public func disableTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "DisableTrustAnchor", 
            path: "/trustanchor/{trustAnchorId}/disable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Enables a certificate revocation list (CRL). When enabled, certificates stored in the CRL are unauthorized to receive session credentials.  Required permissions:  rolesanywhere:EnableCrl.
    @Sendable
    public func enableCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "EnableCrl", 
            path: "/crl/{crlId}/enable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Enables temporary credential requests for a profile.   Required permissions:  rolesanywhere:EnableProfile.
    @Sendable
    public func enableProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "EnableProfile", 
            path: "/profile/{profileId}/enable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Enables a trust anchor. When enabled, certificates in the trust anchor chain are authorized for trust validation.   Required permissions:  rolesanywhere:EnableTrustAnchor.
    @Sendable
    public func enableTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "EnableTrustAnchor", 
            path: "/trustanchor/{trustAnchorId}/enable", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a certificate revocation list (CRL).  Required permissions:  rolesanywhere:GetCrl.
    @Sendable
    public func getCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "GetCrl", 
            path: "/crl/{crlId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a profile.  Required permissions:  rolesanywhere:GetProfile.
    @Sendable
    public func getProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "GetProfile", 
            path: "/profile/{profileId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a subject, which associates a certificate identity with authentication attempts. The subject stores auditing information such as the status of the last authentication attempt, the certificate data used in the attempt, and the last time the associated identity attempted authentication.   Required permissions:  rolesanywhere:GetSubject.
    @Sendable
    public func getSubject(_ input: ScalarSubjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SubjectDetailResponse {
        return try await self.client.execute(
            operation: "GetSubject", 
            path: "/subject/{subjectId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a trust anchor.  Required permissions:  rolesanywhere:GetTrustAnchor.
    @Sendable
    public func getTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "GetTrustAnchor", 
            path: "/trustanchor/{trustAnchorId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports the certificate revocation list (CRL). A CRL is a list of certificates that have been revoked by the issuing certificate Authority (CA).In order to be properly imported, a CRL must be in PEM  format. IAM Roles Anywhere validates against the CRL before issuing credentials.   Required permissions:  rolesanywhere:ImportCrl.
    @Sendable
    public func importCrl(_ input: ImportCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "ImportCrl", 
            path: "/crls", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all certificate revocation lists (CRL) in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListCrls.
    @Sendable
    public func listCrls(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCrlsResponse {
        return try await self.client.execute(
            operation: "ListCrls", 
            path: "/crls", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all profiles in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListProfiles.
    @Sendable
    public func listProfiles(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProfilesResponse {
        return try await self.client.execute(
            operation: "ListProfiles", 
            path: "/profiles", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the subjects in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListSubjects.
    @Sendable
    public func listSubjects(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSubjectsResponse {
        return try await self.client.execute(
            operation: "ListSubjects", 
            path: "/subjects", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags attached to the resource.  Required permissions:  rolesanywhere:ListTagsForResource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/ListTagsForResource", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListTrustAnchors.
    @Sendable
    public func listTrustAnchors(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTrustAnchorsResponse {
        return try await self.client.execute(
            operation: "ListTrustAnchors", 
            path: "/trustanchors", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Put an entry in the attribute mapping rules that will be enforced by a given profile.  A mapping specifies a certificate field and one or more specifiers that have contextual meanings.
    @Sendable
    public func putAttributeMapping(_ input: PutAttributeMappingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAttributeMappingResponse {
        return try await self.client.execute(
            operation: "PutAttributeMapping", 
            path: "/profiles/{profileId}/mappings", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Attaches a list of notification settings to a trust anchor. A notification setting includes information such as event name, threshold, status of the notification setting, and the channel to notify.  Required permissions:  rolesanywhere:PutNotificationSettings.
    @Sendable
    public func putNotificationSettings(_ input: PutNotificationSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutNotificationSettingsResponse {
        return try await self.client.execute(
            operation: "PutNotificationSettings", 
            path: "/put-notifications-settings", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Resets the custom notification setting to IAM Roles Anywhere default setting.   Required permissions:  rolesanywhere:ResetNotificationSettings.
    @Sendable
    public func resetNotificationSettings(_ input: ResetNotificationSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ResetNotificationSettingsResponse {
        return try await self.client.execute(
            operation: "ResetNotificationSettings", 
            path: "/reset-notifications-settings", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Attaches tags to a resource.  Required permissions:  rolesanywhere:TagResource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/TagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from the resource.  Required permissions:  rolesanywhere:UntagResource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/UntagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the certificate revocation list (CRL). A CRL is a list of certificates that have been revoked by the issuing certificate authority (CA). IAM Roles Anywhere validates against the CRL before issuing credentials.  Required permissions:  rolesanywhere:UpdateCrl.
    @Sendable
    public func updateCrl(_ input: UpdateCrlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CrlDetailResponse {
        return try await self.client.execute(
            operation: "UpdateCrl", 
            path: "/crl/{crlId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a profile, a list of the roles that IAM Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with IAM managed policies.  Required permissions:  rolesanywhere:UpdateProfile.
    @Sendable
    public func updateProfile(_ input: UpdateProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ProfileDetailResponse {
        return try await self.client.execute(
            operation: "UpdateProfile", 
            path: "/profile/{profileId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a trust anchor. You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by the CA in exchange for temporary Amazon Web Services credentials.  Required permissions:  rolesanywhere:UpdateTrustAnchor.
    @Sendable
    public func updateTrustAnchor(_ input: UpdateTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TrustAnchorDetailResponse {
        return try await self.client.execute(
            operation: "UpdateTrustAnchor", 
            path: "/trustanchor/{trustAnchorId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension RolesAnywhere {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RolesAnywhere, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RolesAnywhere {
    /// Lists all certificate revocation lists (CRL) in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListCrls.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCrlsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequest, ListCrlsResponse> {
        return .init(
            input: input,
            command: self.listCrls,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListCrlsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all profiles in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListProfiles.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProfilesPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequest, ListProfilesResponse> {
        return .init(
            input: input,
            command: self.listProfiles,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListProfilesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the subjects in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListSubjects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSubjectsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequest, ListSubjectsResponse> {
        return .init(
            input: input,
            command: self.listSubjects,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListSubjectsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListTrustAnchors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTrustAnchorsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRequest, ListTrustAnchorsResponse> {
        return .init(
            input: input,
            command: self.listTrustAnchors,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListTrustAnchorsResponse.nextToken,
            logger: logger
        )
    }
}

extension RolesAnywhere.ListRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RolesAnywhere.ListRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )
    }
}
