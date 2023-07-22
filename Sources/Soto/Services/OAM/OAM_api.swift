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

@_exported import SotoCore

/// Service object for interacting with AWS OAM service.
///
/// Use Amazon CloudWatch Observability Access Manager to create and manage links between source accounts and monitoring accounts by using CloudWatch cross-account observability. With CloudWatch cross-account observability, you can monitor and troubleshoot applications that span multiple accounts within a Region. Seamlessly search, visualize, and analyze your metrics, logs, and traces in any of the linked accounts without account boundaries.
///  Set up one or more Amazon Web Services accounts as monitoring accounts and link them with multiple source accounts. A monitoring account is a central Amazon Web Services account that can view and interact with observability data generated from source accounts. A source account is an individual Amazon Web Services account that generates observability data for the resources that reside in it. Source accounts share their observability data with the monitoring account. The shared observability data can include metrics in Amazon CloudWatch, logs in Amazon CloudWatch Logs, and traces in X-Ray.
public struct OAM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the OAM client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "oam",
            serviceProtocol: .restjson,
            apiVersion: "2022-06-10",
            endpoint: endpoint,
            errorType: OAMErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a link between a source account and a sink that you have created in a monitoring account. Before you create a link, you must create a sink in the monitoring account and create a sink policy in that account. The sink policy must permit the source account to link to it. You can grant permission to source accounts by granting permission to an entire organization or to individual accounts. For more information, see CreateSink and PutSinkPolicy. Each monitoring account can be linked to as many as 100,000 source accounts. Each source account can be linked to as many as five monitoring accounts.
    @Sendable
    public func createLink(_ input: CreateLinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLinkOutput {
        return try await self.client.execute(
            operation: "CreateLink", 
            path: "/CreateLink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this to create a sink in the current account, so that it can be used as a monitoring account in CloudWatch cross-account observability. A sink is a resource that represents an attachment point in a monitoring account. Source accounts can link to the sink to send observability data. After you create a sink, you must create a sink policy that allows source accounts to attach to it. For more information, see PutSinkPolicy. Each account can contain one sink. If you delete a sink, you can then create a new one in that account.
    @Sendable
    public func createSink(_ input: CreateSinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSinkOutput {
        return try await self.client.execute(
            operation: "CreateSink", 
            path: "/CreateSink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a link between a monitoring account sink and a source account. You must run this operation in the source account.
    @Sendable
    public func deleteLink(_ input: DeleteLinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLinkOutput {
        return try await self.client.execute(
            operation: "DeleteLink", 
            path: "/DeleteLink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a sink. You must delete all links to a sink before you can delete that sink.
    @Sendable
    public func deleteSink(_ input: DeleteSinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSinkOutput {
        return try await self.client.execute(
            operation: "DeleteSink", 
            path: "/DeleteSink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns complete information about one link. To use this operation, provide the link ARN. To retrieve a list of link ARNs, use ListLinks.
    @Sendable
    public func getLink(_ input: GetLinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLinkOutput {
        return try await self.client.execute(
            operation: "GetLink", 
            path: "/GetLink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns complete information about one monitoring account sink. To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use ListSinks.
    @Sendable
    public func getSink(_ input: GetSinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSinkOutput {
        return try await self.client.execute(
            operation: "GetSink", 
            path: "/GetSink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the current sink policy attached to this sink. The sink policy specifies what accounts can attach to this sink as source accounts, and what types of data they can share.
    @Sendable
    public func getSinkPolicy(_ input: GetSinkPolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSinkPolicyOutput {
        return try await self.client.execute(
            operation: "GetSinkPolicy", 
            path: "/GetSinkPolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of source account links that are linked to this monitoring account sink. To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use ListSinks. To find a list of links for one source account, use ListLinks.
    @Sendable
    public func listAttachedLinks(_ input: ListAttachedLinksInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAttachedLinksOutput {
        return try await self.client.execute(
            operation: "ListAttachedLinks", 
            path: "/ListAttachedLinks", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation in a source account to return a list of links to monitoring account sinks that this source account has. To find a list of links for one monitoring account sink, use ListAttachedLinks from within the monitoring account.
    @Sendable
    public func listLinks(_ input: ListLinksInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLinksOutput {
        return try await self.client.execute(
            operation: "ListLinks", 
            path: "/ListLinks", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation in a monitoring account to return the list of sinks created in that account.
    @Sendable
    public func listSinks(_ input: ListSinksInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSinksOutput {
        return try await self.client.execute(
            operation: "ListSinks", 
            path: "/ListSinks", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the tags associated with a resource. Both sinks and links support tagging.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates the resource policy that grants permissions to source accounts to link to the monitoring account sink. When you create a sink policy, you can grant permissions to all accounts in an organization or to individual accounts. You can also use a sink policy to limit the types of data that is shared. The three types that you can allow or deny are:    Metrics - Specify with AWS::CloudWatch::Metric     Log groups - Specify with AWS::Logs::LogGroup     Traces - Specify with AWS::XRay::Trace    See the examples in this section to see how to specify permitted source accounts and data types.
    @Sendable
    public func putSinkPolicy(_ input: PutSinkPolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutSinkPolicyOutput {
        return try await self.client.execute(
            operation: "PutSinkPolicy", 
            path: "/PutSinkPolicy", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns one or more tags (key-value pairs) to the specified resource. Both sinks and links can be tagged.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.  Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the oam:ResourceTag permission. The iam:ResourceTag permission does not allow you to tag and untag links and sinks.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from the specified resource.  Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the oam:ResourceTag permission. The iam:TagResource permission does not allow you to tag and untag links and sinks.
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation to change what types of data are shared from a source account to its linked monitoring account sink. You can't change the sink or change the monitoring account with this operation. To update the list of tags associated with the sink, use TagResource.
    @Sendable
    public func updateLink(_ input: UpdateLinkInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLinkOutput {
        return try await self.client.execute(
            operation: "UpdateLink", 
            path: "/UpdateLink", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension OAM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: OAM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OAM {
    /// Returns a list of source account links that are linked to this monitoring account sink. To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use ListSinks. To find a list of links for one source account, use ListLinks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAttachedLinksPaginator(
        _ input: ListAttachedLinksInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAttachedLinksInput, ListAttachedLinksOutput> {
        return .init(
            input: input,
            command: self.listAttachedLinks,
            inputKey: \ListAttachedLinksInput.nextToken,
            outputKey: \ListAttachedLinksOutput.nextToken,
            logger: logger
        )
    }

    /// Use this operation in a source account to return a list of links to monitoring account sinks that this source account has. To find a list of links for one monitoring account sink, use ListAttachedLinks from within the monitoring account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLinksPaginator(
        _ input: ListLinksInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLinksInput, ListLinksOutput> {
        return .init(
            input: input,
            command: self.listLinks,
            inputKey: \ListLinksInput.nextToken,
            outputKey: \ListLinksOutput.nextToken,
            logger: logger
        )
    }

    /// Use this operation in a monitoring account to return the list of sinks created in that account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSinksPaginator(
        _ input: ListSinksInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSinksInput, ListSinksOutput> {
        return .init(
            input: input,
            command: self.listSinks,
            inputKey: \ListSinksInput.nextToken,
            outputKey: \ListSinksOutput.nextToken,
            logger: logger
        )
    }
}

extension OAM.ListAttachedLinksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OAM.ListAttachedLinksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            sinkIdentifier: self.sinkIdentifier
        )
    }
}

extension OAM.ListLinksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OAM.ListLinksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension OAM.ListSinksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OAM.ListSinksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
