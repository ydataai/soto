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

/// Service object for interacting with AWS AmplifyBackend service.
///
/// AWS Amplify Admin API
public struct AmplifyBackend: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AmplifyBackend client
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
            service: "amplifybackend",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-11",
            endpoint: endpoint,
            errorType: AmplifyBackendErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// This operation clones an existing backend.
    @Sendable
    public func cloneBackend(_ input: CloneBackendRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CloneBackendResponse {
        return try await self.client.execute(
            operation: "CloneBackend", 
            path: "/backend/{AppId}/environments/{BackendEnvironmentName}/clone", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.
    @Sendable
    public func createBackend(_ input: CreateBackendRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBackendResponse {
        return try await self.client.execute(
            operation: "CreateBackend", 
            path: "/backend", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new backend API resource.
    @Sendable
    public func createBackendAPI(_ input: CreateBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBackendAPIResponse {
        return try await self.client.execute(
            operation: "CreateBackendAPI", 
            path: "/backend/{AppId}/api", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new backend authentication resource.
    @Sendable
    public func createBackendAuth(_ input: CreateBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBackendAuthResponse {
        return try await self.client.execute(
            operation: "CreateBackendAuth", 
            path: "/backend/{AppId}/auth", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a config object for a backend.
    @Sendable
    public func createBackendConfig(_ input: CreateBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBackendConfigResponse {
        return try await self.client.execute(
            operation: "CreateBackendConfig", 
            path: "/backend/{AppId}/config", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a backend storage resource.
    @Sendable
    public func createBackendStorage(_ input: CreateBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBackendStorageResponse {
        return try await self.client.execute(
            operation: "CreateBackendStorage", 
            path: "/backend/{AppId}/storage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.
    @Sendable
    public func createToken(_ input: CreateTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTokenResponse {
        return try await self.client.execute(
            operation: "CreateToken", 
            path: "/backend/{AppId}/challenge", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes an existing environment from your Amplify project.
    @Sendable
    public func deleteBackend(_ input: DeleteBackendRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteBackendResponse {
        return try await self.client.execute(
            operation: "DeleteBackend", 
            path: "/backend/{AppId}/environments/{BackendEnvironmentName}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing backend API resource.
    @Sendable
    public func deleteBackendAPI(_ input: DeleteBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteBackendAPIResponse {
        return try await self.client.execute(
            operation: "DeleteBackendAPI", 
            path: "/backend/{AppId}/api/{BackendEnvironmentName}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an existing backend authentication resource.
    @Sendable
    public func deleteBackendAuth(_ input: DeleteBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteBackendAuthResponse {
        return try await self.client.execute(
            operation: "DeleteBackendAuth", 
            path: "/backend/{AppId}/auth/{BackendEnvironmentName}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified backend storage resource.
    @Sendable
    public func deleteBackendStorage(_ input: DeleteBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteBackendStorageResponse {
        return try await self.client.execute(
            operation: "DeleteBackendStorage", 
            path: "/backend/{AppId}/storage/{BackendEnvironmentName}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the challenge token based on the given appId and sessionId.
    @Sendable
    public func deleteToken(_ input: DeleteTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTokenResponse {
        return try await self.client.execute(
            operation: "DeleteToken", 
            path: "/backend/{AppId}/challenge/{SessionId}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates a model schema for an existing backend API resource.
    @Sendable
    public func generateBackendAPIModels(_ input: GenerateBackendAPIModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GenerateBackendAPIModelsResponse {
        return try await self.client.execute(
            operation: "GenerateBackendAPIModels", 
            path: "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides project-level details for your Amplify UI project.
    @Sendable
    public func getBackend(_ input: GetBackendRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendResponse {
        return try await self.client.execute(
            operation: "GetBackend", 
            path: "/backend/{AppId}/details", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details for a backend API.
    @Sendable
    public func getBackendAPI(_ input: GetBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendAPIResponse {
        return try await self.client.execute(
            operation: "GetBackendAPI", 
            path: "/backend/{AppId}/api/{BackendEnvironmentName}/details", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a model introspection schema for an existing backend API resource.
    @Sendable
    public func getBackendAPIModels(_ input: GetBackendAPIModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendAPIModelsResponse {
        return try await self.client.execute(
            operation: "GetBackendAPIModels", 
            path: "/backend/{AppId}/api/{BackendEnvironmentName}/getModels", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a backend auth details.
    @Sendable
    public func getBackendAuth(_ input: GetBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendAuthResponse {
        return try await self.client.execute(
            operation: "GetBackendAuth", 
            path: "/backend/{AppId}/auth/{BackendEnvironmentName}/details", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about a specific job.
    @Sendable
    public func getBackendJob(_ input: GetBackendJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendJobResponse {
        return try await self.client.execute(
            operation: "GetBackendJob", 
            path: "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets details for a backend storage resource.
    @Sendable
    public func getBackendStorage(_ input: GetBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBackendStorageResponse {
        return try await self.client.execute(
            operation: "GetBackendStorage", 
            path: "/backend/{AppId}/storage/{BackendEnvironmentName}/details", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the challenge token based on the given appId and sessionId.
    @Sendable
    public func getToken(_ input: GetTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTokenResponse {
        return try await self.client.execute(
            operation: "GetToken", 
            path: "/backend/{AppId}/challenge/{SessionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports an existing backend authentication resource.
    @Sendable
    public func importBackendAuth(_ input: ImportBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportBackendAuthResponse {
        return try await self.client.execute(
            operation: "ImportBackendAuth", 
            path: "/backend/{AppId}/auth/{BackendEnvironmentName}/import", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports an existing backend storage resource.
    @Sendable
    public func importBackendStorage(_ input: ImportBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportBackendStorageResponse {
        return try await self.client.execute(
            operation: "ImportBackendStorage", 
            path: "/backend/{AppId}/storage/{BackendEnvironmentName}/import", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the jobs for the backend of an Amplify app.
    @Sendable
    public func listBackendJobs(_ input: ListBackendJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListBackendJobsResponse {
        return try await self.client.execute(
            operation: "ListBackendJobs", 
            path: "/backend/{AppId}/job/{BackendEnvironmentName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// The list of S3 buckets in your account.
    @Sendable
    public func listS3Buckets(_ input: ListS3BucketsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListS3BucketsResponse {
        return try await self.client.execute(
            operation: "ListS3Buckets", 
            path: "/s3Buckets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes all backend environments from your Amplify project.
    @Sendable
    public func removeAllBackends(_ input: RemoveAllBackendsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveAllBackendsResponse {
        return try await self.client.execute(
            operation: "RemoveAllBackends", 
            path: "/backend/{AppId}/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the AWS resources required to access the Amplify Admin UI.
    @Sendable
    public func removeBackendConfig(_ input: RemoveBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RemoveBackendConfigResponse {
        return try await self.client.execute(
            operation: "RemoveBackendConfig", 
            path: "/backend/{AppId}/config/remove", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing backend API resource.
    @Sendable
    public func updateBackendAPI(_ input: UpdateBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateBackendAPIResponse {
        return try await self.client.execute(
            operation: "UpdateBackendAPI", 
            path: "/backend/{AppId}/api/{BackendEnvironmentName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing backend authentication resource.
    @Sendable
    public func updateBackendAuth(_ input: UpdateBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateBackendAuthResponse {
        return try await self.client.execute(
            operation: "UpdateBackendAuth", 
            path: "/backend/{AppId}/auth/{BackendEnvironmentName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the AWS resources required to access the Amplify Admin UI.
    @Sendable
    public func updateBackendConfig(_ input: UpdateBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateBackendConfigResponse {
        return try await self.client.execute(
            operation: "UpdateBackendConfig", 
            path: "/backend/{AppId}/config/update", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a specific job.
    @Sendable
    public func updateBackendJob(_ input: UpdateBackendJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateBackendJobResponse {
        return try await self.client.execute(
            operation: "UpdateBackendJob", 
            path: "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing backend storage resource.
    @Sendable
    public func updateBackendStorage(_ input: UpdateBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateBackendStorageResponse {
        return try await self.client.execute(
            operation: "UpdateBackendStorage", 
            path: "/backend/{AppId}/storage/{BackendEnvironmentName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension AmplifyBackend {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AmplifyBackend, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
