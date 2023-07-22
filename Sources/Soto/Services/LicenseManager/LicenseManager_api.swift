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

/// Service object for interacting with AWS LicenseManager service.
///
/// License Manager makes it easier to manage licenses from software vendors across multiple  Amazon Web Services accounts and on-premises servers.
public struct LicenseManager: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LicenseManager client
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
            amzTarget: "AWSLicenseManager",
            service: "license-manager",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "license-manager-fips.us-east-1.amazonaws.com",
                    "us-east-2": "license-manager-fips.us-east-2.amazonaws.com",
                    "us-gov-east-1": "license-manager-fips.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "license-manager-fips.us-gov-west-1.amazonaws.com",
                    "us-west-1": "license-manager-fips.us-west-1.amazonaws.com",
                    "us-west-2": "license-manager-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: LicenseManagerErrorType.self,
            xmlNamespace: "https://license-manager.amazonaws.com/doc/2018_08_01",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Accepts the specified grant.
    @Sendable
    public func acceptGrant(_ input: AcceptGrantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AcceptGrantResponse {
        return try await self.client.execute(
            operation: "AcceptGrant", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Checks in the specified license. Check in a license when it is no longer in use.
    @Sendable
    public func checkInLicense(_ input: CheckInLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CheckInLicenseResponse {
        return try await self.client.execute(
            operation: "CheckInLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Checks out the specified license for offline use.
    @Sendable
    public func checkoutBorrowLicense(_ input: CheckoutBorrowLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CheckoutBorrowLicenseResponse {
        return try await self.client.execute(
            operation: "CheckoutBorrowLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Checks out the specified license.  If the account that created the license is the same that is performing the check out, you must specify the account as the beneficiary.
    @Sendable
    public func checkoutLicense(_ input: CheckoutLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CheckoutLicenseResponse {
        return try await self.client.execute(
            operation: "CheckoutLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a grant for the specified license. A grant shares the use of license entitlements with a specific Amazon Web Services account, an organization, or an organizational unit (OU). For more information, see Granted licenses in License Manager in the License Manager User Guide.
    @Sendable
    public func createGrant(_ input: CreateGrantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGrantResponse {
        return try await self.client.execute(
            operation: "CreateGrant", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new version of the specified grant. For more information, see Granted licenses in License Manager in the License Manager User Guide.
    @Sendable
    public func createGrantVersion(_ input: CreateGrantVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGrantVersionResponse {
        return try await self.client.execute(
            operation: "CreateGrantVersion", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a license.
    @Sendable
    public func createLicense(_ input: CreateLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLicenseResponse {
        return try await self.client.execute(
            operation: "CreateLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,  Dedicated Instance, Dedicated Host, or all of these), license affinity  to host (how long a  license must be associated with a host), and the number of licenses purchased and used.
    @Sendable
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new license conversion task.
    @Sendable
    public func createLicenseConversionTaskForResource(_ input: CreateLicenseConversionTaskForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLicenseConversionTaskForResourceResponse {
        return try await self.client.execute(
            operation: "CreateLicenseConversionTaskForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a report generator.
    @Sendable
    public func createLicenseManagerReportGenerator(_ input: CreateLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(
            operation: "CreateLicenseManagerReportGenerator", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new version of the specified license.
    @Sendable
    public func createLicenseVersion(_ input: CreateLicenseVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLicenseVersionResponse {
        return try await self.client.execute(
            operation: "CreateLicenseVersion", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a long-lived token. A refresh token is a JWT token used to get an access token. With an access token, you can call AssumeRoleWithWebIdentity to get role credentials that you can use to  call License Manager to manage the specified license.
    @Sendable
    public func createToken(_ input: CreateTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTokenResponse {
        return try await self.client.execute(
            operation: "CreateToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified grant.
    @Sendable
    public func deleteGrant(_ input: DeleteGrantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGrantResponse {
        return try await self.client.execute(
            operation: "DeleteGrant", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified license.
    @Sendable
    public func deleteLicense(_ input: DeleteLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLicenseResponse {
        return try await self.client.execute(
            operation: "DeleteLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified license configuration. You cannot delete a license configuration that is in use.
    @Sendable
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified report generator. This action deletes the report generator, which stops it from generating future reports. The action cannot be reversed. It has no effect on the previous reports from this generator.
    @Sendable
    public func deleteLicenseManagerReportGenerator(_ input: DeleteLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(
            operation: "DeleteLicenseManagerReportGenerator", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified token. Must be called in the license home Region.
    @Sendable
    public func deleteToken(_ input: DeleteTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTokenResponse {
        return try await self.client.execute(
            operation: "DeleteToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Extends the expiration date for license consumption.
    @Sendable
    public func extendLicenseConsumption(_ input: ExtendLicenseConsumptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExtendLicenseConsumptionResponse {
        return try await self.client.execute(
            operation: "ExtendLicenseConsumption", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens are valid for one hour.
    @Sendable
    public func getAccessToken(_ input: GetAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccessTokenResponse {
        return try await self.client.execute(
            operation: "GetAccessToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets detailed information about the specified grant.
    @Sendable
    public func getGrant(_ input: GetGrantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGrantResponse {
        return try await self.client.execute(
            operation: "GetGrant", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets detailed information about the specified license.
    @Sendable
    public func getLicense(_ input: GetLicenseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLicenseResponse {
        return try await self.client.execute(
            operation: "GetLicense", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets detailed information about the specified license configuration.
    @Sendable
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "GetLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about the specified license type conversion task.
    @Sendable
    public func getLicenseConversionTask(_ input: GetLicenseConversionTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLicenseConversionTaskResponse {
        return try await self.client.execute(
            operation: "GetLicenseConversionTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about the specified report generator.
    @Sendable
    public func getLicenseManagerReportGenerator(_ input: GetLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(
            operation: "GetLicenseManagerReportGenerator", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets detailed information about the usage of the specified license.
    @Sendable
    public func getLicenseUsage(_ input: GetLicenseUsageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLicenseUsageResponse {
        return try await self.client.execute(
            operation: "GetLicenseUsage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the License Manager settings for the current Region.
    @Sendable
    public func getServiceSettings(_ input: GetServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetServiceSettingsResponse {
        return try await self.client.execute(
            operation: "GetServiceSettings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration.  For example, an AMI or a stopped instance might not consume a license (depending on  the license rules).
    @Sendable
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssociationsForLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "ListAssociationsForLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the grants distributed for the specified license.
    @Sendable
    public func listDistributedGrants(_ input: ListDistributedGrantsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDistributedGrantsResponse {
        return try await self.client.execute(
            operation: "ListDistributedGrants", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the license configuration operations that failed.
    @Sendable
    public func listFailuresForLicenseConfigurationOperations(_ input: ListFailuresForLicenseConfigurationOperationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFailuresForLicenseConfigurationOperationsResponse {
        return try await self.client.execute(
            operation: "ListFailuresForLicenseConfigurationOperations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the license configurations for your account.
    @Sendable
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicenseConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListLicenseConfigurations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the license type conversion tasks for your account.
    @Sendable
    public func listLicenseConversionTasks(_ input: ListLicenseConversionTasksRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicenseConversionTasksResponse {
        return try await self.client.execute(
            operation: "ListLicenseConversionTasks", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the report generators for your account.
    @Sendable
    public func listLicenseManagerReportGenerators(_ input: ListLicenseManagerReportGeneratorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicenseManagerReportGeneratorsResponse {
        return try await self.client.execute(
            operation: "ListLicenseManagerReportGenerators", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the license configurations for the specified resource.
    @Sendable
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicenseSpecificationsForResourceResponse {
        return try await self.client.execute(
            operation: "ListLicenseSpecificationsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all versions of the specified license.
    @Sendable
    public func listLicenseVersions(_ input: ListLicenseVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicenseVersionsResponse {
        return try await self.client.execute(
            operation: "ListLicenseVersions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the licenses for your account.
    @Sendable
    public func listLicenses(_ input: ListLicensesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLicensesResponse {
        return try await self.client.execute(
            operation: "ListLicenses", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists grants that are received. Received grants are grants created while specifying the recipient as this Amazon Web Services account, your organization, or an organizational unit (OU) to which this member account belongs.
    @Sendable
    public func listReceivedGrants(_ input: ListReceivedGrantsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReceivedGrantsResponse {
        return try await self.client.execute(
            operation: "ListReceivedGrants", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the grants received for all accounts in the organization.
    @Sendable
    public func listReceivedGrantsForOrganization(_ input: ListReceivedGrantsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReceivedGrantsForOrganizationResponse {
        return try await self.client.execute(
            operation: "ListReceivedGrantsForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists received licenses.
    @Sendable
    public func listReceivedLicenses(_ input: ListReceivedLicensesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReceivedLicensesResponse {
        return try await self.client.execute(
            operation: "ListReceivedLicenses", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the licenses received for all accounts in the organization.
    @Sendable
    public func listReceivedLicensesForOrganization(_ input: ListReceivedLicensesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReceivedLicensesForOrganizationResponse {
        return try await self.client.execute(
            operation: "ListReceivedLicensesForOrganization", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists resources managed using Systems Manager inventory.
    @Sendable
    public func listResourceInventory(_ input: ListResourceInventoryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResourceInventoryResponse {
        return try await self.client.execute(
            operation: "ListResourceInventory", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for the specified license configuration.
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

    /// Lists your tokens.
    @Sendable
    public func listTokens(_ input: ListTokensRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTokensResponse {
        return try await self.client.execute(
            operation: "ListTokens", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    @Sendable
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUsageForLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "ListUsageForLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Rejects the specified grant.
    @Sendable
    public func rejectGrant(_ input: RejectGrantRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RejectGrantResponse {
        return try await self.client.execute(
            operation: "RejectGrant", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds the specified tags to the specified license configuration.
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

    /// Removes the specified tags from the specified license configuration.
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

    /// Modifies the attributes of an existing license configuration.
    @Sendable
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLicenseConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateLicenseConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a report generator. After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated.
    @Sendable
    public func updateLicenseManagerReportGenerator(_ input: UpdateLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(
            operation: "UpdateLicenseManagerReportGenerator", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or removes the specified license configurations for the specified Amazon Web Services resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and CloudFormation templates,  as they send license configurations to the operation that creates the resource.
    @Sendable
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLicenseSpecificationsForResourceResponse {
        return try await self.client.execute(
            operation: "UpdateLicenseSpecificationsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates License Manager settings for the current Region.
    @Sendable
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateServiceSettingsResponse {
        return try await self.client.execute(
            operation: "UpdateServiceSettings", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension LicenseManager {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LicenseManager, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
