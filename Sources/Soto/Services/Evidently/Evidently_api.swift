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

/// Service object for interacting with AWS Evidently service.
///
/// You can use Amazon CloudWatch Evidently to safely validate new features by serving  them to a specified percentage of your users while you roll out the feature. You can monitor the performance of the new feature to help you decide when to ramp up traffic to your users. This helps you  reduce risk and identify unintended consequences before you fully launch the feature. You can also conduct A/B experiments to make feature design decisions based on evidence and data. An experiment can test as many as five variations at once. Evidently collects experiment data and analyzes it using statistical methods. It also provides clear recommendations about which variations perform better. You can test both user-facing features and backend features.
public struct Evidently: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Evidently client
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
            serviceName: "Evidently",
            serviceIdentifier: "evidently",
            serviceProtocol: .restjson,
            apiVersion: "2021-02-01",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: EvidentlyErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "ap-northeast-1": "evidently.ap-northeast-1.amazonaws.com",
        "ap-southeast-1": "evidently.ap-southeast-1.amazonaws.com",
        "ap-southeast-2": "evidently.ap-southeast-2.amazonaws.com",
        "eu-central-1": "evidently.eu-central-1.amazonaws.com",
        "eu-north-1": "evidently.eu-north-1.amazonaws.com",
        "eu-west-1": "evidently.eu-west-1.amazonaws.com",
        "us-east-1": "evidently.us-east-1.amazonaws.com",
        "us-east-2": "evidently.us-east-2.amazonaws.com",
        "us-west-2": "evidently.us-west-2.amazonaws.com"
    ]}



    // MARK: API Calls

    /// This operation assigns feature variation to user sessions. For each user session, you pass in an entityID that represents the user. Evidently then checks the evaluation rules and assigns the variation. The first rules that are evaluated are the override rules. If the user's entityID matches an override rule, the user is served the variation specified by that rule. Next, if there is a launch of the feature, the user might be assigned to a variation in the launch. The chance of this depends on the percentage of users that are allocated to that launch. If the user is enrolled in the launch, the variation they are served depends on the allocation of the various feature variations used for the launch. If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might  be assigned to a variation in the experiment. The chance of this depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment,  the variation they are served depends on the allocation of the various feature variations used for the experiment.  If the user is not assigned to a launch or experiment, they are served the default variation.
    @Sendable
    public func batchEvaluateFeature(_ input: BatchEvaluateFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchEvaluateFeatureResponse {
        return try await self.client.execute(
            operation: "BatchEvaluateFeature", 
            path: "/projects/{project}/evaluations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "dataplane.", 
            logger: logger
        )
    }

    /// Creates an Evidently experiment. Before you create an experiment, you must create the feature to use for the experiment. An experiment helps you make feature design  decisions based on evidence and data. An experiment can test as many as five variations at once. Evidently collects experiment data and analyzes it by statistical methods, and provides clear recommendations about which variations perform better. You can optionally specify a segment to have the experiment consider only certain audience  types in the experiment, such as using only user sessions from a certain location or who use a certain internet browser. Don't use this operation to update an existing experiment. Instead, use  UpdateExperiment.
    @Sendable
    public func createExperiment(_ input: CreateExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateExperimentResponse {
        return try await self.client.execute(
            operation: "CreateExperiment", 
            path: "/projects/{project}/experiments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an Evidently feature that you want to launch or test. You can define up to  five variations of a feature, and use these variations in your launches and experiments. A feature must be created in a project. For information about creating a project, see CreateProject. Don't use this operation to update an existing feature. Instead, use  UpdateFeature.
    @Sendable
    public func createFeature(_ input: CreateFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFeatureResponse {
        return try await self.client.execute(
            operation: "CreateFeature", 
            path: "/projects/{project}/features", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a launch of a given feature. Before you create a launch, you must create the feature to use for the launch. You can use a launch to safely validate new features by serving them to a specified percentage of your users while you roll out the feature. You can monitor the performance of the new feature to help you decide when to ramp up traffic to more users. This helps you reduce risk and identify unintended consequences before you fully launch the feature. Don't use this operation to update an existing launch. Instead, use  UpdateLaunch.
    @Sendable
    public func createLaunch(_ input: CreateLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLaunchResponse {
        return try await self.client.execute(
            operation: "CreateLaunch", 
            path: "/projects/{project}/launches", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a project, which is the logical object in Evidently that can contain features, launches, and  experiments. Use projects to group similar features together. To update an existing project, use UpdateProject.
    @Sendable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProjectResponse {
        return try await self.client.execute(
            operation: "CreateProject", 
            path: "/projects", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation to define a segment of your audience. A segment is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users,  users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects, such as age. Using a segment in an experiment limits that experiment to evaluate only the users who match the segment  criteria. Using one or more segments in a launch allows you to define different traffic splits for the different audience segments. For more information about segment pattern syntax, see   Segment rule pattern syntax. The pattern that you define for a segment is matched against the value of evaluationContext, which is passed into Evidently in the EvaluateFeature operation, when Evidently assigns a feature variation to a user.
    @Sendable
    public func createSegment(_ input: CreateSegmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSegmentResponse {
        return try await self.client.execute(
            operation: "CreateSegment", 
            path: "/segments", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Evidently experiment. The feature used for the experiment is not deleted. To stop an experiment without deleting it, use StopExperiment.
    @Sendable
    public func deleteExperiment(_ input: DeleteExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteExperimentResponse {
        return try await self.client.execute(
            operation: "DeleteExperiment", 
            path: "/projects/{project}/experiments/{experiment}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Evidently feature.
    @Sendable
    public func deleteFeature(_ input: DeleteFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteFeatureResponse {
        return try await self.client.execute(
            operation: "DeleteFeature", 
            path: "/projects/{project}/features/{feature}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Evidently launch. The feature used for the launch is not deleted. To stop a launch without deleting it, use StopLaunch.
    @Sendable
    public func deleteLaunch(_ input: DeleteLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteLaunchResponse {
        return try await self.client.execute(
            operation: "DeleteLaunch", 
            path: "/projects/{project}/launches/{launch}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an Evidently project. Before you can delete a project, you must delete all the features that the project contains. To delete a feature, use DeleteFeature.
    @Sendable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProjectResponse {
        return try await self.client.execute(
            operation: "DeleteProject", 
            path: "/projects/{project}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a segment. You can't delete a segment that is being used in a launch or experiment, even if that  launch or experiment is not currently running.
    @Sendable
    public func deleteSegment(_ input: DeleteSegmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSegmentResponse {
        return try await self.client.execute(
            operation: "DeleteSegment", 
            path: "/segments/{segment}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation assigns a feature variation to one given user session. You pass in an entityID that represents the user. Evidently then checks the evaluation rules and assigns the variation. The first rules that are evaluated are the override rules. If the user's entityID matches an override rule, the user is served the variation specified by that rule. If there is a current launch with this feature that uses segment overrides, and  if the user session's evaluationContext matches a segment rule defined in a segment override, the configuration in the segment overrides is used. For more information about segments, see CreateSegment  and  Use segments to focus your  audience. If there is a launch with no segment overrides, the user might be assigned to a variation in the launch. The chance of this depends on the percentage of users that are allocated to that launch. If the user is enrolled in the launch, the variation they are served depends on the allocation of the various feature variations used for the launch. If the user is not assigned to a launch, and there is an ongoing experiment for this feature, the user might  be assigned to a variation in the experiment. The chance of this depends on the percentage of users that are allocated to that experiment. If the experiment uses a segment, then only  user sessions with evaluationContext values that match the segment rule are used in the experiment. If the user is enrolled in the experiment,  the variation they are served depends on the allocation of the various feature variations used for the experiment.  If the user is not assigned to a launch or experiment, they are served the default variation.
    @Sendable
    public func evaluateFeature(_ input: EvaluateFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EvaluateFeatureResponse {
        return try await self.client.execute(
            operation: "EvaluateFeature", 
            path: "/projects/{project}/evaluations/{feature}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "dataplane.", 
            logger: logger
        )
    }

    /// Returns the details about one experiment. You must already know the  experiment name. To retrieve a list of experiments in your account, use ListExperiments.
    @Sendable
    public func getExperiment(_ input: GetExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetExperimentResponse {
        return try await self.client.execute(
            operation: "GetExperiment", 
            path: "/projects/{project}/experiments/{experiment}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the results of a running or completed experiment. No results are available until there have been 100 events for each variation and at least 10 minutes have passed since the start of the experiment. To increase the statistical power, Evidently performs an additional offline p-value analysis at the end of the experiment. Offline p-value analysis can detect statistical significance in some cases where the anytime p-values used during  the experiment do not find statistical significance. Experiment results are available up to 63 days after the start of the experiment. They are not available after that because of CloudWatch data retention policies.
    @Sendable
    public func getExperimentResults(_ input: GetExperimentResultsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetExperimentResultsResponse {
        return try await self.client.execute(
            operation: "GetExperimentResults", 
            path: "/projects/{project}/experiments/{experiment}/results", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details about one feature. You must already know the feature name. To retrieve a list of features in your account, use ListFeatures.
    @Sendable
    public func getFeature(_ input: GetFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFeatureResponse {
        return try await self.client.execute(
            operation: "GetFeature", 
            path: "/projects/{project}/features/{feature}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details about one launch. You must already know the  launch name. To retrieve a list of launches in your account, use ListLaunches.
    @Sendable
    public func getLaunch(_ input: GetLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLaunchResponse {
        return try await self.client.execute(
            operation: "GetLaunch", 
            path: "/projects/{project}/launches/{launch}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the details about one launch. You must already know the  project name. To retrieve a list of projects in your account, use ListProjects.
    @Sendable
    public func getProject(_ input: GetProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProjectResponse {
        return try await self.client.execute(
            operation: "GetProject", 
            path: "/projects/{project}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the specified segment. Specify the segment you want to view by specifying its ARN.
    @Sendable
    public func getSegment(_ input: GetSegmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSegmentResponse {
        return try await self.client.execute(
            operation: "GetSegment", 
            path: "/segments/{segment}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns configuration details about all the experiments in the specified project.
    @Sendable
    public func listExperiments(_ input: ListExperimentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListExperimentsResponse {
        return try await self.client.execute(
            operation: "ListExperiments", 
            path: "/projects/{project}/experiments", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns configuration details about all the features in the specified project.
    @Sendable
    public func listFeatures(_ input: ListFeaturesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFeaturesResponse {
        return try await self.client.execute(
            operation: "ListFeatures", 
            path: "/projects/{project}/features", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns configuration details about all the launches in the specified project.
    @Sendable
    public func listLaunches(_ input: ListLaunchesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLaunchesResponse {
        return try await self.client.execute(
            operation: "ListLaunches", 
            path: "/projects/{project}/launches", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns configuration details about all the projects in the current Region in your account.
    @Sendable
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProjectsResponse {
        return try await self.client.execute(
            operation: "ListProjects", 
            path: "/projects", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Use this operation to find which experiments or launches are using a specified segment.
    @Sendable
    public func listSegmentReferences(_ input: ListSegmentReferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSegmentReferencesResponse {
        return try await self.client.execute(
            operation: "ListSegmentReferences", 
            path: "/segments/{segment}/references", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of audience segments that you have created in your account in this Region.
    @Sendable
    public func listSegments(_ input: ListSegmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSegmentsResponse {
        return try await self.client.execute(
            operation: "ListSegments", 
            path: "/segments", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Displays the tags associated with an Evidently resource.
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

    /// Sends performance events to Evidently. These events can be used to evaluate a launch or an experiment.
    @Sendable
    public func putProjectEvents(_ input: PutProjectEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutProjectEventsResponse {
        return try await self.client.execute(
            operation: "PutProjectEvents", 
            path: "/events/projects/{project}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            hostPrefix: "dataplane.", 
            logger: logger
        )
    }

    /// Starts an existing experiment. To create an experiment,  use CreateExperiment.
    @Sendable
    public func startExperiment(_ input: StartExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartExperimentResponse {
        return try await self.client.execute(
            operation: "StartExperiment", 
            path: "/projects/{project}/experiments/{experiment}/start", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an existing launch. To create a launch,  use CreateLaunch.
    @Sendable
    public func startLaunch(_ input: StartLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartLaunchResponse {
        return try await self.client.execute(
            operation: "StartLaunch", 
            path: "/projects/{project}/launches/{launch}/start", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an experiment that is currently running. If you stop an experiment, you can't resume it or restart it.
    @Sendable
    public func stopExperiment(_ input: StopExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopExperimentResponse {
        return try await self.client.execute(
            operation: "StopExperiment", 
            path: "/projects/{project}/experiments/{experiment}/cancel", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops a launch that is currently running. After you stop a launch, you will not be able to resume it or restart it.  Also, it  will not be evaluated as a rule for traffic allocation, and the traffic that was allocated to the launch will instead be available to the feature's experiment, if there is one. Otherwise, all traffic will be served the default variation after the launch is stopped.
    @Sendable
    public func stopLaunch(_ input: StopLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopLaunchResponse {
        return try await self.client.execute(
            operation: "StopLaunch", 
            path: "/projects/{project}/launches/{launch}/cancel", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently resource. Projects, features, launches, and experiments can be tagged. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags.  If you specify a new tag key for the resource,  this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see Tagging Amazon Web Services resources.
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

    /// Use this operation to test a rules pattern that you plan to use to create an audience segment.  For more information about segments, see CreateSegment.
    @Sendable
    public func testSegmentPattern(_ input: TestSegmentPatternRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TestSegmentPatternResponse {
        return try await self.client.execute(
            operation: "TestSegmentPattern", 
            path: "/test-segment-pattern", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more tags from the specified resource.
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

    /// Updates an Evidently experiment.  Don't use this operation to update an experiment's tag. Instead, use  TagResource.
    @Sendable
    public func updateExperiment(_ input: UpdateExperimentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateExperimentResponse {
        return try await self.client.execute(
            operation: "UpdateExperiment", 
            path: "/projects/{project}/experiments/{experiment}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing feature. You can't use this operation to update the tags of an existing feature. Instead, use  TagResource.
    @Sendable
    public func updateFeature(_ input: UpdateFeatureRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateFeatureResponse {
        return try await self.client.execute(
            operation: "UpdateFeature", 
            path: "/projects/{project}/features/{feature}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a launch of a given feature.  Don't use this operation to update the tags of an existing launch. Instead, use  TagResource.
    @Sendable
    public func updateLaunch(_ input: UpdateLaunchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLaunchResponse {
        return try await self.client.execute(
            operation: "UpdateLaunch", 
            path: "/projects/{project}/launches/{launch}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the description of an existing project. To create a new project, use CreateProject. Don't use this operation to update the data storage options of a project. Instead, use  UpdateProjectDataDelivery.  Don't use this operation to update the tags of a project. Instead, use  TagResource.
    @Sendable
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProjectResponse {
        return try await self.client.execute(
            operation: "UpdateProject", 
            path: "/projects/{project}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the data storage options for this project. If you store evaluation events, you an keep them and analyze them on your own. If you choose not to store evaluation events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. You can't specify both cloudWatchLogs and s3Destination in the same operation.
    @Sendable
    public func updateProjectDataDelivery(_ input: UpdateProjectDataDeliveryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProjectDataDeliveryResponse {
        return try await self.client.execute(
            operation: "UpdateProjectDataDelivery", 
            path: "/projects/{project}/data-delivery", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Evidently {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Evidently, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Evidently {
    /// Returns configuration details about all the experiments in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listExperimentsPaginator(
        _ input: ListExperimentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListExperimentsRequest, ListExperimentsResponse> {
        return .init(
            input: input,
            command: self.listExperiments,
            inputKey: \ListExperimentsRequest.nextToken,
            outputKey: \ListExperimentsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns configuration details about all the features in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFeaturesPaginator(
        _ input: ListFeaturesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFeaturesRequest, ListFeaturesResponse> {
        return .init(
            input: input,
            command: self.listFeatures,
            inputKey: \ListFeaturesRequest.nextToken,
            outputKey: \ListFeaturesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns configuration details about all the launches in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLaunchesPaginator(
        _ input: ListLaunchesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLaunchesRequest, ListLaunchesResponse> {
        return .init(
            input: input,
            command: self.listLaunches,
            inputKey: \ListLaunchesRequest.nextToken,
            outputKey: \ListLaunchesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns configuration details about all the projects in the current Region in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResponse> {
        return .init(
            input: input,
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger
        )
    }

    /// Use this operation to find which experiments or launches are using a specified segment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSegmentReferencesPaginator(
        _ input: ListSegmentReferencesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSegmentReferencesRequest, ListSegmentReferencesResponse> {
        return .init(
            input: input,
            command: self.listSegmentReferences,
            inputKey: \ListSegmentReferencesRequest.nextToken,
            outputKey: \ListSegmentReferencesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of audience segments that you have created in your account in this Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSegmentsPaginator(
        _ input: ListSegmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSegmentsRequest, ListSegmentsResponse> {
        return .init(
            input: input,
            command: self.listSegments,
            inputKey: \ListSegmentsRequest.nextToken,
            outputKey: \ListSegmentsResponse.nextToken,
            logger: logger
        )
    }
}

extension Evidently.ListExperimentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListExperimentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            project: self.project,
            status: self.status
        )
    }
}

extension Evidently.ListFeaturesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListFeaturesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            project: self.project
        )
    }
}

extension Evidently.ListLaunchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListLaunchesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            project: self.project,
            status: self.status
        )
    }
}

extension Evidently.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListProjectsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Evidently.ListSegmentReferencesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListSegmentReferencesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            segment: self.segment,
            type: self.type
        )
    }
}

extension Evidently.ListSegmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Evidently.ListSegmentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
