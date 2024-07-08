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

/// Service object for interacting with AWS Health service.
///
/// Health The Health API provides access to the Health information that appears in the Health Dashboard. You can use the API operations to get information about events that might affect your Amazon Web Services and resources. You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from Amazon Web Services Support to use the Health API. If you call the Health API from an Amazon Web Services account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a SubscriptionRequiredException error. For API access, you need an access key ID and a secret access key. Use temporary credentials instead of long-term access keys when possible. Temporary credentials include an access key ID, a secret access key, and a security token that indicates when the credentials expire. For more information, see Best practices for managing Amazon Web Services access keys in the Amazon Web Services General Reference. You can use the Health endpoint health.us-east-1.amazonaws.com (HTTPS) to call the Health API operations. Health supports a multi-Region application architecture and has two regional endpoints in an active-passive configuration. You can use the high availability endpoint example to determine which Amazon Web Services Region is active, so that you can get the latest information from the API. For more information, see Accessing the Health API in the Health User Guide. For authentication of requests, Health uses the Signature Version 4 Signing Process. If your Amazon Web Services account is part of Organizations, you can use the Health organizational view feature. This feature provides a centralized view of Health events across all accounts in your organization. You can aggregate Health events in real time to identify accounts in your organization that are affected by an operational event or get notified of security vulnerabilities. Use the organizational view API operations to enable this feature and return event information. For more information, see Aggregating Health events in the Health User Guide.  When you use the Health API operations to return Health events, see the following recommendations:   Use the eventScopeCode parameter to specify whether to return Health events that are public or account-specific.   Use pagination to view all events from the response. For example, if you call the DescribeEventsForOrganization operation to get all events in your organization, you might receive several page results. Specify the nextToken in the next request to return more results.
public struct Health: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Health client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: nil,
            partition: partition,
            amzTarget: "AWSHealth_20160804",
            serviceName: "Health",
            serviceIdentifier: "health",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-08-04",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            partitionEndpoints: Self.partitionEndpoints,
            errorType: HealthErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "aws-cn-global": "global.health.amazonaws.com.cn",
        "aws-global": "global.health.amazonaws.com",
        "aws-us-gov-global": "global.health.us-gov.amazonaws.com"
    ]}

    /// Default endpoint and region to use for each partition
    static var partitionEndpoints: [AWSPartition: (endpoint: String, region: SotoCore.Region)] {[
        .aws: (endpoint: "aws-global", region: .useast1),
        .awscn: (endpoint: "aws-cn-global", region: .cnnorthwest1)
    ]}


    // MARK: API Calls

    /// Returns a list of accounts in the organization from Organizations that are affected by the provided event. For more information about the different types of Health events, see Event.  Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    @Sendable
    public func describeAffectedAccountsForOrganization(_ input: DescribeAffectedAccountsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAffectedAccountsForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeAffectedAccountsForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    @Sendable
    public func describeAffectedEntities(_ input: DescribeAffectedEntitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAffectedEntitiesResponse {
        return try await self.client.execute(
            operation: "DescribeAffectedEntities", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Service. At least one event Amazon Resource Name (ARN) and account ID are required. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    @Sendable
    public func describeAffectedEntitiesForOrganization(_ input: DescribeAffectedEntitiesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAffectedEntitiesForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeAffectedEntitiesForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the number of entities that are affected by each of the specified events.
    @Sendable
    public func describeEntityAggregates(_ input: DescribeEntityAggregatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEntityAggregatesResponse {
        return try await self.client.execute(
            operation: "DescribeEntityAggregates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of entity aggregates for your Organizations that are affected by each of the specified events.
    @Sendable
    public func describeEntityAggregatesForOrganization(_ input: DescribeEntityAggregatesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEntityAggregatesForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeEntityAggregatesForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    @Sendable
    public func describeEventAggregates(_ input: DescribeEventAggregatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventAggregatesResponse {
        return try await self.client.execute(
            operation: "DescribeEventAggregates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about one or more specified events. Information includes standard event data (Amazon Web Services Region, service, and so on, as returned by DescribeEvents), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included. To retrieve the entities, use the DescribeAffectedEntities operation. If a specified event can't be retrieved, an error message is returned for that event.  This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    @Sendable
    public func describeEventDetails(_ input: DescribeEventDetailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventDetailsResponse {
        return try await self.client.execute(
            operation: "DescribeEventDetails", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed information about one or more specified events for one or more Amazon Web Services accounts in your organization. This information includes standard event data (such as the Amazon Web Services Region and service), an event description, and (depending on the event) possible metadata. This operation doesn't return affected entities, such as the resources related to the event. To return affected entities, use the DescribeAffectedEntitiesForOrganization operation.  Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  When you call the DescribeEventDetailsForOrganization operation, specify the organizationEventDetailFilters object in the request. Depending on the Health event type, note the following differences:   To return event details for a public event, you must specify a null value for the awsAccountId parameter. If you specify an account ID for a public event, Health returns an error message because public events aren't specific to an account.   To return event details for an event that is specific to an account in your organization, you must specify the awsAccountId parameter in the request. If you don't specify an account ID, Health returns an error message because the event is specific to an account in your organization.    For more information, see Event.  This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    @Sendable
    public func describeEventDetailsForOrganization(_ input: DescribeEventDetailsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventDetailsForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeEventDetailsForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the event types that meet the specified filter criteria. You can use this API operation to find information about the Health event, such as the category, Amazon Web Service, and event code. The metadata for each event appears in the EventType object.  If you don't specify a filter criteria, the API operation returns all event types, in no particular order.   This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    @Sendable
    public func describeEventTypes(_ input: DescribeEventTypesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventTypesResponse {
        return try await self.client.execute(
            operation: "DescribeEventTypes", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent event.    When you call the DescribeEvents operation and specify an entity for the entityValues parameter, Health might return public events that aren't specific to that resource. For example, if you call DescribeEvents and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance, Health might return events that aren't specific to that resource or service. To get events that are specific to a service, use the services parameter in the filter object. For more information, see Event.   This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    @Sendable
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventsResponse {
        return try await self.client.execute(
            operation: "DescribeEvents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about events across your organization in Organizations. You can use thefilters parameter to specify the events that you want to return. Events are returned in a summary form and don't include the affected accounts, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the following operations:    DescribeAffectedAccountsForOrganization     DescribeEventDetailsForOrganization     DescribeAffectedEntitiesForOrganization    If you don't specify a filter, the DescribeEventsForOrganizations returns all events across your organization. Results are sorted by lastModifiedTime, starting with the most recent event.  For more information about the different types of Health events, see Event. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    @Sendable
    public func describeEventsForOrganization(_ input: DescribeEventsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventsForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeEventsForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation provides status information on enabling or disabling Health to work with your organization. To call this operation, you must use the organization's management account.
    @Sendable
    public func describeHealthServiceStatusForOrganization(logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHealthServiceStatusForOrganizationResponse {
        return try await self.client.execute(
            operation: "DescribeHealthServiceStatusForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Disables Health from working with Organizations. To call this operation, you must sign in to the organization's management account. For more information, see Aggregating Health events in the Health User Guide. This operation doesn't remove the service-linked role from the management account in your organization. You must use the IAM console, API, or Command Line Interface (CLI) to remove the service-linked role. For more information, see Deleting a Service-Linked Role in the IAM User Guide.  You can also disable the organizational feature by using the Organizations DisableAWSServiceAccess API operation. After you call this operation, Health stops aggregating events for all other Amazon Web Services accounts in your organization. If you call the Health API operations for organizational view, Health returns an error. Health continues to aggregate health events for your Amazon Web Services account.
    @Sendable
    public func disableHealthServiceAccessForOrganization(logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DisableHealthServiceAccessForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Enables Health to work with Organizations. You can use the organizational view feature to aggregate events from all Amazon Web Services accounts in your organization in a centralized location.  This operation also creates a service-linked role for the management account in the organization.   To call this operation, you must meet the following requirements:   You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from Amazon Web Services Support to use the Health API. If you call the Health API from an Amazon Web Services account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a SubscriptionRequiredException error.   You must have permission to call this operation from the organization's management account. For example IAM policies, see Health identity-based policy examples.    If you don't have the required support plan, you can instead use the Health console to enable the organizational view feature. For more information, see Aggregating Health events in the Health User Guide.
    @Sendable
    public func enableHealthServiceAccessForOrganization(logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "EnableHealthServiceAccessForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }
}

extension Health {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Health, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Health {
    /// Returns a list of accounts in the organization from Organizations that are affected by the provided event. For more information about the different types of Health events, see Event.  Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeAffectedAccountsForOrganizationPaginator(
        _ input: DescribeAffectedAccountsForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeAffectedAccountsForOrganizationRequest, DescribeAffectedAccountsForOrganizationResponse> {
        return .init(
            input: input,
            command: self.describeAffectedAccountsForOrganization,
            inputKey: \DescribeAffectedAccountsForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedAccountsForOrganizationResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeAffectedEntitiesPaginator(
        _ input: DescribeAffectedEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeAffectedEntitiesRequest, DescribeAffectedEntitiesResponse> {
        return .init(
            input: input,
            command: self.describeAffectedEntities,
            inputKey: \DescribeAffectedEntitiesRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Service. At least one event Amazon Resource Name (ARN) and account ID are required. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeAffectedEntitiesForOrganizationPaginator(
        _ input: DescribeAffectedEntitiesForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeAffectedEntitiesForOrganizationRequest, DescribeAffectedEntitiesForOrganizationResponse> {
        return .init(
            input: input,
            command: self.describeAffectedEntitiesForOrganization,
            inputKey: \DescribeAffectedEntitiesForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesForOrganizationResponse.nextToken,
            logger: logger
        )
    }

    /// Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeEventAggregatesPaginator(
        _ input: DescribeEventAggregatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEventAggregatesRequest, DescribeEventAggregatesResponse> {
        return .init(
            input: input,
            command: self.describeEventAggregates,
            inputKey: \DescribeEventAggregatesRequest.nextToken,
            outputKey: \DescribeEventAggregatesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns the event types that meet the specified filter criteria. You can use this API operation to find information about the Health event, such as the category, Amazon Web Service, and event code. The metadata for each event appears in the EventType object.  If you don't specify a filter criteria, the API operation returns all event types, in no particular order.   This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeEventTypesPaginator(
        _ input: DescribeEventTypesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEventTypesRequest, DescribeEventTypesResponse> {
        return .init(
            input: input,
            command: self.describeEventTypes,
            inputKey: \DescribeEventTypesRequest.nextToken,
            outputKey: \DescribeEventTypesResponse.nextToken,
            logger: logger
        )
    }

    ///  Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent event.    When you call the DescribeEvents operation and specify an entity for the entityValues parameter, Health might return public events that aren't specific to that resource. For example, if you call DescribeEvents and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance, Health might return events that aren't specific to that resource or service. To get events that are specific to a service, use the services parameter in the filter object. For more information, see Event.   This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeEventsPaginator(
        _ input: DescribeEventsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEventsRequest, DescribeEventsResponse> {
        return .init(
            input: input,
            command: self.describeEvents,
            inputKey: \DescribeEventsRequest.nextToken,
            outputKey: \DescribeEventsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns information about events across your organization in Organizations. You can use thefilters parameter to specify the events that you want to return. Events are returned in a summary form and don't include the affected accounts, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the following operations:    DescribeAffectedAccountsForOrganization     DescribeEventDetailsForOrganization     DescribeAffectedEntitiesForOrganization    If you don't specify a filter, the DescribeEventsForOrganizations returns all events across your organization. Results are sorted by lastModifiedTime, starting with the most recent event.  For more information about the different types of Health events, see Event. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeEventsForOrganizationPaginator(
        _ input: DescribeEventsForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEventsForOrganizationRequest, DescribeEventsForOrganizationResponse> {
        return .init(
            input: input,
            command: self.describeEventsForOrganization,
            inputKey: \DescribeEventsForOrganizationRequest.nextToken,
            outputKey: \DescribeEventsForOrganizationResponse.nextToken,
            logger: logger
        )
    }
}

extension Health.DescribeAffectedAccountsForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedAccountsForOrganizationRequest {
        return .init(
            eventArn: self.eventArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeAffectedEntitiesForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedEntitiesForOrganizationRequest {
        return .init(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            organizationEntityAccountFilters: self.organizationEntityAccountFilters
        )
    }
}

extension Health.DescribeAffectedEntitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedEntitiesRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventAggregatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventAggregatesRequest {
        return .init(
            aggregateField: self.aggregateField,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventTypesRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventsForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventsForOrganizationRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventsRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
