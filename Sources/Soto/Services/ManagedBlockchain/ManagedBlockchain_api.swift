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

/// Service object for interacting with AWS ManagedBlockchain service.
///
///  Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open-source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority. Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source frameworks. Because of fundamental differences between the frameworks, some API actions or data types may only apply in the context of one framework and not the other. For example, actions related to Hyperledger Fabric network members such as CreateMember and DeleteMember don't apply to Ethereum. The description for each action indicates the framework or frameworks to which it applies. Data types and properties that apply only in the context of a particular framework are similarly indicated.
public struct ManagedBlockchain: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ManagedBlockchain client
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
            serviceName: "ManagedBlockchain",
            serviceIdentifier: "managedblockchain",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-24",
            endpoint: endpoint,
            errorType: ManagedBlockchainErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a new accessor for use with Amazon Managed Blockchain service that supports token based access.  The accessor contains information required for token based access.
    @Sendable
    public func createAccessor(_ input: CreateAccessorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAccessorOutput {
        return try await self.client.execute(
            operation: "CreateAccessor", 
            path: "/accessors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a member within a Managed Blockchain network. Applies only to Hyperledger Fabric.
    @Sendable
    public func createMember(_ input: CreateMemberInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateMemberOutput {
        return try await self.client.execute(
            operation: "CreateMember", 
            path: "/networks/{NetworkId}/members", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new blockchain network using Amazon Managed Blockchain. Applies only to Hyperledger Fabric.
    @Sendable
    public func createNetwork(_ input: CreateNetworkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateNetworkOutput {
        return try await self.client.execute(
            operation: "CreateNetwork", 
            path: "/networks", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a node on the specified blockchain network. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func createNode(_ input: CreateNodeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateNodeOutput {
        return try await self.client.execute(
            operation: "CreateNode", 
            path: "/networks/{NetworkId}/nodes", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal. Applies only to Hyperledger Fabric.
    @Sendable
    public func createProposal(_ input: CreateProposalInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProposalOutput {
        return try await self.client.execute(
            operation: "CreateProposal", 
            path: "/networks/{NetworkId}/proposals", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an accessor that your Amazon Web Services account owns. An accessor object is a container that has the  information required for token based access to your Ethereum nodes including, the  BILLING_TOKEN. After an accessor is deleted, the status of the accessor changes  from AVAILABLE to PENDING_DELETION. An accessor in the  PENDING_DELETION state can’t be used for new WebSocket requests or  HTTP requests. However, WebSocket connections that were initiated while the accessor was in the  AVAILABLE state remain open until they expire (up to 2 hours).
    @Sendable
    public func deleteAccessor(_ input: DeleteAccessorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAccessorOutput {
        return try await self.client.execute(
            operation: "DeleteAccessor", 
            path: "/accessors/{AccessorId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the Amazon Web Services account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last Amazon Web Services account, the network is deleted also. Applies only to Hyperledger Fabric.
    @Sendable
    public func deleteMember(_ input: DeleteMemberInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteMemberOutput {
        return try await self.client.execute(
            operation: "DeleteMember", 
            path: "/networks/{NetworkId}/members/{MemberId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a node that your Amazon Web Services account owns. All data on the node is lost and cannot be recovered. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func deleteNode(_ input: DeleteNodeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteNodeOutput {
        return try await self.client.execute(
            operation: "DeleteNode", 
            path: "/networks/{NetworkId}/nodes/{NodeId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about an accessor. An accessor object is a container that has the  information required for token based access to your Ethereum nodes.
    @Sendable
    public func getAccessor(_ input: GetAccessorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccessorOutput {
        return try await self.client.execute(
            operation: "GetAccessor", 
            path: "/accessors/{AccessorId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about a member. Applies only to Hyperledger Fabric.
    @Sendable
    public func getMember(_ input: GetMemberInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMemberOutput {
        return try await self.client.execute(
            operation: "GetMember", 
            path: "/networks/{NetworkId}/members/{MemberId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about a network. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func getNetwork(_ input: GetNetworkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetNetworkOutput {
        return try await self.client.execute(
            operation: "GetNetwork", 
            path: "/networks/{NetworkId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about a node. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func getNode(_ input: GetNodeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetNodeOutput {
        return try await self.client.execute(
            operation: "GetNode", 
            path: "/networks/{NetworkId}/nodes/{NodeId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about a proposal. Applies only to Hyperledger Fabric.
    @Sendable
    public func getProposal(_ input: GetProposalInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProposalOutput {
        return try await self.client.execute(
            operation: "GetProposal", 
            path: "/networks/{NetworkId}/proposals/{ProposalId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the accessors and their properties. Accessor objects are containers that have the  information required for token based access to your Ethereum nodes.
    @Sendable
    public func listAccessors(_ input: ListAccessorsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAccessorsOutput {
        return try await self.client.execute(
            operation: "ListAccessors", 
            path: "/accessors", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of all invitations for the current Amazon Web Services account. Applies only to Hyperledger Fabric.
    @Sendable
    public func listInvitations(_ input: ListInvitationsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListInvitationsOutput {
        return try await self.client.execute(
            operation: "ListInvitations", 
            path: "/invitations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the members in a network and properties of their configurations. Applies only to Hyperledger Fabric.
    @Sendable
    public func listMembers(_ input: ListMembersInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMembersOutput {
        return try await self.client.execute(
            operation: "ListMembers", 
            path: "/networks/{NetworkId}/members", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the networks in which the current Amazon Web Services account participates. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func listNetworks(_ input: ListNetworksInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNetworksOutput {
        return try await self.client.execute(
            operation: "ListNetworks", 
            path: "/networks", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the nodes within a network. Applies to Hyperledger Fabric and Ethereum.
    @Sendable
    public func listNodes(_ input: ListNodesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNodesOutput {
        return try await self.client.execute(
            operation: "ListNodes", 
            path: "/networks/{NetworkId}/nodes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote. Applies only to Hyperledger Fabric.
    @Sendable
    public func listProposalVotes(_ input: ListProposalVotesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProposalVotesOutput {
        return try await self.client.execute(
            operation: "ListProposalVotes", 
            path: "/networks/{NetworkId}/proposals/{ProposalId}/votes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of proposals for the network. Applies only to Hyperledger Fabric.
    @Sendable
    public func listProposals(_ input: ListProposalsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProposalsOutput {
        return try await self.client.execute(
            operation: "ListProposals", 
            path: "/networks/{NetworkId}/proposals", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of tags for the specified resource. Each tag consists of a key and optional value. For more information about tags, see Tagging Resources in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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

    /// Rejects an invitation to join a network. This action can be called by a principal in an Amazon Web Services account that has received an invitation to create a member and join a network. Applies only to Hyperledger Fabric.
    @Sendable
    public func rejectInvitation(_ input: RejectInvitationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> RejectInvitationOutput {
        return try await self.client.execute(
            operation: "RejectInvitation", 
            path: "/invitations/{InvitationId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or overwrites the specified tags for the specified Amazon Managed Blockchain resource. Each tag consists of a key and optional value. When you specify a tag key that already exists, the tag value is overwritten with the new value. Use UntagResource to remove tag keys. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error. For more information about tags, see Tagging Resources in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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

    /// Removes the specified tags from the Amazon Managed Blockchain resource. For more information about tags, see Tagging Resources in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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

    /// Updates a member configuration with new parameters. Applies only to Hyperledger Fabric.
    @Sendable
    public func updateMember(_ input: UpdateMemberInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateMemberOutput {
        return try await self.client.execute(
            operation: "UpdateMember", 
            path: "/networks/{NetworkId}/members/{MemberId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a node configuration with new parameters. Applies only to Hyperledger Fabric.
    @Sendable
    public func updateNode(_ input: UpdateNodeInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateNodeOutput {
        return try await self.client.execute(
            operation: "UpdateNode", 
            path: "/networks/{NetworkId}/nodes/{NodeId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same Amazon Web Services account as the principal that calls the action. Applies only to Hyperledger Fabric.
    @Sendable
    public func voteOnProposal(_ input: VoteOnProposalInput, logger: Logger = AWSClient.loggingDisabled) async throws -> VoteOnProposalOutput {
        return try await self.client.execute(
            operation: "VoteOnProposal", 
            path: "/networks/{NetworkId}/proposals/{ProposalId}/votes", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ManagedBlockchain {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ManagedBlockchain, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ManagedBlockchain {
    /// Returns a list of the accessors and their properties. Accessor objects are containers that have the  information required for token based access to your Ethereum nodes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAccessorsPaginator(
        _ input: ListAccessorsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAccessorsInput, ListAccessorsOutput> {
        return .init(
            input: input,
            command: self.listAccessors,
            inputKey: \ListAccessorsInput.nextToken,
            outputKey: \ListAccessorsOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a list of all invitations for the current Amazon Web Services account. Applies only to Hyperledger Fabric.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listInvitationsPaginator(
        _ input: ListInvitationsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListInvitationsInput, ListInvitationsOutput> {
        return .init(
            input: input,
            command: self.listInvitations,
            inputKey: \ListInvitationsInput.nextToken,
            outputKey: \ListInvitationsOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a list of the members in a network and properties of their configurations. Applies only to Hyperledger Fabric.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMembersPaginator(
        _ input: ListMembersInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMembersInput, ListMembersOutput> {
        return .init(
            input: input,
            command: self.listMembers,
            inputKey: \ListMembersInput.nextToken,
            outputKey: \ListMembersOutput.nextToken,
            logger: logger
        )
    }

    /// Returns information about the networks in which the current Amazon Web Services account participates. Applies to Hyperledger Fabric and Ethereum.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNetworksPaginator(
        _ input: ListNetworksInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNetworksInput, ListNetworksOutput> {
        return .init(
            input: input,
            command: self.listNetworks,
            inputKey: \ListNetworksInput.nextToken,
            outputKey: \ListNetworksOutput.nextToken,
            logger: logger
        )
    }

    /// Returns information about the nodes within a network. Applies to Hyperledger Fabric and Ethereum.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNodesPaginator(
        _ input: ListNodesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNodesInput, ListNodesOutput> {
        return .init(
            input: input,
            command: self.listNodes,
            inputKey: \ListNodesInput.nextToken,
            outputKey: \ListNodesOutput.nextToken,
            logger: logger
        )
    }

    /// Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote. Applies only to Hyperledger Fabric.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProposalVotesPaginator(
        _ input: ListProposalVotesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProposalVotesInput, ListProposalVotesOutput> {
        return .init(
            input: input,
            command: self.listProposalVotes,
            inputKey: \ListProposalVotesInput.nextToken,
            outputKey: \ListProposalVotesOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a list of proposals for the network. Applies only to Hyperledger Fabric.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProposalsPaginator(
        _ input: ListProposalsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProposalsInput, ListProposalsOutput> {
        return .init(
            input: input,
            command: self.listProposals,
            inputKey: \ListProposalsInput.nextToken,
            outputKey: \ListProposalsOutput.nextToken,
            logger: logger
        )
    }
}

extension ManagedBlockchain.ListAccessorsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListAccessorsInput {
        return .init(
            maxResults: self.maxResults,
            networkType: self.networkType,
            nextToken: token
        )
    }
}

extension ManagedBlockchain.ListInvitationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListInvitationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ManagedBlockchain.ListMembersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListMembersInput {
        return .init(
            isOwned: self.isOwned,
            maxResults: self.maxResults,
            name: self.name,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListNetworksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNetworksInput {
        return .init(
            framework: self.framework,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListNodesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNodesInput {
        return .init(
            maxResults: self.maxResults,
            memberId: self.memberId,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListProposalVotesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalVotesInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token,
            proposalId: self.proposalId
        )
    }
}

extension ManagedBlockchain.ListProposalsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalsInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token
        )
    }
}
