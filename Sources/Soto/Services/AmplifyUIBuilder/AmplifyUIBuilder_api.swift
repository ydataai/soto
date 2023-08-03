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

/// Service object for interacting with AWS AmplifyUIBuilder service.
///
/// The Amplify UI Builder API provides a programmatic interface for creating and configuring user interface (UI) component libraries and themes for use in your Amplify applications. You can then connect these UI components to an application's backend Amazon Web Services resources. You can also use the Amplify Studio visual designer to create UI components and model data for an app. For more information, see Introduction in the Amplify Docs. The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation for client app development. For more information, see the Amplify Framework. For more information about deploying an Amplify application to Amazon Web Services, see the Amplify User Guide.
public struct AmplifyUIBuilder: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AmplifyUIBuilder client
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
            serviceName: "AmplifyUIBuilder",
            serviceIdentifier: "amplifyuibuilder",
            serviceProtocol: .restjson,
            apiVersion: "2021-08-11",
            endpoint: endpoint,
            errorType: AmplifyUIBuilderErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a new component for an Amplify app.
    @Sendable
    public func createComponent(_ input: CreateComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateComponentResponse {
        return try await self.client.execute(
            operation: "CreateComponent", 
            path: "/app/{appId}/environment/{environmentName}/components", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new form for an Amplify app.
    @Sendable
    public func createForm(_ input: CreateFormRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFormResponse {
        return try await self.client.execute(
            operation: "CreateForm", 
            path: "/app/{appId}/environment/{environmentName}/forms", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a theme to apply to the components in an Amplify app.
    @Sendable
    public func createTheme(_ input: CreateThemeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateThemeResponse {
        return try await self.client.execute(
            operation: "CreateTheme", 
            path: "/app/{appId}/environment/{environmentName}/themes", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a component from an Amplify app.
    @Sendable
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteComponent", 
            path: "/app/{appId}/environment/{environmentName}/components/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a form from an Amplify app.
    @Sendable
    public func deleteForm(_ input: DeleteFormRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteForm", 
            path: "/app/{appId}/environment/{environmentName}/forms/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a theme from an Amplify app.
    @Sendable
    public func deleteTheme(_ input: DeleteThemeRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteTheme", 
            path: "/app/{appId}/environment/{environmentName}/themes/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exchanges an access code for a token.
    @Sendable
    public func exchangeCodeForToken(_ input: ExchangeCodeForTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExchangeCodeForTokenResponse {
        return try await self.client.execute(
            operation: "ExchangeCodeForToken", 
            path: "/tokens/{provider}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports component configurations to code that is ready to integrate into an Amplify app.
    @Sendable
    public func exportComponents(_ input: ExportComponentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportComponentsResponse {
        return try await self.client.execute(
            operation: "ExportComponents", 
            path: "/export/app/{appId}/environment/{environmentName}/components", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports form configurations to code that is ready to integrate into an Amplify app.
    @Sendable
    public func exportForms(_ input: ExportFormsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportFormsResponse {
        return try await self.client.execute(
            operation: "ExportForms", 
            path: "/export/app/{appId}/environment/{environmentName}/forms", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports theme configurations to code that is ready to integrate into an Amplify app.
    @Sendable
    public func exportThemes(_ input: ExportThemesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportThemesResponse {
        return try await self.client.execute(
            operation: "ExportThemes", 
            path: "/export/app/{appId}/environment/{environmentName}/themes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an existing component for an Amplify app.
    @Sendable
    public func getComponent(_ input: GetComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetComponentResponse {
        return try await self.client.execute(
            operation: "GetComponent", 
            path: "/app/{appId}/environment/{environmentName}/components/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an existing form for an Amplify app.
    @Sendable
    public func getForm(_ input: GetFormRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFormResponse {
        return try await self.client.execute(
            operation: "GetForm", 
            path: "/app/{appId}/environment/{environmentName}/forms/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns existing metadata for an Amplify app.
    @Sendable
    public func getMetadata(_ input: GetMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMetadataResponse {
        return try await self.client.execute(
            operation: "GetMetadata", 
            path: "/app/{appId}/environment/{environmentName}/metadata", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an existing theme for an Amplify app.
    @Sendable
    public func getTheme(_ input: GetThemeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetThemeResponse {
        return try await self.client.execute(
            operation: "GetTheme", 
            path: "/app/{appId}/environment/{environmentName}/themes/{id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of components for a specified Amplify app and backend environment.
    @Sendable
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListComponentsResponse {
        return try await self.client.execute(
            operation: "ListComponents", 
            path: "/app/{appId}/environment/{environmentName}/components", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of forms for a specified Amplify app and backend environment.
    @Sendable
    public func listForms(_ input: ListFormsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFormsResponse {
        return try await self.client.execute(
            operation: "ListForms", 
            path: "/app/{appId}/environment/{environmentName}/forms", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of themes for a specified Amplify app and backend environment.
    @Sendable
    public func listThemes(_ input: ListThemesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListThemesResponse {
        return try await self.client.execute(
            operation: "ListThemes", 
            path: "/app/{appId}/environment/{environmentName}/themes", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stores the metadata information about a feature on a form.
    @Sendable
    public func putMetadataFlag(_ input: PutMetadataFlagRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "PutMetadataFlag", 
            path: "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Refreshes a previously issued access token that might have expired.
    @Sendable
    public func refreshToken(_ input: RefreshTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RefreshTokenResponse {
        return try await self.client.execute(
            operation: "RefreshToken", 
            path: "/tokens/{provider}/refresh", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing component.
    @Sendable
    public func updateComponent(_ input: UpdateComponentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateComponentResponse {
        return try await self.client.execute(
            operation: "UpdateComponent", 
            path: "/app/{appId}/environment/{environmentName}/components/{id}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing form.
    @Sendable
    public func updateForm(_ input: UpdateFormRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateFormResponse {
        return try await self.client.execute(
            operation: "UpdateForm", 
            path: "/app/{appId}/environment/{environmentName}/forms/{id}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing theme.
    @Sendable
    public func updateTheme(_ input: UpdateThemeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateThemeResponse {
        return try await self.client.execute(
            operation: "UpdateTheme", 
            path: "/app/{appId}/environment/{environmentName}/themes/{id}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension AmplifyUIBuilder {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AmplifyUIBuilder, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AmplifyUIBuilder {
    /// Exports component configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func exportComponentsPaginator(
        _ input: ExportComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ExportComponentsRequest, ExportComponentsResponse> {
        return .init(
            input: input,
            command: self.exportComponents,
            inputKey: \ExportComponentsRequest.nextToken,
            outputKey: \ExportComponentsResponse.nextToken,
            logger: logger
        )
    }

    /// Exports form configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func exportFormsPaginator(
        _ input: ExportFormsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ExportFormsRequest, ExportFormsResponse> {
        return .init(
            input: input,
            command: self.exportForms,
            inputKey: \ExportFormsRequest.nextToken,
            outputKey: \ExportFormsResponse.nextToken,
            logger: logger
        )
    }

    /// Exports theme configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func exportThemesPaginator(
        _ input: ExportThemesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ExportThemesRequest, ExportThemesResponse> {
        return .init(
            input: input,
            command: self.exportThemes,
            inputKey: \ExportThemesRequest.nextToken,
            outputKey: \ExportThemesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of components for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: self.listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of forms for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFormsPaginator(
        _ input: ListFormsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFormsRequest, ListFormsResponse> {
        return .init(
            input: input,
            command: self.listForms,
            inputKey: \ListFormsRequest.nextToken,
            outputKey: \ListFormsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of themes for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listThemesPaginator(
        _ input: ListThemesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListThemesRequest, ListThemesResponse> {
        return .init(
            input: input,
            command: self.listThemes,
            inputKey: \ListThemesRequest.nextToken,
            outputKey: \ListThemesResponse.nextToken,
            logger: logger
        )
    }
}

extension AmplifyUIBuilder.ExportComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ExportComponentsRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            nextToken: token
        )
    }
}

extension AmplifyUIBuilder.ExportFormsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ExportFormsRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            nextToken: token
        )
    }
}

extension AmplifyUIBuilder.ExportThemesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ExportThemesRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            nextToken: token
        )
    }
}

extension AmplifyUIBuilder.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ListComponentsRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AmplifyUIBuilder.ListFormsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ListFormsRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AmplifyUIBuilder.ListThemesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AmplifyUIBuilder.ListThemesRequest {
        return .init(
            appId: self.appId,
            environmentName: self.environmentName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
