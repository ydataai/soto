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

/// Service object for interacting with AWS Signer service.
///
/// AWS Signer is a fully managed code-signing service to help you ensure the trust and
/// 			integrity of your code.
/// 		       Signer supports the following applications:
/// 		       With code signing for AWS Lambda, you can sign AWS
/// 				Lambda deployment packages. Integrated support is provided for Amazon S3, Amazon
/// 				CloudWatch, and AWS CloudTrail. In order
/// 			to sign code, you create a signing profile and then use Signer to sign Lambda zip
/// 			files in S3.
/// 		       With code signing for IoT, you can sign code for any IoT device that is supported by AWS.
/// 			IoT code signing is available for Amazon FreeRTOS and AWS IoT Device Management, and is integrated with AWS Certificate Manager (ACM). In order to sign code, you import a third-party code-signing
/// 			certificate using ACM, and use that to sign updates in Amazon FreeRTOS and AWS IoT Device Management.
/// 		       With Signer and the Notation CLI from the Notary
/// 				Project, you can sign container images stored in a container registry such
/// 			as Amazon Elastic Container Registry (ECR). The signatures are stored in the registry
/// 			alongside the images, where they are available for verifying image authenticity and
/// 			integrity.
/// 		       For more information about Signer, see the AWS Signer Developer
/// 			Guide.
public struct Signer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Signer client
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
            serviceName: "Signer",
            serviceIdentifier: "signer",
            serviceProtocol: .restjson,
            apiVersion: "2017-08-25",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            variantEndpoints: Self.variantEndpoints,
            errorType: SignerErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "fips-verification-us-east-1": "verification.signer-fips.us-east-1.amazonaws.com",
        "fips-verification-us-east-2": "verification.signer-fips.us-east-2.amazonaws.com",
        "fips-verification-us-gov-east-1": "verification.signer-fips.us-gov-east-1.amazonaws.com",
        "fips-verification-us-gov-west-1": "verification.signer-fips.us-gov-west-1.amazonaws.com",
        "fips-verification-us-west-1": "verification.signer-fips.us-west-1.amazonaws.com",
        "fips-verification-us-west-2": "verification.signer-fips.us-west-2.amazonaws.com",
        "verification-af-south-1": "verification.signer.af-south-1.amazonaws.com",
        "verification-ap-east-1": "verification.signer.ap-east-1.amazonaws.com",
        "verification-ap-northeast-1": "verification.signer.ap-northeast-1.amazonaws.com",
        "verification-ap-northeast-2": "verification.signer.ap-northeast-2.amazonaws.com",
        "verification-ap-south-1": "verification.signer.ap-south-1.amazonaws.com",
        "verification-ap-southeast-1": "verification.signer.ap-southeast-1.amazonaws.com",
        "verification-ap-southeast-2": "verification.signer.ap-southeast-2.amazonaws.com",
        "verification-ca-central-1": "verification.signer.ca-central-1.amazonaws.com",
        "verification-cn-north-1": "verification.signer.cn-north-1.amazonaws.com.cn",
        "verification-cn-northwest-1": "verification.signer.cn-northwest-1.amazonaws.com.cn",
        "verification-eu-central-1": "verification.signer.eu-central-1.amazonaws.com",
        "verification-eu-north-1": "verification.signer.eu-north-1.amazonaws.com",
        "verification-eu-south-1": "verification.signer.eu-south-1.amazonaws.com",
        "verification-eu-west-1": "verification.signer.eu-west-1.amazonaws.com",
        "verification-eu-west-2": "verification.signer.eu-west-2.amazonaws.com",
        "verification-eu-west-3": "verification.signer.eu-west-3.amazonaws.com",
        "verification-me-south-1": "verification.signer.me-south-1.amazonaws.com",
        "verification-sa-east-1": "verification.signer.sa-east-1.amazonaws.com",
        "verification-us-east-1": "verification.signer.us-east-1.amazonaws.com",
        "verification-us-east-2": "verification.signer.us-east-2.amazonaws.com",
        "verification-us-gov-east-1": "verification.signer.us-gov-east-1.amazonaws.com",
        "verification-us-gov-west-1": "verification.signer.us-gov-west-1.amazonaws.com",
        "verification-us-west-1": "verification.signer.us-west-1.amazonaws.com",
        "verification-us-west-2": "verification.signer.us-west-2.amazonaws.com"
    ]}


    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "signer-fips.us-east-1.amazonaws.com",
            "us-east-2": "signer-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "signer-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "signer-fips.us-gov-west-1.amazonaws.com",
            "us-west-1": "signer-fips.us-west-1.amazonaws.com",
            "us-west-2": "signer-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Adds cross-account permissions to a signing profile.
    @Sendable
    public func addProfilePermission(_ input: AddProfilePermissionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AddProfilePermissionResponse {
        return try await self.client.execute(
            operation: "AddProfilePermission", 
            path: "/signing-profiles/{profileName}/permissions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Changes the state of an ACTIVE signing profile to CANCELED.
    /// 			A canceled profile is still viewable with the ListSigningProfiles
    /// 			operation, but it cannot perform new signing jobs, and is deleted two years after
    /// 			cancelation.
    @Sendable
    public func cancelSigningProfile(_ input: CancelSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "CancelSigningProfile", 
            path: "/signing-profiles/{profileName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a specific code signing job. You specify the job by using the
    /// 				jobId value that is returned by the StartSigningJob
    /// 			operation.
    @Sendable
    public func describeSigningJob(_ input: DescribeSigningJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSigningJobResponse {
        return try await self.client.execute(
            operation: "DescribeSigningJob", 
            path: "/signing-jobs/{jobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the revocation status of one or more of the signing profile, signing job,
    /// 			and signing certificate.
    @Sendable
    public func getRevocationStatus(_ input: GetRevocationStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRevocationStatusResponse {
        return try await self.client.execute(
            operation: "GetRevocationStatus", 
            path: "/revocations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "verification.", 
            logger: logger
        )
    }

    /// Returns information on a specific signing platform.
    @Sendable
    public func getSigningPlatform(_ input: GetSigningPlatformRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSigningPlatformResponse {
        return try await self.client.execute(
            operation: "GetSigningPlatform", 
            path: "/signing-platforms/{platformId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information on a specific signing profile.
    @Sendable
    public func getSigningProfile(_ input: GetSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSigningProfileResponse {
        return try await self.client.execute(
            operation: "GetSigningProfile", 
            path: "/signing-profiles/{profileName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the cross-account permissions associated with a signing profile.
    @Sendable
    public func listProfilePermissions(_ input: ListProfilePermissionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProfilePermissionsResponse {
        return try await self.client.execute(
            operation: "ListProfilePermissions", 
            path: "/signing-profiles/{profileName}/permissions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all your signing jobs. You can use the maxResults parameter to limit the
    /// 			number of signing jobs that are returned in the response. If additional jobs remain to
    /// 			be listed, AWS Signer returns a nextToken value. Use this value in
    /// 			subsequent calls to ListSigningJobs to fetch the remaining values. You can
    /// 			continue calling ListSigningJobs with your maxResults
    /// 			parameter and with new values that Signer returns in the nextToken
    /// 			parameter until all of your signing jobs have been returned.
    @Sendable
    public func listSigningJobs(_ input: ListSigningJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSigningJobsResponse {
        return try await self.client.execute(
            operation: "ListSigningJobs", 
            path: "/signing-jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all signing platforms available in AWS Signer that match the request parameters. If
    /// 			additional jobs remain to be listed, Signer returns a nextToken value.
    /// 			Use this value in subsequent calls to ListSigningJobs to fetch the
    /// 			remaining values. You can continue calling ListSigningJobs with your
    /// 				maxResults parameter and with new values that Signer returns in the
    /// 				nextToken parameter until all of your signing jobs have been
    /// 			returned.
    @Sendable
    public func listSigningPlatforms(_ input: ListSigningPlatformsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSigningPlatformsResponse {
        return try await self.client.execute(
            operation: "ListSigningPlatforms", 
            path: "/signing-platforms", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all available signing profiles in your AWS account. Returns only profiles with an
    /// 				ACTIVE status unless the includeCanceled request field is
    /// 			set to true. If additional jobs remain to be listed, AWS Signer returns a
    /// 				nextToken value. Use this value in subsequent calls to
    /// 				ListSigningJobs to fetch the remaining values. You can continue calling
    /// 				ListSigningJobs with your maxResults parameter and with
    /// 			new values that Signer returns in the nextToken parameter until all of
    /// 			your signing jobs have been returned.
    @Sendable
    public func listSigningProfiles(_ input: ListSigningProfilesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSigningProfilesResponse {
        return try await self.client.execute(
            operation: "ListSigningProfiles", 
            path: "/signing-profiles", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the tags associated with a signing profile resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a signing profile. A signing profile is a code-signing template that can be used to
    /// 			carry out a pre-defined signing job.
    ///
    @Sendable
    public func putSigningProfile(_ input: PutSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutSigningProfileResponse {
        return try await self.client.execute(
            operation: "PutSigningProfile", 
            path: "/signing-profiles/{profileName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes cross-account permissions from a signing profile.
    @Sendable
    public func removeProfilePermission(_ input: RemoveProfilePermissionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveProfilePermissionResponse {
        return try await self.client.execute(
            operation: "RemoveProfilePermission", 
            path: "/signing-profiles/{profileName}/permissions/{statementId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Changes the state of a signing job to REVOKED. This indicates that the signature is no
    /// 			longer valid.
    @Sendable
    public func revokeSignature(_ input: RevokeSignatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "RevokeSignature", 
            path: "/signing-jobs/{jobId}/revoke", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Changes the state of a signing profile to REVOKED. This indicates that signatures
    /// 			generated using the signing profile after an effective start date are no longer
    /// 			valid.
    @Sendable
    public func revokeSigningProfile(_ input: RevokeSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "RevokeSigningProfile", 
            path: "/signing-profiles/{profileName}/revoke", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Signs a binary payload and returns a signature envelope.
    @Sendable
    public func signPayload(_ input: SignPayloadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SignPayloadResponse {
        return try await self.client.execute(
            operation: "SignPayload", 
            path: "/signing-jobs/with-payload", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Initiates a signing job to be performed on the code provided. Signing jobs are
    /// 			viewable by the ListSigningJobs operation for two years after they are
    /// 			performed. Note the following requirements:
    ///
    /// 				            You must create an Amazon S3 source bucket. For more information, see Creating a Bucket in the
    /// 						Amazon S3 Getting Started Guide.
    ///
    /// 				           Your S3 source bucket must be version enabled.
    ///
    /// 				           You must create an S3 destination bucket. AWS Signer uses your S3 destination bucket to
    /// 					write your signed code.
    ///
    /// 				           You specify the name of the source and destination buckets when calling the
    /// 						StartSigningJob operation.
    ///
    /// 				           You must ensure the S3 buckets are from the same Region as the signing profile. Cross-Region signing isn't supported.
    ///
    /// 				           You must also specify a request token that identifies your request to Signer.
    ///
    /// 		       You can call the DescribeSigningJob and the ListSigningJobs actions after you call
    /// 			StartSigningJob.
    /// 		       For a Java example that shows how to use this action, see StartSigningJob.
    @Sendable
    public func startSigningJob(_ input: StartSigningJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartSigningJobResponse {
        return try await self.client.execute(
            operation: "StartSigningJob", 
            path: "/signing-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds one or more tags to a signing profile. Tags are labels that you can use to
    /// 			identify and organize your AWS resources. Each tag consists of a key and an optional
    /// 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    /// 			the tag, use a key-value pair.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from a signing profile. To remove the tags, specify a list of
    /// 			tag keys.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Signer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Signer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Signer {
    /// Lists all your signing jobs. You can use the maxResults parameter to limit the
    /// 			number of signing jobs that are returned in the response. If additional jobs remain to
    /// 			be listed, AWS Signer returns a nextToken value. Use this value in
    /// 			subsequent calls to ListSigningJobs to fetch the remaining values. You can
    /// 			continue calling ListSigningJobs with your maxResults
    /// 			parameter and with new values that Signer returns in the nextToken
    /// 			parameter until all of your signing jobs have been returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSigningJobsPaginator(
        _ input: ListSigningJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSigningJobsRequest, ListSigningJobsResponse> {
        return .init(
            input: input,
            command: self.listSigningJobs,
            inputKey: \ListSigningJobsRequest.nextToken,
            outputKey: \ListSigningJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all signing platforms available in AWS Signer that match the request parameters. If
    /// 			additional jobs remain to be listed, Signer returns a nextToken value.
    /// 			Use this value in subsequent calls to ListSigningJobs to fetch the
    /// 			remaining values. You can continue calling ListSigningJobs with your
    /// 				maxResults parameter and with new values that Signer returns in the
    /// 				nextToken parameter until all of your signing jobs have been
    /// 			returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSigningPlatformsPaginator(
        _ input: ListSigningPlatformsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSigningPlatformsRequest, ListSigningPlatformsResponse> {
        return .init(
            input: input,
            command: self.listSigningPlatforms,
            inputKey: \ListSigningPlatformsRequest.nextToken,
            outputKey: \ListSigningPlatformsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all available signing profiles in your AWS account. Returns only profiles with an
    /// 				ACTIVE status unless the includeCanceled request field is
    /// 			set to true. If additional jobs remain to be listed, AWS Signer returns a
    /// 				nextToken value. Use this value in subsequent calls to
    /// 				ListSigningJobs to fetch the remaining values. You can continue calling
    /// 				ListSigningJobs with your maxResults parameter and with
    /// 			new values that Signer returns in the nextToken parameter until all of
    /// 			your signing jobs have been returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSigningProfilesPaginator(
        _ input: ListSigningProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSigningProfilesRequest, ListSigningProfilesResponse> {
        return .init(
            input: input,
            command: self.listSigningProfiles,
            inputKey: \ListSigningProfilesRequest.nextToken,
            outputKey: \ListSigningProfilesResponse.nextToken,
            logger: logger
        )
    }
}

extension Signer.ListSigningJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningJobsRequest {
        return .init(
            isRevoked: self.isRevoked,
            jobInvoker: self.jobInvoker,
            maxResults: self.maxResults,
            nextToken: token,
            platformId: self.platformId,
            requestedBy: self.requestedBy,
            signatureExpiresAfter: self.signatureExpiresAfter,
            signatureExpiresBefore: self.signatureExpiresBefore,
            status: self.status
        )
    }
}

extension Signer.ListSigningPlatformsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningPlatformsRequest {
        return .init(
            category: self.category,
            maxResults: self.maxResults,
            nextToken: token,
            partner: self.partner,
            target: self.target
        )
    }
}

extension Signer.ListSigningProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningProfilesRequest {
        return .init(
            includeCanceled: self.includeCanceled,
            maxResults: self.maxResults,
            nextToken: token,
            platformId: self.platformId,
            statuses: self.statuses
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Signer {
    public func waitUntilSuccessfulSigningJob(
        _ input: DescribeSigningJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("status", expected: "Succeeded")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(20),
            command: self.describeSigningJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
