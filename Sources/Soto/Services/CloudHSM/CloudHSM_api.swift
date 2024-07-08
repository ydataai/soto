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

/// Service object for interacting with AWS CloudHSM service.
///
/// AWS CloudHSM Service This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
public struct CloudHSM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudHSM client
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
            amzTarget: "CloudHsmFrontendService",
            serviceName: "CloudHSM",
            serviceIdentifier: "cloudhsm",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2014-05-30",
            endpoint: endpoint,
            errorType: CloudHSMErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Adds or overwrites one or more tags for the specified AWS CloudHSM resource. Each tag consists of a key and a value. Tag keys must be unique to each resource.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func addTagsToResource(_ input: AddTagsToResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AddTagsToResourceResponse {
        return try await self.client.execute(
            operation: "AddTagsToResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func createHapg(_ input: CreateHapgRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHapgResponse {
        return try await self.client.execute(
            operation: "CreateHapg", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates an uninitialized HSM instance. There is an upfront fee charged for each HSM instance that you create with the CreateHsm operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the DeleteHsm operation, go to the AWS Support Center, create a new case, and select Account and Billing Support.  It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the DescribeHsm operation. The HSM is ready to be initialized when the status changes to RUNNING.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func createHsm(_ input: CreateHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHsmResponse {
        return try await self.client.execute(
            operation: "CreateHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates an HSM client.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func createLunaClient(_ input: CreateLunaClientRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLunaClientResponse {
        return try await self.client.execute(
            operation: "CreateLunaClient", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes a high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func deleteHapg(_ input: DeleteHapgRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHapgResponse {
        return try await self.client.execute(
            operation: "DeleteHapg", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func deleteHsm(_ input: DeleteHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHsmResponse {
        return try await self.client.execute(
            operation: "DeleteHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes a client.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func deleteLunaClient(_ input: DeleteLunaClientRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLunaClientResponse {
        return try await self.client.execute(
            operation: "DeleteLunaClient", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about a high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func describeHapg(_ input: DescribeHapgRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHapgResponse {
        return try await self.client.execute(
            operation: "DescribeHapg", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func describeHsm(_ input: DescribeHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHsmResponse {
        return try await self.client.execute(
            operation: "DescribeHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about an HSM client.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func describeLunaClient(_ input: DescribeLunaClientRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeLunaClientResponse {
        return try await self.client.execute(
            operation: "DescribeLunaClient", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func getConfig(_ input: GetConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetConfigResponse {
        return try await self.client.execute(
            operation: "GetConfig", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists the Availability Zones that have available AWS CloudHSM capacity.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func listAvailableZones(_ input: ListAvailableZonesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAvailableZonesResponse {
        return try await self.client.execute(
            operation: "ListAvailableZones", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists the high-availability partition groups for the account. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHapgs to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func listHapgs(_ input: ListHapgsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHapgsResponse {
        return try await self.client.execute(
            operation: "ListHapgs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves the identifiers of all of the HSMs provisioned for the current customer. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHsms to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func listHsms(_ input: ListHsmsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHsmsResponse {
        return try await self.client.execute(
            operation: "ListHsms", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists all of the clients. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListLunaClients to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func listLunaClients(_ input: ListLunaClientsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLunaClientsResponse {
        return try await self.client.execute(
            operation: "ListLunaClients", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Returns a list of all tags for the specified AWS CloudHSM resource.
    @available(*, deprecated, message: "This API is deprecated.")
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

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies an existing high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func modifyHapg(_ input: ModifyHapgRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyHapgResponse {
        return try await self.client.execute(
            operation: "ModifyHapg", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies an HSM.  This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func modifyHsm(_ input: ModifyHsmRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyHsmResponse {
        return try await self.client.execute(
            operation: "ModifyHsm", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies the certificate used by the client. This action can potentially start a workflow to install the new certificate on the client's HSMs.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func modifyLunaClient(_ input: ModifyLunaClientRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyLunaClientResponse {
        return try await self.client.execute(
            operation: "ModifyLunaClient", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Removes one or more tags from the specified AWS CloudHSM resource. To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use AddTagsToResource.
    @available(*, deprecated, message: "This API is deprecated.")
    @Sendable
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveTagsFromResourceResponse {
        return try await self.client.execute(
            operation: "RemoveTagsFromResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CloudHSM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudHSM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
