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

/// Service object for interacting with AWS CloudControl service.
///
/// For more information about Amazon Web Services Cloud Control API, see the Amazon Web Services Cloud Control API User Guide.
public struct CloudControl: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudControl client
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
            amzTarget: "CloudApiService",
            serviceName: "CloudControl",
            serviceIdentifier: "cloudcontrolapi",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-09-30",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: CloudControlErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "cloudcontrolapi-fips.ca-central-1.amazonaws.com",
            "ca-west-1": "cloudcontrolapi-fips.ca-west-1.amazonaws.com",
            "us-east-1": "cloudcontrolapi-fips.us-east-1.amazonaws.com",
            "us-east-2": "cloudcontrolapi-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "cloudcontrolapi-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "cloudcontrolapi-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "cloudcontrolapi-fips.us-west-1.amazonaws.com",
            "us-west-2": "cloudcontrolapi-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Cancels the specified resource operation request. For more information, see Canceling resource operation requests in the Amazon Web Services Cloud Control API User Guide. Only resource operations requests with a status of PENDING or IN_PROGRESS can be canceled.
    @Sendable
    public func cancelResourceRequest(_ input: CancelResourceRequestInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelResourceRequestOutput {
        return try await self.client.execute(
            operation: "CancelResourceRequest", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates the specified resource. For more information, see Creating a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource creation request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent type returned by CreateResource.
    @Sendable
    public func createResource(_ input: CreateResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateResourceOutput {
        return try await self.client.execute(
            operation: "CreateResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified resource. For details, see Deleting a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource deletion request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by DeleteResource.
    @Sendable
    public func deleteResource(_ input: DeleteResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteResourceOutput {
        return try await self.client.execute(
            operation: "DeleteResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the current state of the specified resource. For details, see Reading a resource's current state. You can use this action to return information about an existing resource in your account and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.
    @Sendable
    public func getResource(_ input: GetResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResourceOutput {
        return try await self.client.execute(
            operation: "GetResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the current status of a resource operation request. For more information, see Tracking the progress of resource operation requests in the Amazon Web Services Cloud Control API User Guide.
    @Sendable
    public func getResourceRequestStatus(_ input: GetResourceRequestStatusInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResourceRequestStatusOutput {
        return try await self.client.execute(
            operation: "GetResourceRequestStatus", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns existing resource operation requests. This includes requests of all status types. For more information, see Listing active resource operation requests in the Amazon Web Services Cloud Control API User Guide.  Resource operation requests expire after 7 days.
    @Sendable
    public func listResourceRequests(_ input: ListResourceRequestsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResourceRequestsOutput {
        return try await self.client.execute(
            operation: "ListResourceRequests", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the specified resources. For more information, see Discovering resources in the Amazon Web Services Cloud Control API User Guide. You can use this action to return information about existing resources in your account and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.
    @Sendable
    public func listResources(_ input: ListResourcesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResourcesOutput {
        return try await self.client.execute(
            operation: "ListResources", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified property values in the resource. You specify your resource property updates as a list of patch operations contained in a JSON patch document that adheres to the  RFC 6902 - JavaScript Object Notation (JSON) Patch standard. For details on how Cloud Control API performs resource update operations, see Updating a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource update request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by UpdateResource. For more information about the properties of a specific resource, refer to the related topic for the resource in the Resource and property types reference in the CloudFormation Users Guide.
    @Sendable
    public func updateResource(_ input: UpdateResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateResourceOutput {
        return try await self.client.execute(
            operation: "UpdateResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CloudControl {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudControl, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CloudControl {
    /// Returns existing resource operation requests. This includes requests of all status types. For more information, see Listing active resource operation requests in the Amazon Web Services Cloud Control API User Guide.  Resource operation requests expire after 7 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listResourceRequestsPaginator(
        _ input: ListResourceRequestsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListResourceRequestsInput, ListResourceRequestsOutput> {
        return .init(
            input: input,
            command: self.listResourceRequests,
            inputKey: \ListResourceRequestsInput.nextToken,
            outputKey: \ListResourceRequestsOutput.nextToken,
            logger: logger
        )
    }

    /// Returns information about the specified resources. For more information, see Discovering resources in the Amazon Web Services Cloud Control API User Guide. You can use this action to return information about existing resources in your account and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listResourcesPaginator(
        _ input: ListResourcesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListResourcesInput, ListResourcesOutput> {
        return .init(
            input: input,
            command: self.listResources,
            inputKey: \ListResourcesInput.nextToken,
            outputKey: \ListResourcesOutput.nextToken,
            logger: logger
        )
    }
}

extension CloudControl.ListResourceRequestsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudControl.ListResourceRequestsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceRequestStatusFilter: self.resourceRequestStatusFilter
        )
    }
}

extension CloudControl.ListResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudControl.ListResourcesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceModel: self.resourceModel,
            roleArn: self.roleArn,
            typeName: self.typeName,
            typeVersionId: self.typeVersionId
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CloudControl {
    public func waitUntilResourceRequestSuccess(
        _ input: GetResourceRequestStatusInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "SUCCESS")),
                .init(state: .failure, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "CANCEL_COMPLETE")),
            ],
            minDelayTime: .seconds(5),
            command: self.getResourceRequestStatus
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
