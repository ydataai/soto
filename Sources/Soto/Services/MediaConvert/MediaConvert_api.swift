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

/// Service object for interacting with AWS MediaConvert service.
///
/// AWS Elemental MediaConvert
public struct MediaConvert: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaConvert client
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
            serviceName: "MediaConvert",
            serviceIdentifier: "mediaconvert",
            serviceProtocol: .restjson,
            apiVersion: "2017-08-29",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            variantEndpoints: Self.variantEndpoints,
            errorType: MediaConvertErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "cn-northwest-1": "mediaconvert.cn-northwest-1.amazonaws.com.cn"
    ]}


    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "mediaconvert-fips.ca-central-1.amazonaws.com",
            "us-east-1": "mediaconvert-fips.us-east-1.amazonaws.com",
            "us-east-2": "mediaconvert-fips.us-east-2.amazonaws.com",
            "us-gov-west-1": "mediaconvert.us-gov-west-1.amazonaws.com",
            "us-west-1": "mediaconvert-fips.us-west-1.amazonaws.com",
            "us-west-2": "mediaconvert-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
    @Sendable
    public func associateCertificate(_ input: AssociateCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateCertificateResponse {
        return try await self.client.execute(
            operation: "AssociateCertificate", 
            path: "/2017-08-29/certificates", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently cancel a job. Once you have canceled a job, you can't start it again.
    @Sendable
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobResponse {
        return try await self.client.execute(
            operation: "CancelJob", 
            path: "/2017-08-29/jobs/{Id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    @Sendable
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobResponse {
        return try await self.client.execute(
            operation: "CreateJob", 
            path: "/2017-08-29/jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    @Sendable
    public func createJobTemplate(_ input: CreateJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobTemplateResponse {
        return try await self.client.execute(
            operation: "CreateJobTemplate", 
            path: "/2017-08-29/jobTemplates", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    @Sendable
    public func createPreset(_ input: CreatePresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePresetResponse {
        return try await self.client.execute(
            operation: "CreatePreset", 
            path: "/2017-08-29/presets", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
    @Sendable
    public func createQueue(_ input: CreateQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateQueueResponse {
        return try await self.client.execute(
            operation: "CreateQueue", 
            path: "/2017-08-29/queues", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently delete a job template you have created.
    @Sendable
    public func deleteJobTemplate(_ input: DeleteJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteJobTemplateResponse {
        return try await self.client.execute(
            operation: "DeleteJobTemplate", 
            path: "/2017-08-29/jobTemplates/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently delete a policy that you created.
    @Sendable
    public func deletePolicy(_ input: DeletePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePolicyResponse {
        return try await self.client.execute(
            operation: "DeletePolicy", 
            path: "/2017-08-29/policy", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently delete a preset you have created.
    @Sendable
    public func deletePreset(_ input: DeletePresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePresetResponse {
        return try await self.client.execute(
            operation: "DeletePreset", 
            path: "/2017-08-29/presets/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Permanently delete a queue you have created.
    @Sendable
    public func deleteQueue(_ input: DeleteQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteQueueResponse {
        return try await self.client.execute(
            operation: "DeleteQueue", 
            path: "/2017-08-29/queues/{Name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Send a request with an empty body to the regional API endpoint to get your account API endpoint. Note that DescribeEndpoints is no longer required. We recommend that you send your requests directly to the regional endpoint instead.
    @available(*, deprecated, message: "DescribeEndpoints and account specific endpoints are no longer required. We recommend that you send your requests directly to the regional endpoint instead.")
    @Sendable
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEndpointsResponse {
        return try await self.client.execute(
            operation: "DescribeEndpoints", 
            path: "/2017-08-29/endpoints", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
    @Sendable
    public func disassociateCertificate(_ input: DisassociateCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateCertificateResponse {
        return try await self.client.execute(
            operation: "DisassociateCertificate", 
            path: "/2017-08-29/certificates/{Arn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the JSON for a specific transcoding job.
    @Sendable
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobResponse {
        return try await self.client.execute(
            operation: "GetJob", 
            path: "/2017-08-29/jobs/{Id}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the JSON for a specific job template.
    @Sendable
    public func getJobTemplate(_ input: GetJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobTemplateResponse {
        return try await self.client.execute(
            operation: "GetJobTemplate", 
            path: "/2017-08-29/jobTemplates/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the JSON for your policy.
    @Sendable
    public func getPolicy(_ input: GetPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPolicyResponse {
        return try await self.client.execute(
            operation: "GetPolicy", 
            path: "/2017-08-29/policy", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the JSON for a specific preset.
    @Sendable
    public func getPreset(_ input: GetPresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPresetResponse {
        return try await self.client.execute(
            operation: "GetPreset", 
            path: "/2017-08-29/presets/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the JSON for a specific queue.
    @Sendable
    public func getQueue(_ input: GetQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetQueueResponse {
        return try await self.client.execute(
            operation: "GetQueue", 
            path: "/2017-08-29/queues/{Name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    @Sendable
    public func listJobTemplates(_ input: ListJobTemplatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobTemplatesResponse {
        return try await self.client.execute(
            operation: "ListJobTemplates", 
            path: "/2017-08-29/jobTemplates", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    @Sendable
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsResponse {
        return try await self.client.execute(
            operation: "ListJobs", 
            path: "/2017-08-29/jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    @Sendable
    public func listPresets(_ input: ListPresetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPresetsResponse {
        return try await self.client.execute(
            operation: "ListPresets", 
            path: "/2017-08-29/presets", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    @Sendable
    public func listQueues(_ input: ListQueuesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListQueuesResponse {
        return try await self.client.execute(
            operation: "ListQueues", 
            path: "/2017-08-29/queues", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the tags for a MediaConvert resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/2017-08-29/tags/{Arn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Create or change your policy. For more information about policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    @Sendable
    public func putPolicy(_ input: PutPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutPolicyResponse {
        return try await self.client.execute(
            operation: "PutPolicy", 
            path: "/2017-08-29/policy", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve a JSON array that includes job details for up to twenty of your most recent jobs. Optionally filter results further according to input file, queue, or status. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    @Sendable
    public func searchJobs(_ input: SearchJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchJobsResponse {
        return try await self.client.execute(
            operation: "SearchJobs", 
            path: "/2017-08-29/search", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/2017-08-29/tags", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/2017-08-29/tags/{Arn}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modify one of your existing job templates.
    @Sendable
    public func updateJobTemplate(_ input: UpdateJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateJobTemplateResponse {
        return try await self.client.execute(
            operation: "UpdateJobTemplate", 
            path: "/2017-08-29/jobTemplates/{Name}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modify one of your existing presets.
    @Sendable
    public func updatePreset(_ input: UpdatePresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePresetResponse {
        return try await self.client.execute(
            operation: "UpdatePreset", 
            path: "/2017-08-29/presets/{Name}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modify one of your existing queues.
    @Sendable
    public func updateQueue(_ input: UpdateQueueRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateQueueResponse {
        return try await self.client.execute(
            operation: "UpdateQueue", 
            path: "/2017-08-29/queues/{Name}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension MediaConvert {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaConvert, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaConvert {
    /// Send a request with an empty body to the regional API endpoint to get your account API endpoint. Note that DescribeEndpoints is no longer required. We recommend that you send your requests directly to the regional endpoint instead.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    @available(*, deprecated, message: "DescribeEndpoints and account specific endpoints are no longer required. We recommend that you send your requests directly to the regional endpoint instead.")
    public func describeEndpointsPaginator(
        _ input: DescribeEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeEndpointsRequest, DescribeEndpointsResponse> {
        return .init(
            input: input,
            command: self.describeEndpoints,
            inputKey: \DescribeEndpointsRequest.nextToken,
            outputKey: \DescribeEndpointsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobTemplatesPaginator(
        _ input: ListJobTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobTemplatesRequest, ListJobTemplatesResponse> {
        return .init(
            input: input,
            command: self.listJobTemplates,
            inputKey: \ListJobTemplatesRequest.nextToken,
            outputKey: \ListJobTemplatesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: self.listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPresetsRequest, ListPresetsResponse> {
        return .init(
            input: input,
            command: self.listPresets,
            inputKey: \ListPresetsRequest.nextToken,
            outputKey: \ListPresetsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListQueuesRequest, ListQueuesResponse> {
        return .init(
            input: input,
            command: self.listQueues,
            inputKey: \ListQueuesRequest.nextToken,
            outputKey: \ListQueuesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve a JSON array that includes job details for up to twenty of your most recent jobs. Optionally filter results further according to input file, queue, or status. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func searchJobsPaginator(
        _ input: SearchJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<SearchJobsRequest, SearchJobsResponse> {
        return .init(
            input: input,
            command: self.searchJobs,
            inputKey: \SearchJobsRequest.nextToken,
            outputKey: \SearchJobsResponse.nextToken,
            logger: logger
        )
    }
}

extension MediaConvert.DescribeEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.DescribeEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            mode: self.mode,
            nextToken: token
        )
    }
}

extension MediaConvert.ListJobTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListJobTemplatesRequest {
        return .init(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )
    }
}

extension MediaConvert.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order,
            queue: self.queue,
            status: self.status
        )
    }
}

extension MediaConvert.ListPresetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListPresetsRequest {
        return .init(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )
    }
}

extension MediaConvert.ListQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListQueuesRequest {
        return .init(
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )
    }
}

extension MediaConvert.SearchJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.SearchJobsRequest {
        return .init(
            inputFile: self.inputFile,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order,
            queue: self.queue,
            status: self.status
        )
    }
}
