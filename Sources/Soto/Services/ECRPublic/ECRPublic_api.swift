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

/// Service object for interacting with AWS ECRPublic service.
///
/// Amazon Elastic Container Registry Public Amazon Elastic Container Registry Public (Amazon ECR Public) is a managed container image registry service. Amazon ECR provides both public and private registries to host your container images. You can use the Docker CLI or your preferred client to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR supports public repositories with this API. For information about the Amazon ECR API for private repositories, see Amazon Elastic Container Registry API Reference.
public struct ECRPublic: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ECRPublic client
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
            amzTarget: "SpencerFrontendService",
            serviceName: "ECRPublic",
            serviceIdentifier: "api.ecr-public",
            signingName: "ecr-public",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2020-10-30",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: ECRPublicErrorType.self,
            xmlNamespace: "http://ecr-public.amazonaws.com/doc/2020-12-02/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "us-east-1": "api.ecr-public.us-east-1.amazonaws.com",
        "us-west-2": "api.ecr-public.us-west-2.amazonaws.com"
    ]}



    // MARK: API Calls

    /// Checks the availability of one or more image layers that are within a repository in a public registry. When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    @Sendable
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchCheckLayerAvailabilityResponse {
        return try await self.client.execute(
            operation: "BatchCheckLayerAvailability", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a list of specified images that are within a repository in a public registry. Images are specified with either an imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the digest of the image in your request.
    @Sendable
    public func batchDeleteImage(_ input: BatchDeleteImageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchDeleteImageResponse {
        return try await self.client.execute(
            operation: "BatchDeleteImage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Informs Amazon ECR that the image layer upload is complete for a specified public registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes. When an image is pushed, the CompleteLayerUpload API is called once for each new image layer to verify that the upload is complete.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    @Sendable
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CompleteLayerUploadResponse {
        return try await self.client.execute(
            operation: "CompleteLayerUpload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a repository in a public registry. For more information, see Amazon ECR repositories in the Amazon Elastic Container Registry User Guide.
    @Sendable
    public func createRepository(_ input: CreateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRepositoryResponse {
        return try await self.client.execute(
            operation: "CreateRepository", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a repository in a public registry. If the repository contains images, you must either manually delete all images in the repository or use the force option. This option deletes all images on your behalf before deleting the repository.
    @Sendable
    public func deleteRepository(_ input: DeleteRepositoryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRepositoryResponse {
        return try await self.client.execute(
            operation: "DeleteRepository", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the repository policy that's associated with the specified repository.
    @Sendable
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRepositoryPolicyResponse {
        return try await self.client.execute(
            operation: "DeleteRepositoryPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the image tag details for a repository in a public registry.
    @Sendable
    public func describeImageTags(_ input: DescribeImageTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeImageTagsResponse {
        return try await self.client.execute(
            operation: "DescribeImageTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns metadata that's related to the images in a repository in a public registry.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size. Therefore, it might return a larger image size than the image sizes that are returned by DescribeImages.
    @Sendable
    public func describeImages(_ input: DescribeImagesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeImagesResponse {
        return try await self.client.execute(
            operation: "DescribeImages", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns details for a public registry.
    @Sendable
    public func describeRegistries(_ input: DescribeRegistriesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeRegistriesResponse {
        return try await self.client.execute(
            operation: "DescribeRegistries", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes repositories that are in a public registry.
    @Sendable
    public func describeRepositories(_ input: DescribeRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeRepositoriesResponse {
        return try await self.client.execute(
            operation: "DescribeRepositories", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves an authorization token. An authorization token represents your IAM authentication credentials. You can use it to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. This API requires the ecr-public:GetAuthorizationToken and sts:GetServiceBearerToken permissions.
    @Sendable
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAuthorizationTokenResponse {
        return try await self.client.execute(
            operation: "GetAuthorizationToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves catalog metadata for a public registry.
    @Sendable
    public func getRegistryCatalogData(_ input: GetRegistryCatalogDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRegistryCatalogDataResponse {
        return try await self.client.execute(
            operation: "GetRegistryCatalogData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve catalog metadata for a repository in a public registry. This metadata is displayed publicly in the Amazon ECR Public Gallery.
    @Sendable
    public func getRepositoryCatalogData(_ input: GetRepositoryCatalogDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRepositoryCatalogDataResponse {
        return try await self.client.execute(
            operation: "GetRepositoryCatalogData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the repository policy for the specified repository.
    @Sendable
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRepositoryPolicyResponse {
        return try await self.client.execute(
            operation: "GetRepositoryPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Notifies Amazon ECR that you intend to upload an image layer. When an image is pushed, the InitiateLayerUpload API is called once for each image layer that hasn't already been uploaded. Whether an image layer uploads is determined by the BatchCheckLayerAvailability API action.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    @Sendable
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InitiateLayerUploadResponse {
        return try await self.client.execute(
            operation: "InitiateLayerUpload", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List the tags for an Amazon ECR Public resource.
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

    /// Creates or updates the image manifest and tags that are associated with an image. When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags that are associated with the image.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    @Sendable
    public func putImage(_ input: PutImageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutImageResponse {
        return try await self.client.execute(
            operation: "PutImage", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create or update the catalog data for a public registry.
    @Sendable
    public func putRegistryCatalogData(_ input: PutRegistryCatalogDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutRegistryCatalogDataResponse {
        return try await self.client.execute(
            operation: "PutRegistryCatalogData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates the catalog data for a repository in a public registry.
    @Sendable
    public func putRepositoryCatalogData(_ input: PutRepositoryCatalogDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutRepositoryCatalogDataResponse {
        return try await self.client.execute(
            operation: "PutRepositoryCatalogData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Applies a repository policy to the specified public repository to control access permissions. For more information, see Amazon ECR Repository Policies in the Amazon Elastic Container Registry User Guide.
    @Sendable
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SetRepositoryPolicyResponse {
        return try await self.client.execute(
            operation: "SetRepositoryPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource aren't specified in the request parameters, they aren't changed. When a resource is deleted, the tags associated with that resource are also deleted.
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

    /// Deletes specified tags from a resource.
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

    /// Uploads an image layer part to Amazon ECR. When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (about 20MB). The UploadLayerPart API is called once for each new image layer part.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    @Sendable
    public func uploadLayerPart(_ input: UploadLayerPartRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UploadLayerPartResponse {
        return try await self.client.execute(
            operation: "UploadLayerPart", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ECRPublic {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ECRPublic, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ECRPublic {
    /// Returns the image tag details for a repository in a public registry.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeImageTagsPaginator(
        _ input: DescribeImageTagsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeImageTagsRequest, DescribeImageTagsResponse> {
        return .init(
            input: input,
            command: self.describeImageTags,
            inputKey: \DescribeImageTagsRequest.nextToken,
            outputKey: \DescribeImageTagsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns metadata that's related to the images in a repository in a public registry.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size. Therefore, it might return a larger image size than the image sizes that are returned by DescribeImages.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeImagesPaginator(
        _ input: DescribeImagesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeImagesRequest, DescribeImagesResponse> {
        return .init(
            input: input,
            command: self.describeImages,
            inputKey: \DescribeImagesRequest.nextToken,
            outputKey: \DescribeImagesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns details for a public registry.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeRegistriesPaginator(
        _ input: DescribeRegistriesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeRegistriesRequest, DescribeRegistriesResponse> {
        return .init(
            input: input,
            command: self.describeRegistries,
            inputKey: \DescribeRegistriesRequest.nextToken,
            outputKey: \DescribeRegistriesResponse.nextToken,
            logger: logger
        )
    }

    /// Describes repositories that are in a public registry.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeRepositoriesPaginator(
        _ input: DescribeRepositoriesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeRepositoriesRequest, DescribeRepositoriesResponse> {
        return .init(
            input: input,
            command: self.describeRepositories,
            inputKey: \DescribeRepositoriesRequest.nextToken,
            outputKey: \DescribeRepositoriesResponse.nextToken,
            logger: logger
        )
    }
}

extension ECRPublic.DescribeImageTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECRPublic.DescribeImageTagsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )
    }
}

extension ECRPublic.DescribeImagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECRPublic.DescribeImagesRequest {
        return .init(
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )
    }
}

extension ECRPublic.DescribeRegistriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECRPublic.DescribeRegistriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ECRPublic.DescribeRepositoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECRPublic.DescribeRepositoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryNames: self.repositoryNames
        )
    }
}
