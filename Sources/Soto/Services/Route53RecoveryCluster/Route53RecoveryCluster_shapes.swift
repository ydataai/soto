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

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension Route53RecoveryCluster {
    // MARK: Enums

    public enum RoutingControlState: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case off = "Off"
        case on = "On"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct GetRoutingControlStateRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) for the routing control that you want to get the state for.
        public let routingControlArn: String

        public init(routingControlArn: String) {
            self.routingControlArn = routingControlArn
        }

        public func validate(name: String) throws {
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, max: 255)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, min: 1)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case routingControlArn = "RoutingControlArn"
        }
    }

    public struct GetRoutingControlStateResponse: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the response.
        public let routingControlArn: String
        /// The routing control name.
        public let routingControlName: String?
        /// The state of the routing control.
        public let routingControlState: RoutingControlState

        public init(routingControlArn: String, routingControlName: String? = nil, routingControlState: RoutingControlState) {
            self.routingControlArn = routingControlArn
            self.routingControlName = routingControlName
            self.routingControlState = routingControlState
        }

        private enum CodingKeys: String, CodingKey {
            case routingControlArn = "RoutingControlArn"
            case routingControlName = "RoutingControlName"
            case routingControlState = "RoutingControlState"
        }
    }

    public struct ListRoutingControlsRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the control panel of the routing controls to list.
        public let controlPanelArn: String?
        /// The number of routing controls objects that you want to return with this call. The default value is 500.
        public let maxResults: Int?
        /// The token for the next set of results. You receive this token from a previous call.
        public let nextToken: String?

        public init(controlPanelArn: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.controlPanelArn = controlPanelArn
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.controlPanelArn, name: "controlPanelArn", parent: name, max: 255)
            try self.validate(self.controlPanelArn, name: "controlPanelArn", parent: name, min: 1)
            try self.validate(self.controlPanelArn, name: "controlPanelArn", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 8096)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[\\S]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case controlPanelArn = "ControlPanelArn"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListRoutingControlsResponse: AWSDecodableShape {
        /// The token for the next set of results. You receive this token from a previous call.
        public let nextToken: String?
        /// The list of routing controls.
        public let routingControls: [RoutingControl]

        public init(nextToken: String? = nil, routingControls: [RoutingControl]) {
            self.nextToken = nextToken
            self.routingControls = routingControls
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case routingControls = "RoutingControls"
        }
    }

    public struct RoutingControl: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the control panel where the routing control is located.
        public let controlPanelArn: String?
        /// The name of the control panel where the routing control is located. Only ASCII characters are supported for control
        /// 		panel names.
        public let controlPanelName: String?
        /// The Amazon Web Services account ID of the routing control owner.
        public let owner: String?
        /// The Amazon Resource Name (ARN) of the routing control.
        public let routingControlArn: String?
        /// The name of the routing control.
        public let routingControlName: String?
        /// The current state of the routing control. When a routing control state is set to ON, traffic flows to a cell. When
        /// 			the state is set to OFF, traffic does not flow.
        public let routingControlState: RoutingControlState?

        public init(controlPanelArn: String? = nil, controlPanelName: String? = nil, owner: String? = nil, routingControlArn: String? = nil, routingControlName: String? = nil, routingControlState: RoutingControlState? = nil) {
            self.controlPanelArn = controlPanelArn
            self.controlPanelName = controlPanelName
            self.owner = owner
            self.routingControlArn = routingControlArn
            self.routingControlName = routingControlName
            self.routingControlState = routingControlState
        }

        private enum CodingKeys: String, CodingKey {
            case controlPanelArn = "ControlPanelArn"
            case controlPanelName = "ControlPanelName"
            case owner = "Owner"
            case routingControlArn = "RoutingControlArn"
            case routingControlName = "RoutingControlName"
            case routingControlState = "RoutingControlState"
        }
    }

    public struct UpdateRoutingControlStateEntry: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) for a routing control state entry.
        public let routingControlArn: String
        /// The routing control state in a set of routing control state entries.
        public let routingControlState: RoutingControlState

        public init(routingControlArn: String, routingControlState: RoutingControlState) {
            self.routingControlArn = routingControlArn
            self.routingControlState = routingControlState
        }

        public func validate(name: String) throws {
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, max: 255)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, min: 1)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case routingControlArn = "RoutingControlArn"
            case routingControlState = "RoutingControlState"
        }
    }

    public struct UpdateRoutingControlStateRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) for the routing control that you want to update the state for.
        public let routingControlArn: String
        /// The state of the routing control. You can set the value to ON or OFF.
        public let routingControlState: RoutingControlState
        /// The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of
        /// 			a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
        /// 			by commas. For more information, see
        /// 			Override safety rules to reroute traffic in the Amazon Route 53 Application Recovery Controller Developer Guide.
        public let safetyRulesToOverride: [String]?

        public init(routingControlArn: String, routingControlState: RoutingControlState, safetyRulesToOverride: [String]? = nil) {
            self.routingControlArn = routingControlArn
            self.routingControlState = routingControlState
            self.safetyRulesToOverride = safetyRulesToOverride
        }

        public func validate(name: String) throws {
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, max: 255)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, min: 1)
            try self.validate(self.routingControlArn, name: "routingControlArn", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
            try self.safetyRulesToOverride?.forEach {
                try validate($0, name: "safetyRulesToOverride[]", parent: name, max: 255)
                try validate($0, name: "safetyRulesToOverride[]", parent: name, min: 1)
                try validate($0, name: "safetyRulesToOverride[]", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case routingControlArn = "RoutingControlArn"
            case routingControlState = "RoutingControlState"
            case safetyRulesToOverride = "SafetyRulesToOverride"
        }
    }

    public struct UpdateRoutingControlStateResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateRoutingControlStatesRequest: AWSEncodableShape {
        /// The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing
        /// 			control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
        /// 			by commas. For more information, see
        /// 			Override safety rules to reroute traffic in the Amazon Route 53 Application Recovery Controller Developer Guide.
        public let safetyRulesToOverride: [String]?
        /// A set of routing control entries that you want to update.
        public let updateRoutingControlStateEntries: [UpdateRoutingControlStateEntry]

        public init(safetyRulesToOverride: [String]? = nil, updateRoutingControlStateEntries: [UpdateRoutingControlStateEntry]) {
            self.safetyRulesToOverride = safetyRulesToOverride
            self.updateRoutingControlStateEntries = updateRoutingControlStateEntries
        }

        public func validate(name: String) throws {
            try self.safetyRulesToOverride?.forEach {
                try validate($0, name: "safetyRulesToOverride[]", parent: name, max: 255)
                try validate($0, name: "safetyRulesToOverride[]", parent: name, min: 1)
                try validate($0, name: "safetyRulesToOverride[]", parent: name, pattern: "^[A-Za-z0-9:.\\/_-]*$")
            }
            try self.updateRoutingControlStateEntries.forEach {
                try $0.validate(name: "\(name).updateRoutingControlStateEntries[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case safetyRulesToOverride = "SafetyRulesToOverride"
            case updateRoutingControlStateEntries = "UpdateRoutingControlStateEntries"
        }
    }

    public struct UpdateRoutingControlStatesResponse: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for Route53RecoveryCluster
public struct Route53RecoveryClusterErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case endpointTemporarilyUnavailableException = "EndpointTemporarilyUnavailableException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceLimitExceededException = "ServiceLimitExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Route53RecoveryCluster
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

    /// You don't have sufficient permissions to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// There was a conflict with this request. Try again.
    public static var conflictException: Self { .init(.conflictException) }
    /// The cluster endpoint isn't available. Try another cluster endpoint.
    public static var endpointTemporarilyUnavailableException: Self { .init(.endpointTemporarilyUnavailableException) }
    /// There was an unexpected error during processing of the request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The request references a routing control or control panel that was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request can't update that many routing control states at the same time. Try again with fewer routing control states.
    public static var serviceLimitExceededException: Self { .init(.serviceLimitExceededException) }
    /// The request was denied because of request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// There was a validation error on the request.
    public static var validationException: Self { .init(.validationException) }
}

extension Route53RecoveryClusterErrorType: Equatable {
    public static func == (lhs: Route53RecoveryClusterErrorType, rhs: Route53RecoveryClusterErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Route53RecoveryClusterErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
