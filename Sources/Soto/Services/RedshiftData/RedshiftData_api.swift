//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

/// Service object for interacting with AWS RedshiftData service.
///
/// You can use the Amazon Redshift Data API to run queries on Amazon Redshift tables. You can run SQL statements, which are committed if the statement succeeds.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
public struct RedshiftData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RedshiftData client
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
            amzTarget: "RedshiftData",
            service: "redshift-data",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-12-20",
            endpoint: endpoint,
            errorType: RedshiftDataErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Runs one or more SQL statements, which can be data manipulation language (DML) or data definition language (DDL).  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func batchExecuteStatement(_ input: BatchExecuteStatementInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchExecuteStatementOutput> {
        return self.client.execute(operation: "BatchExecuteStatement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a running query. To be canceled, a query must be running.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func cancelStatement(_ input: CancelStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelStatementResponse> {
        return self.client.execute(operation: "CancelStatement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information includes when the query started, when it finished, the query status, the number of rows returned, and the SQL statement.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func describeStatement(_ input: DescribeStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatementResponse> {
        return self.client.execute(operation: "DescribeStatement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the detailed information about a table from metadata in the cluster. The information includes its columns.  A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func describeTable(_ input: DescribeTableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableResponse> {
        return self.client.execute(operation: "DescribeTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs an SQL statement, which can be data manipulation language (DML) or data definition language (DDL). This statement must be a single SQL statement.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func executeStatement(_ input: ExecuteStatementInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteStatementOutput> {
        return self.client.execute(operation: "ExecuteStatement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Fetches the temporarily cached result of an SQL statement.  A token is returned to page through the statement results.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func getStatementResult(_ input: GetStatementResultRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStatementResultResponse> {
        return self.client.execute(operation: "GetStatementResult", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the databases in a cluster.  A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func listDatabases(_ input: ListDatabasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatabasesResponse> {
        return self.client.execute(operation: "ListDatabases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the schemas in a database.  A token is returned to page through the schema list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func listSchemas(_ input: ListSchemasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return self.client.execute(operation: "ListSchemas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List of SQL statements. By default, only finished statements are shown.  A token is returned to page through the statement list.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func listStatements(_ input: ListStatementsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStatementsResponse> {
        return self.client.execute(operation: "ListStatements", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then  all tables in the database are returned. A token is returned to page through the table list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    /// When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    /// Also, permission to call the redshift:GetClusterCredentials operation is required.
    /// When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    public func listTables(_ input: ListTablesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTablesResponse> {
        return self.client.execute(operation: "ListTables", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension RedshiftData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RedshiftData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension RedshiftData {
    ///  Describes the detailed information about a table from metadata in the cluster. The information includes its columns.  A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    ///  When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    ///  Also, permission to call the redshift:GetClusterCredentials operation is required.
    ///  When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeTablePaginator<Result>(
        _ input: DescribeTableRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeTableResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.describeTable,
            inputKey: \DescribeTableRequest.nextToken,
            outputKey: \DescribeTableResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeTablePaginator(
        _ input: DescribeTableRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeTableResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.describeTable,
            inputKey: \DescribeTableRequest.nextToken,
            outputKey: \DescribeTableResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Fetches the temporarily cached result of an SQL statement.  A token is returned to page through the statement results.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getStatementResultPaginator<Result>(
        _ input: GetStatementResultRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetStatementResultResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getStatementResult,
            inputKey: \GetStatementResultRequest.nextToken,
            outputKey: \GetStatementResultResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getStatementResultPaginator(
        _ input: GetStatementResultRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetStatementResultResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getStatementResult,
            inputKey: \GetStatementResultRequest.nextToken,
            outputKey: \GetStatementResultResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the databases in a cluster.  A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    ///  When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    ///  Also, permission to call the redshift:GetClusterCredentials operation is required.
    ///  When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDatabasesPaginator<Result>(
        _ input: ListDatabasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDatabasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the schemas in a database.  A token is returned to page through the schema list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    ///  When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    ///  Also, permission to call the redshift:GetClusterCredentials operation is required.
    ///  When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemasPaginator<Result>(
        _ input: ListSchemasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List of SQL statements. By default, only finished statements are shown.  A token is returned to page through the statement list.  For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listStatementsPaginator<Result>(
        _ input: ListStatementsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListStatementsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listStatements,
            inputKey: \ListStatementsRequest.nextToken,
            outputKey: \ListStatementsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listStatementsPaginator(
        _ input: ListStatementsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListStatementsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listStatements,
            inputKey: \ListStatementsRequest.nextToken,
            outputKey: \ListStatementsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then  all tables in the database are returned. A token is returned to page through the table list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    ///  When connecting to a serverless workgroup, specify the Amazon Resource Name (ARN) of the secret and the database name.    Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    ///  Also, permission to call the redshift:GetClusterCredentials operation is required.
    ///  When connecting to a serverless workgroup, specify the workgroup name and database name. Also, permission to call the redshift-serverless:GetCredentials operation is required.    For more information about the Amazon Redshift Data API and CLI usage examples, see  Using the Amazon Redshift Data API in the  Amazon Redshift Management Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTablesPaginator<Result>(
        _ input: ListTablesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTablesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTablesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RedshiftData.DescribeTableRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.DescribeTableRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schema: self.schema,
            secretArn: self.secretArn,
            table: self.table,
            workgroupName: self.workgroupName
        )
    }
}

extension RedshiftData.GetStatementResultRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.GetStatementResultRequest {
        return .init(
            id: self.id,
            nextToken: token
        )
    }
}

extension RedshiftData.ListDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.ListDatabasesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            secretArn: self.secretArn,
            workgroupName: self.workgroupName
        )
    }
}

extension RedshiftData.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.ListSchemasRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            workgroupName: self.workgroupName
        )
    }
}

extension RedshiftData.ListStatementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.ListStatementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            roleLevel: self.roleLevel,
            statementName: self.statementName,
            status: self.status
        )
    }
}

extension RedshiftData.ListTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftData.ListTablesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            tablePattern: self.tablePattern,
            workgroupName: self.workgroupName
        )
    }
}
