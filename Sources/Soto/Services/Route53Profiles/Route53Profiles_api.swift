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

/// Service object for interacting with AWS Route53Profiles service.
///
///  With Amazon Route 53 Profiles you can share Route 53 configurations with VPCs and AWS accounts
public struct Route53Profiles: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Route53Profiles client
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
            serviceName: "Route53Profiles",
            serviceIdentifier: "route53profiles",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: Route53ProfilesErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    ///  Associates a Route 53 Profiles profile with a VPC. A VPC can have only one Profile associated with it, but a Profile can be associated with 1000 of VPCs (and you can request a higher quota).  For more information, see https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities.
    @Sendable
    public func associateProfile(_ input: AssociateProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateProfileResponse {
        return try await self.client.execute(
            operation: "AssociateProfile", 
            path: "/profileassociation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Associates a DNS reource configuration to a Route 53 Profile.
    @Sendable
    public func associateResourceToProfile(_ input: AssociateResourceToProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateResourceToProfileResponse {
        return try await self.client.execute(
            operation: "AssociateResourceToProfile", 
            path: "/profileresourceassociation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Creates an empty Route 53 Profile.
    @Sendable
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProfileResponse {
        return try await self.client.execute(
            operation: "CreateProfile", 
            path: "/profile", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Deletes the specified Route 53 Profile. Before you can delete a profile, you must first disassociate it from all VPCs.
    @Sendable
    public func deleteProfile(_ input: DeleteProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProfileResponse {
        return try await self.client.execute(
            operation: "DeleteProfile", 
            path: "/profile/{ProfileId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Dissociates a specified Route 53 Profile from the specified VPC.
    @Sendable
    public func disassociateProfile(_ input: DisassociateProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateProfileResponse {
        return try await self.client.execute(
            operation: "DisassociateProfile", 
            path: "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Dissoaciated a specified resource, from the Route 53 Profile.
    @Sendable
    public func disassociateResourceFromProfile(_ input: DisassociateResourceFromProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateResourceFromProfileResponse {
        return try await self.client.execute(
            operation: "DisassociateResourceFromProfile", 
            path: "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns information about a specified Route 53 Profile, such as whether whether the Profile is shared, and the current status of the Profile.
    @Sendable
    public func getProfile(_ input: GetProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProfileResponse {
        return try await self.client.execute(
            operation: "GetProfile", 
            path: "/profile/{ProfileId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Retrieves a Route 53 Profile association for a VPC. A VPC can have only one Profile association, but a Profile can be associated with up to 5000 VPCs.
    @Sendable
    public func getProfileAssociation(_ input: GetProfileAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProfileAssociationResponse {
        return try await self.client.execute(
            operation: "GetProfileAssociation", 
            path: "/profileassociation/{ProfileAssociationId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns information about a specified Route 53 Profile resource association.
    @Sendable
    public func getProfileResourceAssociation(_ input: GetProfileResourceAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProfileResourceAssociationResponse {
        return try await self.client.execute(
            operation: "GetProfileResourceAssociation", 
            path: "/profileresourceassociation/{ProfileResourceAssociationId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all the VPCs that the specified Route 53 Profile is associated with.
    @Sendable
    public func listProfileAssociations(_ input: ListProfileAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProfileAssociationsResponse {
        return try await self.client.execute(
            operation: "ListProfileAssociations", 
            path: "/profileassociations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all the resource associations for the specified Route 53 Profile.
    @Sendable
    public func listProfileResourceAssociations(_ input: ListProfileResourceAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProfileResourceAssociationsResponse {
        return try await self.client.execute(
            operation: "ListProfileResourceAssociations", 
            path: "/profileresourceassociations/profileid/{ProfileId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all the Route 53 Profiles associated with your Amazon Web Services account.
    @Sendable
    public func listProfiles(_ input: ListProfilesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProfilesResponse {
        return try await self.client.execute(
            operation: "ListProfiles", 
            path: "/profiles", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists the tags that you associated with the specified resource.
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

    ///  Adds one or more tags to a specified resource.
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

    ///  Removes one or more tags from a specified resource.
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

    /// Updates the specified Route 53 Profile resourse association.
    @Sendable
    public func updateProfileResourceAssociation(_ input: UpdateProfileResourceAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProfileResourceAssociationResponse {
        return try await self.client.execute(
            operation: "UpdateProfileResourceAssociation", 
            path: "/profileresourceassociation/{ProfileResourceAssociationId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Route53Profiles {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Route53Profiles, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53Profiles {
    ///  Lists all the VPCs that the specified Route 53 Profile is associated with.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProfileAssociationsPaginator(
        _ input: ListProfileAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProfileAssociationsRequest, ListProfileAssociationsResponse> {
        return .init(
            input: input,
            command: self.listProfileAssociations,
            inputKey: \ListProfileAssociationsRequest.nextToken,
            outputKey: \ListProfileAssociationsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all the resource associations for the specified Route 53 Profile.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProfileResourceAssociationsPaginator(
        _ input: ListProfileResourceAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProfileResourceAssociationsRequest, ListProfileResourceAssociationsResponse> {
        return .init(
            input: input,
            command: self.listProfileResourceAssociations,
            inputKey: \ListProfileResourceAssociationsRequest.nextToken,
            outputKey: \ListProfileResourceAssociationsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all the Route 53 Profiles associated with your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProfilesPaginator(
        _ input: ListProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProfilesRequest, ListProfilesResponse> {
        return .init(
            input: input,
            command: self.listProfiles,
            inputKey: \ListProfilesRequest.nextToken,
            outputKey: \ListProfilesResponse.nextToken,
            logger: logger
        )
    }
}

extension Route53Profiles.ListProfileAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Profiles.ListProfileAssociationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            profileId: self.profileId,
            resourceId: self.resourceId
        )
    }
}

extension Route53Profiles.ListProfileResourceAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Profiles.ListProfileResourceAssociationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            profileId: self.profileId,
            resourceType: self.resourceType
        )
    }
}

extension Route53Profiles.ListProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Profiles.ListProfilesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
