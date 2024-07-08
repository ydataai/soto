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

/// Service object for interacting with AWS CodeStar service.
///
/// AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:    DeleteProject, which deletes a project.    DescribeProject, which lists the attributes of a project.    ListProjects, which lists all projects associated with your AWS account.    ListResources, which lists the resources associated with a project.    ListTagsForProject, which lists the tags associated with a project.    TagProject, which adds tags to a project.    UntagProject, which removes tags from a project.    UpdateProject, which updates the attributes of a project.   Teams and team members, by calling the following:    AssociateTeamMember, which adds an IAM user to the team for a project.    DisassociateTeamMember, which removes an IAM user from the team for a project.    ListTeamMembers, which lists all the IAM users in the team for a project, including their roles and attributes.    UpdateTeamMember, which updates a team member's attributes in a project.   Users, by calling the following:    CreateUserProfile, which creates a user profile that contains data associated with the user across all projects.    DeleteUserProfile, which deletes all user profile information across all projects.    DescribeUserProfile, which describes the profile of a user.    ListUserProfiles, which lists all user profiles.    UpdateUserProfile, which updates the profile for a user.
public struct CodeStar: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStar client
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
            amzTarget: "CodeStar_20170419",
            serviceName: "CodeStar",
            serviceIdentifier: "codestar",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            errorType: CodeStarErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Adds an IAM user to the team for an AWS CodeStar project.
    @Sendable
    public func associateTeamMember(_ input: AssociateTeamMemberRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateTeamMemberResult {
        return try await self.client.execute(
            operation: "AssociateTeamMember", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.
    @Sendable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProjectResult {
        return try await self.client.execute(
            operation: "CreateProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    @Sendable
    public func createUserProfile(_ input: CreateUserProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateUserProfileResult {
        return try await self.client.execute(
            operation: "CreateUserProfile", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
    @Sendable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProjectResult {
        return try await self.client.execute(
            operation: "DeleteProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
    @Sendable
    public func deleteUserProfile(_ input: DeleteUserProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteUserProfileResult {
        return try await self.client.execute(
            operation: "DeleteUserProfile", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a project and its resources.
    @Sendable
    public func describeProject(_ input: DescribeProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeProjectResult {
        return try await self.client.execute(
            operation: "DescribeProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes a user in AWS CodeStar and the user attributes across all projects.
    @Sendable
    public func describeUserProfile(_ input: DescribeUserProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeUserProfileResult {
        return try await self.client.execute(
            operation: "DescribeUserProfile", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.
    @Sendable
    public func disassociateTeamMember(_ input: DisassociateTeamMemberRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateTeamMemberResult {
        return try await self.client.execute(
            operation: "DisassociateTeamMember", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all projects in AWS CodeStar associated with your AWS account.
    @Sendable
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProjectsResult {
        return try await self.client.execute(
            operation: "ListProjects", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists resources associated with a project in AWS CodeStar.
    @Sendable
    public func listResources(_ input: ListResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResourcesResult {
        return try await self.client.execute(
            operation: "ListResources", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the tags for a project.
    @Sendable
    public func listTagsForProject(_ input: ListTagsForProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForProjectResult {
        return try await self.client.execute(
            operation: "ListTagsForProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all team members associated with a project.
    @Sendable
    public func listTeamMembers(_ input: ListTeamMembersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTeamMembersResult {
        return try await self.client.execute(
            operation: "ListTeamMembers", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the user profiles configured for your AWS account in AWS CodeStar.
    @Sendable
    public func listUserProfiles(_ input: ListUserProfilesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUserProfilesResult {
        return try await self.client.execute(
            operation: "ListUserProfiles", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds tags to a project.
    @Sendable
    public func tagProject(_ input: TagProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagProjectResult {
        return try await self.client.execute(
            operation: "TagProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from a project.
    @Sendable
    public func untagProject(_ input: UntagProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagProjectResult {
        return try await self.client.execute(
            operation: "UntagProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a project in AWS CodeStar.
    @Sendable
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProjectResult {
        return try await self.client.execute(
            operation: "UpdateProject", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
    @Sendable
    public func updateTeamMember(_ input: UpdateTeamMemberRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateTeamMemberResult {
        return try await self.client.execute(
            operation: "UpdateTeamMember", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    @Sendable
    public func updateUserProfile(_ input: UpdateUserProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateUserProfileResult {
        return try await self.client.execute(
            operation: "UpdateUserProfile", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension CodeStar {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStar, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
