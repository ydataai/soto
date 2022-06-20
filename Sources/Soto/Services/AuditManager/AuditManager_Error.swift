//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

import SotoCore

/// Error enum for AuditManager
public struct AuditManagerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AuditManager
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

    ///  Your account isn't registered with Audit Manager. Check the delegated administrator setup on the Audit Manager settings page, and try again.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    ///  An internal service error occurred during the processing of your request. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    ///  The resource that's specified in the request can't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    ///  The request has invalid or missing parameters.
    public static var validationException: Self { .init(.validationException) }
}

extension AuditManagerErrorType: Equatable {
    public static func == (lhs: AuditManagerErrorType, rhs: AuditManagerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AuditManagerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
