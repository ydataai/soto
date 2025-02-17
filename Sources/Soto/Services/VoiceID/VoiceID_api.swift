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

/// Service object for interacting with AWS VoiceID service.
///
/// Amazon Connect Voice ID provides real-time caller authentication and fraud risk detection, which make voice interactions in contact centers more secure and efficient.
public struct VoiceID: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the VoiceID client
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
            amzTarget: "VoiceID",
            serviceName: "VoiceID",
            serviceIdentifier: "voiceid",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-09-27",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: VoiceIDErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "voiceid-fips.ca-central-1.amazonaws.com",
            "us-east-1": "voiceid-fips.us-east-1.amazonaws.com",
            "us-west-2": "voiceid-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates the fraudsters with the watchlist specified in the same domain.
    @Sendable
    public func associateFraudster(_ input: AssociateFraudsterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateFraudsterResponse {
        return try await self.client.execute(
            operation: "AssociateFraudster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters, customer audio, and voiceprints.  Every domain is created with a default watchlist that fraudsters can be a part of.
    @Sendable
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDomainResponse {
        return try await self.client.execute(
            operation: "CreateDomain", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a watchlist that fraudsters can be a part of.
    @Sendable
    public func createWatchlist(_ input: CreateWatchlistRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateWatchlistResponse {
        return try await self.client.execute(
            operation: "CreateWatchlist", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified domain from Voice ID.
    @Sendable
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteDomain", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified fraudster from Voice ID. This action disassociates the fraudster from any watchlists it is a part of.
    @Sendable
    public func deleteFraudster(_ input: DeleteFraudsterRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteFraudster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified speaker from Voice ID.
    @Sendable
    public func deleteSpeaker(_ input: DeleteSpeakerRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteSpeaker", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified watchlist from Voice ID. This API throws an exception when there are fraudsters in the watchlist that you are trying to delete. You must delete the fraudsters, and then delete the watchlist. Every domain has a default watchlist which cannot be deleted.
    @Sendable
    public func deleteWatchlist(_ input: DeleteWatchlistRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteWatchlist", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified domain.
    @Sendable
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDomainResponse {
        return try await self.client.execute(
            operation: "DescribeDomain", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified fraudster.
    @Sendable
    public func describeFraudster(_ input: DescribeFraudsterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFraudsterResponse {
        return try await self.client.execute(
            operation: "DescribeFraudster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified fraudster registration job.
    @Sendable
    public func describeFraudsterRegistrationJob(_ input: DescribeFraudsterRegistrationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFraudsterRegistrationJobResponse {
        return try await self.client.execute(
            operation: "DescribeFraudsterRegistrationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified speaker.
    @Sendable
    public func describeSpeaker(_ input: DescribeSpeakerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSpeakerResponse {
        return try await self.client.execute(
            operation: "DescribeSpeaker", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified speaker enrollment job.
    @Sendable
    public func describeSpeakerEnrollmentJob(_ input: DescribeSpeakerEnrollmentJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSpeakerEnrollmentJobResponse {
        return try await self.client.execute(
            operation: "DescribeSpeakerEnrollmentJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified watchlist.
    @Sendable
    public func describeWatchlist(_ input: DescribeWatchlistRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeWatchlistResponse {
        return try await self.client.execute(
            operation: "DescribeWatchlist", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates the fraudsters from the watchlist specified. Voice ID always expects a fraudster to be a part of at least one watchlist. If you try to disassociate a fraudster from its only watchlist, a ValidationException is thrown.
    @Sendable
    public func disassociateFraudster(_ input: DisassociateFraudsterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateFraudsterResponse {
        return try await self.client.execute(
            operation: "DisassociateFraudster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Evaluates a specified session based on audio data accumulated during a streaming Amazon Connect Voice ID call.
    @Sendable
    public func evaluateSession(_ input: EvaluateSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EvaluateSessionResponse {
        return try await self.client.execute(
            operation: "EvaluateSession", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the domains in the Amazon Web Services account.
    @Sendable
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDomainsResponse {
        return try await self.client.execute(
            operation: "ListDomains", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the fraudster registration jobs in the domain with the given JobStatus. If JobStatus is not provided, this lists all fraudster registration jobs in the given domain.
    @Sendable
    public func listFraudsterRegistrationJobs(_ input: ListFraudsterRegistrationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFraudsterRegistrationJobsResponse {
        return try await self.client.execute(
            operation: "ListFraudsterRegistrationJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all fraudsters in a specified watchlist or domain.
    @Sendable
    public func listFraudsters(_ input: ListFraudstersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFraudstersResponse {
        return try await self.client.execute(
            operation: "ListFraudsters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the speaker enrollment jobs in the domain with the specified JobStatus. If JobStatus is not provided, this lists all jobs with all possible speaker enrollment job statuses.
    @Sendable
    public func listSpeakerEnrollmentJobs(_ input: ListSpeakerEnrollmentJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSpeakerEnrollmentJobsResponse {
        return try await self.client.execute(
            operation: "ListSpeakerEnrollmentJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all speakers in a specified domain.
    @Sendable
    public func listSpeakers(_ input: ListSpeakersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSpeakersResponse {
        return try await self.client.execute(
            operation: "ListSpeakers", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all tags associated with a specified Voice ID resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all watchlists in a specified domain.
    @Sendable
    public func listWatchlists(_ input: ListWatchlistsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWatchlistsResponse {
        return try await self.client.execute(
            operation: "ListWatchlists", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Opts out a speaker from Voice ID. A speaker can be opted out regardless of whether or not they already exist in Voice ID. If they don't yet exist, a new speaker is created in an opted out state. If they already exist, their existing status is overridden and they are opted out. Enrollment and evaluation authentication requests are rejected for opted out speakers, and opted out speakers have no voice embeddings stored in Voice ID.
    @Sendable
    public func optOutSpeaker(_ input: OptOutSpeakerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> OptOutSpeakerResponse {
        return try await self.client.execute(
            operation: "OptOutSpeaker", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a new batch fraudster registration job using provided details.
    @Sendable
    public func startFraudsterRegistrationJob(_ input: StartFraudsterRegistrationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartFraudsterRegistrationJobResponse {
        return try await self.client.execute(
            operation: "StartFraudsterRegistrationJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a new batch speaker enrollment job using specified details.
    @Sendable
    public func startSpeakerEnrollmentJob(_ input: StartSpeakerEnrollmentJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartSpeakerEnrollmentJobResponse {
        return try await self.client.execute(
            operation: "StartSpeakerEnrollmentJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags a Voice ID resource with the provided list of tags.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes specified tags from a specified Amazon Connect Voice ID resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified domain. This API has clobber behavior, and clears and replaces all attributes. If an optional field, such as 'Description' is not provided, it is removed from the domain.
    @Sendable
    public func updateDomain(_ input: UpdateDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDomainResponse {
        return try await self.client.execute(
            operation: "UpdateDomain", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified watchlist. Every domain has a default watchlist which cannot be updated.
    @Sendable
    public func updateWatchlist(_ input: UpdateWatchlistRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateWatchlistResponse {
        return try await self.client.execute(
            operation: "UpdateWatchlist", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension VoiceID {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: VoiceID, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension VoiceID {
    /// Lists all the domains in the Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: self.listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the fraudster registration jobs in the domain with the given JobStatus. If JobStatus is not provided, this lists all fraudster registration jobs in the given domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFraudsterRegistrationJobsPaginator(
        _ input: ListFraudsterRegistrationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFraudsterRegistrationJobsRequest, ListFraudsterRegistrationJobsResponse> {
        return .init(
            input: input,
            command: self.listFraudsterRegistrationJobs,
            inputKey: \ListFraudsterRegistrationJobsRequest.nextToken,
            outputKey: \ListFraudsterRegistrationJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all fraudsters in a specified watchlist or domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFraudstersPaginator(
        _ input: ListFraudstersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFraudstersRequest, ListFraudstersResponse> {
        return .init(
            input: input,
            command: self.listFraudsters,
            inputKey: \ListFraudstersRequest.nextToken,
            outputKey: \ListFraudstersResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the speaker enrollment jobs in the domain with the specified JobStatus. If JobStatus is not provided, this lists all jobs with all possible speaker enrollment job statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSpeakerEnrollmentJobsPaginator(
        _ input: ListSpeakerEnrollmentJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSpeakerEnrollmentJobsRequest, ListSpeakerEnrollmentJobsResponse> {
        return .init(
            input: input,
            command: self.listSpeakerEnrollmentJobs,
            inputKey: \ListSpeakerEnrollmentJobsRequest.nextToken,
            outputKey: \ListSpeakerEnrollmentJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all speakers in a specified domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSpeakersPaginator(
        _ input: ListSpeakersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSpeakersRequest, ListSpeakersResponse> {
        return .init(
            input: input,
            command: self.listSpeakers,
            inputKey: \ListSpeakersRequest.nextToken,
            outputKey: \ListSpeakersResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all watchlists in a specified domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listWatchlistsPaginator(
        _ input: ListWatchlistsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWatchlistsRequest, ListWatchlistsResponse> {
        return .init(
            input: input,
            command: self.listWatchlists,
            inputKey: \ListWatchlistsRequest.nextToken,
            outputKey: \ListWatchlistsResponse.nextToken,
            logger: logger
        )
    }
}

extension VoiceID.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListDomainsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension VoiceID.ListFraudsterRegistrationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListFraudsterRegistrationJobsRequest {
        return .init(
            domainId: self.domainId,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension VoiceID.ListFraudstersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListFraudstersRequest {
        return .init(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token,
            watchlistId: self.watchlistId
        )
    }
}

extension VoiceID.ListSpeakerEnrollmentJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListSpeakerEnrollmentJobsRequest {
        return .init(
            domainId: self.domainId,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension VoiceID.ListSpeakersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListSpeakersRequest {
        return .init(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension VoiceID.ListWatchlistsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VoiceID.ListWatchlistsRequest {
        return .init(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
