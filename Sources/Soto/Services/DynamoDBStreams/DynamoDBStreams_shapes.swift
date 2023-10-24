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

#if os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension DynamoDBStreams {
    // MARK: Enums

    public enum KeyType: String, CustomStringConvertible, Codable, Sendable {
        case hash = "HASH"
        case range = "RANGE"
        public var description: String { return self.rawValue }
    }

    public enum OperationType: String, CustomStringConvertible, Codable, Sendable {
        case insert = "INSERT"
        case modify = "MODIFY"
        case remove = "REMOVE"
        public var description: String { return self.rawValue }
    }

    public enum ShardIteratorType: String, CustomStringConvertible, Codable, Sendable {
        case afterSequenceNumber = "AFTER_SEQUENCE_NUMBER"
        case atSequenceNumber = "AT_SEQUENCE_NUMBER"
        case latest = "LATEST"
        case trimHorizon = "TRIM_HORIZON"
        public var description: String { return self.rawValue }
    }

    public enum StreamStatus: String, CustomStringConvertible, Codable, Sendable {
        case disabled = "DISABLED"
        case disabling = "DISABLING"
        case enabled = "ENABLED"
        case enabling = "ENABLING"
        public var description: String { return self.rawValue }
    }

    public enum StreamViewType: String, CustomStringConvertible, Codable, Sendable {
        case keysOnly = "KEYS_ONLY"
        case newAndOldImages = "NEW_AND_OLD_IMAGES"
        case newImage = "NEW_IMAGE"
        case oldImage = "OLD_IMAGE"
        public var description: String { return self.rawValue }
    }

    public enum AttributeValue: AWSDecodableShape, Sendable {
        /// An attribute of type Binary.  For example:  "B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"
        case b(AWSBase64Data)
        /// An attribute of type Boolean.  For example:  "BOOL": true
        case bool(Bool)
        /// An attribute of type Binary Set.  For example:  "BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]
        case bs([AWSBase64Data])
        /// An attribute of type List.  For example:  "L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}]
        case l([AttributeValue])
        /// An attribute of type Map.  For example:  "M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}
        case m([String: AttributeValue])
        /// An attribute of type Number. For example:  "N": "123.45"  Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
        case n(String)
        /// An attribute of type Number Set.  For example:  "NS": ["42.2", "-19", "7.5", "3.14"]  Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
        case ns([String])
        /// An attribute of type Null.  For example:  "NULL": true
        case null(Bool)
        /// An attribute of type  String. For example:  "S": "Hello"
        case s(String)
        /// An attribute of type String Set.  For example:  "SS": ["Giraffe", "Hippo" ,"Zebra"]
        case ss([String])

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            guard container.allKeys.count == 1, let key = container.allKeys.first else {
                let context = DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Expected exactly one key, but got \(container.allKeys.count)"
                )
                throw DecodingError.dataCorrupted(context)
            }
            switch key {
            case .b:
                let value = try container.decode(AWSBase64Data.self, forKey: .b)
                self = .b(value)
            case .bool:
                let value = try container.decode(Bool.self, forKey: .bool)
                self = .bool(value)
            case .bs:
                let value = try container.decode([AWSBase64Data].self, forKey: .bs)
                self = .bs(value)
            case .l:
                let value = try container.decode([AttributeValue].self, forKey: .l)
                self = .l(value)
            case .m:
                let value = try container.decode([String: AttributeValue].self, forKey: .m)
                self = .m(value)
            case .n:
                let value = try container.decode(String.self, forKey: .n)
                self = .n(value)
            case .ns:
                let value = try container.decode([String].self, forKey: .ns)
                self = .ns(value)
            case .null:
                let value = try container.decode(Bool.self, forKey: .null)
                self = .null(value)
            case .s:
                let value = try container.decode(String.self, forKey: .s)
                self = .s(value)
            case .ss:
                let value = try container.decode([String].self, forKey: .ss)
                self = .ss(value)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case b = "B"
            case bool = "BOOL"
            case bs = "BS"
            case l = "L"
            case m = "M"
            case n = "N"
            case ns = "NS"
            case null = "NULL"
            case s = "S"
            case ss = "SS"
        }
    }

    // MARK: Shapes

    public struct DescribeStreamInput: AWSEncodableShape {
        /// The shard ID of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedShardId in the previous operation.
        public let exclusiveStartShardId: String?
        /// The maximum number of shard objects to return. The upper limit is 100.
        public let limit: Int?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String

        public init(exclusiveStartShardId: String? = nil, limit: Int? = nil, streamArn: String) {
            self.exclusiveStartShardId = exclusiveStartShardId
            self.limit = limit
            self.streamArn = streamArn
        }

        public func validate(name: String) throws {
            try self.validate(self.exclusiveStartShardId, name: "exclusiveStartShardId", parent: name, max: 65)
            try self.validate(self.exclusiveStartShardId, name: "exclusiveStartShardId", parent: name, min: 28)
            try self.validate(self.limit, name: "limit", parent: name, min: 1)
            try self.validate(self.streamArn, name: "streamArn", parent: name, max: 1024)
            try self.validate(self.streamArn, name: "streamArn", parent: name, min: 37)
        }

        private enum CodingKeys: String, CodingKey {
            case exclusiveStartShardId = "ExclusiveStartShardId"
            case limit = "Limit"
            case streamArn = "StreamArn"
        }
    }

    public struct DescribeStreamOutput: AWSDecodableShape {
        /// A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.
        public let streamDescription: StreamDescription?

        public init(streamDescription: StreamDescription? = nil) {
            self.streamDescription = streamDescription
        }

        private enum CodingKeys: String, CodingKey {
            case streamDescription = "StreamDescription"
        }
    }

    public struct GetRecordsInput: AWSEncodableShape {
        /// The maximum number of records to return from the shard. The upper limit is 1000.
        public let limit: Int?
        /// A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
        public let shardIterator: String

        public init(limit: Int? = nil, shardIterator: String) {
            self.limit = limit
            self.shardIterator = shardIterator
        }

        public func validate(name: String) throws {
            try self.validate(self.limit, name: "limit", parent: name, min: 1)
            try self.validate(self.shardIterator, name: "shardIterator", parent: name, max: 2048)
            try self.validate(self.shardIterator, name: "shardIterator", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case shardIterator = "ShardIterator"
        }
    }

    public struct GetRecordsOutput: AWSDecodableShape {
        /// The next position in the shard from which to start sequentially reading stream records. If set to null, the shard has been closed and the requested iterator will not return any more data.
        public let nextShardIterator: String?
        /// The stream records from the shard, which were retrieved using the shard iterator.
        public let records: [Record]?

        public init(nextShardIterator: String? = nil, records: [Record]? = nil) {
            self.nextShardIterator = nextShardIterator
            self.records = records
        }

        private enum CodingKeys: String, CodingKey {
            case nextShardIterator = "NextShardIterator"
            case records = "Records"
        }
    }

    public struct GetShardIteratorInput: AWSEncodableShape {
        /// The sequence number of a stream record in the shard from which to start reading.
        public let sequenceNumber: String?
        /// The identifier of the shard. The iterator will be returned for this shard ID.
        public let shardId: String
        /// Determines how the shard iterator is used to start reading stream records from the shard:    AT_SEQUENCE_NUMBER - Start reading exactly from the position denoted by a specific sequence number.    AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number.    TRIM_HORIZON - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.    LATEST - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.
        public let shardIteratorType: ShardIteratorType
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String

        public init(sequenceNumber: String? = nil, shardId: String, shardIteratorType: ShardIteratorType, streamArn: String) {
            self.sequenceNumber = sequenceNumber
            self.shardId = shardId
            self.shardIteratorType = shardIteratorType
            self.streamArn = streamArn
        }

        public func validate(name: String) throws {
            try self.validate(self.sequenceNumber, name: "sequenceNumber", parent: name, max: 40)
            try self.validate(self.sequenceNumber, name: "sequenceNumber", parent: name, min: 21)
            try self.validate(self.shardId, name: "shardId", parent: name, max: 65)
            try self.validate(self.shardId, name: "shardId", parent: name, min: 28)
            try self.validate(self.streamArn, name: "streamArn", parent: name, max: 1024)
            try self.validate(self.streamArn, name: "streamArn", parent: name, min: 37)
        }

        private enum CodingKeys: String, CodingKey {
            case sequenceNumber = "SequenceNumber"
            case shardId = "ShardId"
            case shardIteratorType = "ShardIteratorType"
            case streamArn = "StreamArn"
        }
    }

    public struct GetShardIteratorOutput: AWSDecodableShape {
        /// The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
        public let shardIterator: String?

        public init(shardIterator: String? = nil) {
            self.shardIterator = shardIterator
        }

        private enum CodingKeys: String, CodingKey {
            case shardIterator = "ShardIterator"
        }
    }

    public struct Identity: AWSDecodableShape {
        /// A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".
        public let principalId: String?
        /// The type of the identity. For Time To Live, the type is "Service".
        public let type: String?

        public init(principalId: String? = nil, type: String? = nil) {
            self.principalId = principalId
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case principalId = "PrincipalId"
            case type = "Type"
        }
    }

    public struct KeySchemaElement: AWSDecodableShape {
        /// The name of a key attribute.
        public let attributeName: String
        /// The role that this key attribute will assume:    HASH - partition key    RANGE - sort key    The partition key of an item is also known as its hash attribute. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its range attribute. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
        public let keyType: KeyType

        public init(attributeName: String, keyType: KeyType) {
            self.attributeName = attributeName
            self.keyType = keyType
        }

        private enum CodingKeys: String, CodingKey {
            case attributeName = "AttributeName"
            case keyType = "KeyType"
        }
    }

    public struct ListStreamsInput: AWSEncodableShape {
        /// The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedStreamArn in the previous operation.
        public let exclusiveStartStreamArn: String?
        /// The maximum number of streams to return. The upper limit is 100.
        public let limit: Int?
        /// If this parameter is provided, then only the streams associated with this table name are returned.
        public let tableName: String?

        public init(exclusiveStartStreamArn: String? = nil, limit: Int? = nil, tableName: String? = nil) {
            self.exclusiveStartStreamArn = exclusiveStartStreamArn
            self.limit = limit
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try self.validate(self.exclusiveStartStreamArn, name: "exclusiveStartStreamArn", parent: name, max: 1024)
            try self.validate(self.exclusiveStartStreamArn, name: "exclusiveStartStreamArn", parent: name, min: 37)
            try self.validate(self.limit, name: "limit", parent: name, min: 1)
            try self.validate(self.tableName, name: "tableName", parent: name, max: 255)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "^[a-zA-Z0-9_.-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case exclusiveStartStreamArn = "ExclusiveStartStreamArn"
            case limit = "Limit"
            case tableName = "TableName"
        }
    }

    public struct ListStreamsOutput: AWSDecodableShape {
        /// The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedStreamArn is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If LastEvaluatedStreamArn is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedStreamArn is empty.
        public let lastEvaluatedStreamArn: String?
        /// A list of stream descriptors associated with the current account and endpoint.
        public let streams: [Stream]?

        public init(lastEvaluatedStreamArn: String? = nil, streams: [Stream]? = nil) {
            self.lastEvaluatedStreamArn = lastEvaluatedStreamArn
            self.streams = streams
        }

        private enum CodingKeys: String, CodingKey {
            case lastEvaluatedStreamArn = "LastEvaluatedStreamArn"
            case streams = "Streams"
        }
    }

    public struct Record: AWSDecodableShape {
        /// The region in which the GetRecords request was received.
        public let awsRegion: String?
        /// The main body of the stream record, containing all of the DynamoDB-specific fields.
        public let dynamodb: StreamRecord?
        /// A globally unique identifier for the event that was recorded in this stream record.
        public let eventID: String?
        /// The type of data modification that was performed on the DynamoDB table:    INSERT - a new item was added to the table.    MODIFY - one or more of an existing item's attributes were modified.    REMOVE - the item was deleted from the table
        public let eventName: OperationType?
        /// The AWS service from which the stream record originated.  For DynamoDB Streams, this is aws:dynamodb.
        public let eventSource: String?
        /// The version number of the stream record format.  This number is updated whenever the structure of Record is modified. Client applications must not assume that eventVersion will remain at a particular value, as this number is subject to change at any time. In general, eventVersion will only increase as the low-level DynamoDB Streams API evolves.
        public let eventVersion: String?
        /// Items that are deleted by the Time to Live process after expiration have the following fields:    Records[].userIdentity.type "Service"   Records[].userIdentity.principalId "dynamodb.amazonaws.com"
        public let userIdentity: Identity?

        public init(awsRegion: String? = nil, dynamodb: StreamRecord? = nil, eventID: String? = nil, eventName: OperationType? = nil, eventSource: String? = nil, eventVersion: String? = nil, userIdentity: Identity? = nil) {
            self.awsRegion = awsRegion
            self.dynamodb = dynamodb
            self.eventID = eventID
            self.eventName = eventName
            self.eventSource = eventSource
            self.eventVersion = eventVersion
            self.userIdentity = userIdentity
        }

        private enum CodingKeys: String, CodingKey {
            case awsRegion = "awsRegion"
            case dynamodb = "dynamodb"
            case eventID = "eventID"
            case eventName = "eventName"
            case eventSource = "eventSource"
            case eventVersion = "eventVersion"
            case userIdentity = "userIdentity"
        }
    }

    public struct SequenceNumberRange: AWSDecodableShape {
        /// The last sequence number for the stream records contained within a shard. String contains numeric characters only.
        public let endingSequenceNumber: String?
        /// The first sequence number for the stream records contained within a shard. String contains numeric characters only.
        public let startingSequenceNumber: String?

        public init(endingSequenceNumber: String? = nil, startingSequenceNumber: String? = nil) {
            self.endingSequenceNumber = endingSequenceNumber
            self.startingSequenceNumber = startingSequenceNumber
        }

        private enum CodingKeys: String, CodingKey {
            case endingSequenceNumber = "EndingSequenceNumber"
            case startingSequenceNumber = "StartingSequenceNumber"
        }
    }

    public struct Shard: AWSDecodableShape {
        /// The shard ID of the current shard's parent.
        public let parentShardId: String?
        /// The range of possible sequence numbers for the shard.
        public let sequenceNumberRange: SequenceNumberRange?
        /// The system-generated identifier for this shard.
        public let shardId: String?

        public init(parentShardId: String? = nil, sequenceNumberRange: SequenceNumberRange? = nil, shardId: String? = nil) {
            self.parentShardId = parentShardId
            self.sequenceNumberRange = sequenceNumberRange
            self.shardId = shardId
        }

        private enum CodingKeys: String, CodingKey {
            case parentShardId = "ParentShardId"
            case sequenceNumberRange = "SequenceNumberRange"
            case shardId = "ShardId"
        }
    }

    public struct Stream: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel
        public let streamLabel: String?
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?

        public init(streamArn: String? = nil, streamLabel: String? = nil, tableName: String? = nil) {
            self.streamArn = streamArn
            self.streamLabel = streamLabel
            self.tableName = tableName
        }

        private enum CodingKeys: String, CodingKey {
            case streamArn = "StreamArn"
            case streamLabel = "StreamLabel"
            case tableName = "TableName"
        }
    }

    public struct StreamDescription: AWSDecodableShape {
        /// The date and time when the request to create this stream was issued.
        public let creationRequestDateTime: Date?
        /// The key attribute(s) of the stream's DynamoDB table.
        public let keySchema: [KeySchemaElement]?
        /// The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedShardId is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved. If LastEvaluatedShardId is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedShardId is empty.
        public let lastEvaluatedShardId: String?
        /// The shards that comprise the stream.
        public let shards: [Shard]?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel
        public let streamLabel: String?
        /// Indicates the current status of the stream:    ENABLING - Streams is currently being enabled on the DynamoDB table.    ENABLED - the stream is enabled.    DISABLING - Streams is currently being disabled on the DynamoDB table.    DISABLED - the stream is disabled.
        public let streamStatus: StreamStatus?
        /// Indicates the format of the records within this stream:    KEYS_ONLY - only the key attributes of items that were modified in the DynamoDB table.    NEW_IMAGE - entire items from the table, as they appeared after they were modified.    OLD_IMAGE - entire items from the table, as they appeared before they were modified.    NEW_AND_OLD_IMAGES - both the new and the old images of the items from the table.
        public let streamViewType: StreamViewType?
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?

        public init(creationRequestDateTime: Date? = nil, keySchema: [KeySchemaElement]? = nil, lastEvaluatedShardId: String? = nil, shards: [Shard]? = nil, streamArn: String? = nil, streamLabel: String? = nil, streamStatus: StreamStatus? = nil, streamViewType: StreamViewType? = nil, tableName: String? = nil) {
            self.creationRequestDateTime = creationRequestDateTime
            self.keySchema = keySchema
            self.lastEvaluatedShardId = lastEvaluatedShardId
            self.shards = shards
            self.streamArn = streamArn
            self.streamLabel = streamLabel
            self.streamStatus = streamStatus
            self.streamViewType = streamViewType
            self.tableName = tableName
        }

        private enum CodingKeys: String, CodingKey {
            case creationRequestDateTime = "CreationRequestDateTime"
            case keySchema = "KeySchema"
            case lastEvaluatedShardId = "LastEvaluatedShardId"
            case shards = "Shards"
            case streamArn = "StreamArn"
            case streamLabel = "StreamLabel"
            case streamStatus = "StreamStatus"
            case streamViewType = "StreamViewType"
            case tableName = "TableName"
        }
    }

    public struct StreamRecord: AWSDecodableShape {
        /// The approximate date and time when the stream record was created, in UNIX epoch time format.
        public let approximateCreationDateTime: Date?
        /// The primary key attribute(s) for the DynamoDB item that was modified.
        public let keys: [String: AttributeValue]?
        /// The item in the DynamoDB table as it appeared after it was modified.
        public let newImage: [String: AttributeValue]?
        /// The item in the DynamoDB table as it appeared before it was modified.
        public let oldImage: [String: AttributeValue]?
        /// The sequence number of the stream record.
        public let sequenceNumber: String?
        /// The size of the stream record, in bytes.
        public let sizeBytes: Int64?
        /// The type of data from the modified DynamoDB item that was captured in this stream record:    KEYS_ONLY - only the key attributes of the modified item.    NEW_IMAGE - the entire item, as it appeared after it was modified.    OLD_IMAGE - the entire item, as it appeared before it was modified.    NEW_AND_OLD_IMAGES - both the new and the old item images of the item.
        public let streamViewType: StreamViewType?

        public init(approximateCreationDateTime: Date? = nil, keys: [String: AttributeValue]? = nil, newImage: [String: AttributeValue]? = nil, oldImage: [String: AttributeValue]? = nil, sequenceNumber: String? = nil, sizeBytes: Int64? = nil, streamViewType: StreamViewType? = nil) {
            self.approximateCreationDateTime = approximateCreationDateTime
            self.keys = keys
            self.newImage = newImage
            self.oldImage = oldImage
            self.sequenceNumber = sequenceNumber
            self.sizeBytes = sizeBytes
            self.streamViewType = streamViewType
        }

        private enum CodingKeys: String, CodingKey {
            case approximateCreationDateTime = "ApproximateCreationDateTime"
            case keys = "Keys"
            case newImage = "NewImage"
            case oldImage = "OldImage"
            case sequenceNumber = "SequenceNumber"
            case sizeBytes = "SizeBytes"
            case streamViewType = "StreamViewType"
        }
    }
}

// MARK: - Errors

/// Error enum for DynamoDBStreams
public struct DynamoDBStreamsErrorType: AWSErrorType {
    enum Code: String {
        case expiredIteratorException = "ExpiredIteratorException"
        case internalServerError = "InternalServerError"
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case trimmedDataAccessException = "TrimmedDataAccessException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DynamoDBStreams
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the GetShardIterator action.
    public static var expiredIteratorException: Self { .init(.expiredIteratorException) }
    /// An error occurred on the server side.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// There is no limit to the number of daily on-demand backups that can be taken.  For most purposes, up to 500 simultaneous table operations are allowed per account. These operations include CreateTable, UpdateTable, DeleteTable,UpdateTimeToLive, RestoreTableFromBackup, and RestoreTableToPointInTime.  When you are creating a table with one or more secondary indexes, you can have up to 250 such requests running at a time. However, if the table or index specifications are complex, then DynamoDB might temporarily reduce the number of concurrent operations. When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account. There is a soft account quota of 2,500 tables.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be ACTIVE.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation attempted to read past the oldest stream record in a shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:   You request a shard iterator with a sequence number older than the trim point (24 hours).   You obtain a shard iterator, but before you use the iterator in a GetRecords request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
    public static var trimmedDataAccessException: Self { .init(.trimmedDataAccessException) }
}

extension DynamoDBStreamsErrorType: Equatable {
    public static func == (lhs: DynamoDBStreamsErrorType, rhs: DynamoDBStreamsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DynamoDBStreamsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
