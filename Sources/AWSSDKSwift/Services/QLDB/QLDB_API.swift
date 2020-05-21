//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS QLDB service.

The control plane for Amazon QLDB
*/
public struct QLDB {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the QLDB client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "qldb",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-02",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [QLDBErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be ACTIVE. You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.
    public func cancelJournalKinesisStream(_ input: CancelJournalKinesisStreamRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelJournalKinesisStreamResponse> {
        return client.send(operation: "CancelJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Creates a new ledger in your AWS account.
    public func createLedger(_ input: CreateLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLedgerResponse> {
        return client.send(operation: "CreateLedger", path: "/ledgers", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.
    @discardableResult public func deleteLedger(_ input: DeleteLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteLedger", path: "/ledgers/{name}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of your original stream creation request.
    public func describeJournalKinesisStream(_ input: DescribeJournalKinesisStreamRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalKinesisStreamResponse> {
        return client.send(operation: "DescribeJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
    public func describeJournalS3Export(_ input: DescribeJournalS3ExportRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalS3ExportResponse> {
        return client.send(operation: "DescribeJournalS3Export", path: "/ledgers/{name}/journal-s3-exports/{exportId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about a ledger, including its state and when it was created.
    public func describeLedger(_ input: DescribeLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLedgerResponse> {
        return client.send(operation: "DescribeLedger", path: "/ledgers/{name}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
    public func exportJournalToS3(_ input: ExportJournalToS3Request, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportJournalToS3Response> {
        return client.send(operation: "ExportJournalToS3", path: "/ledgers/{name}/journal-s3-exports", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a journal block object at a specified address in a ledger. Also returns a proof of the specified block for verification if DigestTipAddress is provided. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
    public func getBlock(_ input: GetBlockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBlockResponse> {
        return client.send(operation: "GetBlock", path: "/ledgers/{name}/block", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
    public func getDigest(_ input: GetDigestRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDigestResponse> {
        return client.send(operation: "GetDigest", path: "/ledgers/{name}/digest", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
    public func getRevision(_ input: GetRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRevisionResponse> {
        return client.send(operation: "GetRevision", path: "/ledgers/{name}/revision", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    public func listJournalKinesisStreamsForLedger(_ input: ListJournalKinesisStreamsForLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalKinesisStreamsForLedgerResponse> {
        return client.send(operation: "ListJournalKinesisStreamsForLedger", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3Exports(_ input: ListJournalS3ExportsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsResponse> {
        return client.send(operation: "ListJournalS3Exports", path: "/journal-s3-exports", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3ExportsForLedger(_ input: ListJournalS3ExportsForLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsForLedgerResponse> {
        return client.send(operation: "ListJournalS3ExportsForLedger", path: "/ledgers/{name}/journal-s3-exports", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    public func listLedgers(_ input: ListLedgersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLedgersResponse> {
        return client.send(operation: "ListLedgers", path: "/ledgers", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns all tags for a specified Amazon QLDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Creates a stream for a given Amazon QLDB ledger that delivers the journal data to a specified Amazon Kinesis Data Streams resource. The stream captures every document revision that is committed to your journal and sends it to the Kinesis data stream.
    public func streamJournalToKinesis(_ input: StreamJournalToKinesisRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StreamJournalToKinesisResponse> {
        return client.send(operation: "StreamJournalToKinesis", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates properties on a ledger.
    public func updateLedger(_ input: UpdateLedgerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLedgerResponse> {
        return client.send(operation: "UpdateLedger", path: "/ledgers/{name}", httpMethod: "PATCH", input: input, on: eventLoop)
    }
}
