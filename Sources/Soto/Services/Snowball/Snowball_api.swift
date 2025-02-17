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

/// Service object for interacting with AWS Snowball service.
///
/// The Amazon Web Services Snow Family provides a petabyte-scale data transport solution that uses secure devices to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The Snow Family commands described here provide access to the same functionality that is available in the Amazon Web Services Snow Family Management Console, which enables you to create and manage jobs for a Snow Family device. To transfer data locally with a Snow Family device, you'll need to use the Snowball Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow Family. For more information, see the User Guide.
public struct Snowball: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Snowball client
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
            amzTarget: "AWSIESnowballJobManagementService",
            serviceName: "Snowball",
            serviceIdentifier: "snowball",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-06-30",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: SnowballErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ap-northeast-1": "snowball-fips.ap-northeast-1.amazonaws.com",
            "ap-northeast-2": "snowball-fips.ap-northeast-2.amazonaws.com",
            "ap-northeast-3": "snowball-fips.ap-northeast-3.amazonaws.com",
            "ap-south-1": "snowball-fips.ap-south-1.amazonaws.com",
            "ap-southeast-1": "snowball-fips.ap-southeast-1.amazonaws.com",
            "ap-southeast-2": "snowball-fips.ap-southeast-2.amazonaws.com",
            "ca-central-1": "snowball-fips.ca-central-1.amazonaws.com",
            "cn-north-1": "snowball-fips.cn-north-1.amazonaws.com.cn",
            "cn-northwest-1": "snowball-fips.cn-northwest-1.amazonaws.com.cn",
            "eu-central-1": "snowball-fips.eu-central-1.amazonaws.com",
            "eu-west-1": "snowball-fips.eu-west-1.amazonaws.com",
            "eu-west-2": "snowball-fips.eu-west-2.amazonaws.com",
            "eu-west-3": "snowball-fips.eu-west-3.amazonaws.com",
            "sa-east-1": "snowball-fips.sa-east-1.amazonaws.com",
            "us-east-1": "snowball-fips.us-east-1.amazonaws.com",
            "us-east-2": "snowball-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "snowball-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "snowball-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "snowball-fips.us-west-1.amazonaws.com",
            "us-west-2": "snowball-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.
    @Sendable
    public func cancelCluster(_ input: CancelClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelClusterResult {
        return try await self.client.execute(
            operation: "CancelCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.
    @Sendable
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobResult {
        return try await self.client.execute(
            operation: "CancelJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown. If providing an address as a JSON file through the cli-input-json option, include the full file path. For example, --cli-input-json file://create-address.json.
    @Sendable
    public func createAddress(_ input: CreateAddressRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAddressResult {
        return try await self.client.execute(
            operation: "CreateAddress", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    @Sendable
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateClusterResult {
        return try await self.client.execute(
            operation: "CreateCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a job to import or export data between Amazon S3 and your on-premises data center. Your Amazon Web Services account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.   Only the Snowball; Edge device type is supported when ordering clustered jobs. The device capacity is optional. Availability of device types differ by Amazon Web Services Region. For more information about Region availability, see Amazon Web Services Regional Services.    Snow Family devices and their capacities.    Device type: SNC1_SSD    Capacity: T14   Description: Snowcone       Device type: SNC1_HDD    Capacity: T8   Description: Snowcone       Device type: EDGE_S    Capacity: T98   Description: Snowball Edge Storage Optimized for data transfer only       Device type: EDGE_CG    Capacity: T42   Description: Snowball Edge Compute Optimized with GPU      Device type: EDGE_C    Capacity: T42   Description: Snowball Edge Compute Optimized without GPU      Device type: EDGE    Capacity: T100   Description: Snowball Edge Storage Optimized with EC2 Compute    This device is replaced with T98.     Device type: STANDARD    Capacity: T50   Description: Original Snowball device  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region        Device type: STANDARD    Capacity: T80   Description: Original Snowball device  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region.        Snow Family device type: RACK_5U_C    Capacity: T13    Description: Snowblade.     Device type: V3_5S    Capacity: T240   Description: Snowball Edge Storage Optimized 210TB
    @Sendable
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobResult {
        return try await self.client.execute(
            operation: "CreateJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a job with the long-term usage option for a device. The long-term usage is a 1-year or 3-year long-term pricing type for the device. You are billed upfront, and Amazon Web Services provides discounts for long-term pricing.
    @Sendable
    public func createLongTermPricing(_ input: CreateLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLongTermPricingResult {
        return try await self.client.execute(
            operation: "CreateLongTermPricing", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a shipping label that will be used to return the Snow device to Amazon Web Services.
    @Sendable
    public func createReturnShippingLabel(_ input: CreateReturnShippingLabelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateReturnShippingLabelResult {
        return try await self.client.execute(
            operation: "CreateReturnShippingLabel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Takes an AddressId and returns specific details about that address in the form of an Address object.
    @Sendable
    public func describeAddress(_ input: DescribeAddressRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAddressResult {
        return try await self.client.execute(
            operation: "DescribeAddress", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    @Sendable
    public func describeAddresses(_ input: DescribeAddressesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAddressesResult {
        return try await self.client.execute(
            operation: "DescribeAddresses", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a specific cluster including shipping information, cluster status, and other important metadata.
    @Sendable
    public func describeCluster(_ input: DescribeClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeClusterResult {
        return try await self.client.execute(
            operation: "DescribeCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a specific job including shipping information, job status, and other important metadata.
    @Sendable
    public func describeJob(_ input: DescribeJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeJobResult {
        return try await self.client.execute(
            operation: "DescribeJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Information on the shipping label of a Snow device that is being returned to Amazon Web Services.
    @Sendable
    public func describeReturnShippingLabel(_ input: DescribeReturnShippingLabelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeReturnShippingLabelResult {
        return try await self.client.execute(
            operation: "DescribeReturnShippingLabel", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. This is the only valid status for calling this API as the manifest and UnlockCode code value are used for securing your device and should only be used when you have the device.  The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time.  As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 360 days after the job is created.
    @Sendable
    public func getJobManifest(_ input: GetJobManifestRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobManifestResult {
        return try await self.client.execute(
            operation: "GetJobManifest", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 360 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snow device through the Snowball client when the client is started for the first time. The only valid status for calling this API is WithCustomer as the manifest and Unlock code values are used for securing your device and should only be used when you have the device. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.
    @Sendable
    public func getJobUnlockCode(_ input: GetJobUnlockCodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobUnlockCodeResult {
        return try await self.client.execute(
            operation: "GetJobUnlockCode", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use. The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact Amazon Web Services Support.
    @Sendable
    public func getSnowballUsage(_ input: GetSnowballUsageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSnowballUsageResult {
        return try await self.client.execute(
            operation: "GetSnowballUsage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.
    @Sendable
    public func getSoftwareUpdates(_ input: GetSoftwareUpdatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSoftwareUpdatesResult {
        return try await self.client.execute(
            operation: "GetSoftwareUpdates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    @Sendable
    public func listClusterJobs(_ input: ListClusterJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListClusterJobsResult {
        return try await self.client.execute(
            operation: "ListClusterJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    @Sendable
    public func listClusters(_ input: ListClustersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListClustersResult {
        return try await self.client.execute(
            operation: "ListClusters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action returns a list of the different Amazon EC2-compatible Amazon Machine Images (AMIs) that are owned by your Amazon Web Services accountthat would be supported for use on a Snow device. Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04 LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images are no longer supported in the Market, but still supported for use on devices through Amazon EC2 VM Import/Export and running locally in AMIs.
    @Sendable
    public func listCompatibleImages(_ input: ListCompatibleImagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCompatibleImagesResult {
        return try await self.client.execute(
            operation: "ListCompatibleImages", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    @Sendable
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsResult {
        return try await self.client.execute(
            operation: "ListJobs", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all long-term pricing types.
    @Sendable
    public func listLongTermPricing(_ input: ListLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLongTermPricingResult {
        return try await self.client.execute(
            operation: "ListLongTermPricing", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// A list of locations from which the customer can choose to pickup a device.
    @Sendable
    public func listPickupLocations(_ input: ListPickupLocationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPickupLocationsResult {
        return try await self.client.execute(
            operation: "ListPickupLocations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all supported versions for Snow on-device services. Returns an array of ServiceVersion object containing the supported versions for a particular service.
    @Sendable
    public func listServiceVersions(_ input: ListServiceVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServiceVersionsResult {
        return try await self.client.execute(
            operation: "ListServiceVersions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
    @Sendable
    public func updateCluster(_ input: UpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateClusterResult {
        return try await self.client.execute(
            operation: "UpdateCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    @Sendable
    public func updateJob(_ input: UpdateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateJobResult {
        return try await self.client.execute(
            operation: "UpdateJob", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the state when a shipment state changes to a different state.
    @Sendable
    public func updateJobShipmentState(_ input: UpdateJobShipmentStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateJobShipmentStateResult {
        return try await self.client.execute(
            operation: "UpdateJobShipmentState", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the long-term pricing type.
    @Sendable
    public func updateLongTermPricing(_ input: UpdateLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLongTermPricingResult {
        return try await self.client.execute(
            operation: "UpdateLongTermPricing", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Snowball {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Snowball, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Snowball {
    /// Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeAddressesPaginator(
        _ input: DescribeAddressesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeAddressesRequest, DescribeAddressesResult> {
        return .init(
            input: input,
            command: self.describeAddresses,
            inputKey: \DescribeAddressesRequest.nextToken,
            outputKey: \DescribeAddressesResult.nextToken,
            logger: logger
        )
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listClusterJobsPaginator(
        _ input: ListClusterJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListClusterJobsRequest, ListClusterJobsResult> {
        return .init(
            input: input,
            command: self.listClusterJobs,
            inputKey: \ListClusterJobsRequest.nextToken,
            outputKey: \ListClusterJobsResult.nextToken,
            logger: logger
        )
    }

    /// Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListClustersRequest, ListClustersResult> {
        return .init(
            input: input,
            command: self.listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResult.nextToken,
            logger: logger
        )
    }

    /// This action returns a list of the different Amazon EC2-compatible Amazon Machine Images (AMIs) that are owned by your Amazon Web Services accountthat would be supported for use on a Snow device. Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04 LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images are no longer supported in the Market, but still supported for use on devices through Amazon EC2 VM Import/Export and running locally in AMIs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCompatibleImagesPaginator(
        _ input: ListCompatibleImagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCompatibleImagesRequest, ListCompatibleImagesResult> {
        return .init(
            input: input,
            command: self.listCompatibleImages,
            inputKey: \ListCompatibleImagesRequest.nextToken,
            outputKey: \ListCompatibleImagesResult.nextToken,
            logger: logger
        )
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResult> {
        return .init(
            input: input,
            command: self.listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all long-term pricing types.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLongTermPricingPaginator(
        _ input: ListLongTermPricingRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLongTermPricingRequest, ListLongTermPricingResult> {
        return .init(
            input: input,
            command: self.listLongTermPricing,
            inputKey: \ListLongTermPricingRequest.nextToken,
            outputKey: \ListLongTermPricingResult.nextToken,
            logger: logger
        )
    }

    /// A list of locations from which the customer can choose to pickup a device.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPickupLocationsPaginator(
        _ input: ListPickupLocationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPickupLocationsRequest, ListPickupLocationsResult> {
        return .init(
            input: input,
            command: self.listPickupLocations,
            inputKey: \ListPickupLocationsRequest.nextToken,
            outputKey: \ListPickupLocationsResult.nextToken,
            logger: logger
        )
    }
}

extension Snowball.DescribeAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.DescribeAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListClusterJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListClusterJobsRequest {
        return .init(
            clusterId: self.clusterId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListClustersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListCompatibleImagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListCompatibleImagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListLongTermPricingRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListLongTermPricingRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListPickupLocationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListPickupLocationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
