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

/// Service object for interacting with AWS CodeStarNotifications service.
///
/// This AWS CodeStar Notifications API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Notifications API. You can use the AWS CodeStar Notifications API to work with the following objects: Notification rules, by calling the following:     CreateNotificationRule, which creates a notification rule for a resource in your account.     DeleteNotificationRule, which deletes a notification rule.     DescribeNotificationRule, which provides information about a notification rule.     ListNotificationRules, which lists the notification rules associated with your account.     UpdateNotificationRule, which changes the name, events, or targets associated with a notification rule.     Subscribe, which subscribes a target to a notification rule.     Unsubscribe, which removes a target from a notification rule.    Targets, by calling the following:     DeleteTarget, which removes a notification rule target from a notification rule.     ListTargets, which lists the targets associated with a notification rule.    Events, by calling the following:     ListEventTypes, which lists the event types you can include in a notification rule.    Tags, by calling the following:     ListTagsForResource, which lists the tags already associated with a notification rule in your account.     TagResource, which associates a tag you provide with a notification rule in your account.     UntagResource, which removes a tag from a notification rule in your account.    For information about how to use AWS CodeStar Notifications, see the Amazon Web Services Developer Tools Console User Guide.
public struct CodeStarNotifications: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStarNotifications client
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
            serviceName: "CodeStarNotifications",
            serviceIdentifier: "codestar-notifications",
            serviceProtocol: .restjson,
            apiVersion: "2019-10-15",
            endpoint: endpoint,
            errorType: CodeStarNotificationsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as Chatbot topics or Chatbot clients configured for Slack) where you want to receive them.
    @Sendable
    public func createNotificationRule(_ input: CreateNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateNotificationRuleResult {
        return try await self.client.execute(
            operation: "CreateNotificationRule", 
            path: "/createNotificationRule", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a notification rule for a resource.
    @Sendable
    public func deleteNotificationRule(_ input: DeleteNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteNotificationRuleResult {
        return try await self.client.execute(
            operation: "DeleteNotificationRule", 
            path: "/deleteNotificationRule", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a specified target for notifications.
    @Sendable
    public func deleteTarget(_ input: DeleteTargetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTargetResult {
        return try await self.client.execute(
            operation: "DeleteTarget", 
            path: "/deleteTarget", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a specified notification rule.
    @Sendable
    public func describeNotificationRule(_ input: DescribeNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeNotificationRuleResult {
        return try await self.client.execute(
            operation: "DescribeNotificationRule", 
            path: "/describeNotificationRule", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the event types available for configuring notifications.
    @Sendable
    public func listEventTypes(_ input: ListEventTypesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventTypesResult {
        return try await self.client.execute(
            operation: "ListEventTypes", 
            path: "/listEventTypes", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the notification rules for an Amazon Web Services account.
    @Sendable
    public func listNotificationRules(_ input: ListNotificationRulesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListNotificationRulesResult {
        return try await self.client.execute(
            operation: "ListNotificationRules", 
            path: "/listNotificationRules", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the tags associated with a notification rule.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/listTagsForResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the notification rule targets for an Amazon Web Services account.
    @Sendable
    public func listTargets(_ input: ListTargetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTargetsResult {
        return try await self.client.execute(
            operation: "ListTargets", 
            path: "/listTargets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an association between a notification rule and an Chatbot topic or Chatbot client so that the associated target can receive notifications when the events described in the rule are triggered.
    @Sendable
    public func subscribe(_ input: SubscribeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SubscribeResult {
        return try await self.client.execute(
            operation: "Subscribe", 
            path: "/subscribe", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates a set of provided tags with a notification rule.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResult {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes an association between a notification rule and an Chatbot topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.
    @Sendable
    public func unsubscribe(_ input: UnsubscribeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UnsubscribeResult {
        return try await self.client.execute(
            operation: "Unsubscribe", 
            path: "/unsubscribe", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the association between one or more provided tags and a notification rule.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResult {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/untagResource/{Arn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource.
    @Sendable
    public func updateNotificationRule(_ input: UpdateNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateNotificationRuleResult {
        return try await self.client.execute(
            operation: "UpdateNotificationRule", 
            path: "/updateNotificationRule", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CodeStarNotifications {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStarNotifications, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeStarNotifications {
    /// Returns information about the event types available for configuring notifications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEventTypesPaginator(
        _ input: ListEventTypesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEventTypesRequest, ListEventTypesResult> {
        return .init(
            input: input,
            command: self.listEventTypes,
            inputKey: \ListEventTypesRequest.nextToken,
            outputKey: \ListEventTypesResult.nextToken,
            logger: logger
        )
    }

    /// Returns a list of the notification rules for an Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listNotificationRulesPaginator(
        _ input: ListNotificationRulesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListNotificationRulesRequest, ListNotificationRulesResult> {
        return .init(
            input: input,
            command: self.listNotificationRules,
            inputKey: \ListNotificationRulesRequest.nextToken,
            outputKey: \ListNotificationRulesResult.nextToken,
            logger: logger
        )
    }

    /// Returns a list of the notification rule targets for an Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTargetsPaginator(
        _ input: ListTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTargetsRequest, ListTargetsResult> {
        return .init(
            input: input,
            command: self.listTargets,
            inputKey: \ListTargetsRequest.nextToken,
            outputKey: \ListTargetsResult.nextToken,
            logger: logger
        )
    }
}

extension CodeStarNotifications.ListEventTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListEventTypesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeStarNotifications.ListNotificationRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListNotificationRulesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeStarNotifications.ListTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListTargetsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
