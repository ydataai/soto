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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GreengrassV2 {
    ///  Retrieves a paginated list of client devices that are associated with a core device.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClientDevicesAssociatedWithCoreDevicePaginator(
        _ input: ListClientDevicesAssociatedWithCoreDeviceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClientDevicesAssociatedWithCoreDeviceRequest, ListClientDevicesAssociatedWithCoreDeviceResponse> {
        return .init(
            input: input,
            command: listClientDevicesAssociatedWithCoreDevice,
            inputKey: \ListClientDevicesAssociatedWithCoreDeviceRequest.nextToken,
            outputKey: \ListClientDevicesAssociatedWithCoreDeviceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of all versions for a component. Greater versions are listed first.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentVersionsPaginator(
        _ input: ListComponentVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentVersionsRequest, ListComponentVersionsResponse> {
        return .init(
            input: input,
            command: listComponentVersions,
            inputKey: \ListComponentVersionsRequest.nextToken,
            outputKey: \ListComponentVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of component summaries. This list includes components that you have permission to view.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of Greengrass core devices.  IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then the reported status of that device might not reflect its current status. The status timestamp indicates when the device status was last updated. Core devices send status updates at the following times:   When the IoT Greengrass Core software starts   When the core device receives a deployment from the Amazon Web Services Cloud   When the status of any component on the core device becomes BROKEN    At a regular interval that you can configure, which defaults to 24 hours
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCoreDevicesPaginator(
        _ input: ListCoreDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCoreDevicesRequest, ListCoreDevicesResponse> {
        return .init(
            input: input,
            command: listCoreDevices,
            inputKey: \ListCoreDevicesRequest.nextToken,
            outputKey: \ListCoreDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of deployments.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentsRequest, ListDeploymentsResponse> {
        return .init(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \ListDeploymentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of deployment jobs that IoT Greengrass sends to Greengrass core devices.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEffectiveDeploymentsPaginator(
        _ input: ListEffectiveDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEffectiveDeploymentsRequest, ListEffectiveDeploymentsResponse> {
        return .init(
            input: input,
            command: listEffectiveDeployments,
            inputKey: \ListEffectiveDeploymentsRequest.nextToken,
            outputKey: \ListEffectiveDeploymentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of the components that a Greengrass core device runs. This list doesn't include components that are deployed from local deployments or components that are deployed as dependencies of other components.  IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then the reported status of that device might not reflect its current status. The status timestamp indicates when the device status was last updated. Core devices send status updates at the following times:   When the IoT Greengrass Core software starts   When the core device receives a deployment from the Amazon Web Services Cloud   When the status of any component on the core device becomes BROKEN    At a regular interval that you can configure, which defaults to 24 hours
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstalledComponentsPaginator(
        _ input: ListInstalledComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstalledComponentsRequest, ListInstalledComponentsResponse> {
        return .init(
            input: input,
            command: listInstalledComponents,
            inputKey: \ListInstalledComponentsRequest.nextToken,
            outputKey: \ListInstalledComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
