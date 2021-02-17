//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension LocationService {
    ///  Retrieves the device position history from a tracker resource within a specified range of time.  Limitation — Device positions are deleted after one year.
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
    public func getDevicePositionHistoryPaginator<Result>(
        _ input: GetDevicePositionHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetDevicePositionHistoryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getDevicePositionHistory,
            tokenKey: \GetDevicePositionHistoryResponse.nextToken,
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
    public func getDevicePositionHistoryPaginator(
        _ input: GetDevicePositionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetDevicePositionHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDevicePositionHistory,
            tokenKey: \GetDevicePositionHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDevicePositionHistoryPaginator(
        _ input: GetDevicePositionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDevicePositionHistoryRequest, GetDevicePositionHistoryResponse> {
        return .init(
            input: input,
            command: getDevicePositionHistory,
            inputKey: \GetDevicePositionHistoryRequest.nextToken,
            outputKey: \GetDevicePositionHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofence collections in your AWS account.
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
    public func listGeofenceCollectionsPaginator<Result>(
        _ input: ListGeofenceCollectionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGeofenceCollectionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGeofenceCollections,
            tokenKey: \ListGeofenceCollectionsResponse.nextToken,
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
    public func listGeofenceCollectionsPaginator(
        _ input: ListGeofenceCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGeofenceCollectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGeofenceCollections,
            tokenKey: \ListGeofenceCollectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGeofenceCollectionsPaginator(
        _ input: ListGeofenceCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGeofenceCollectionsRequest, ListGeofenceCollectionsResponse> {
        return .init(
            input: input,
            command: listGeofenceCollections,
            inputKey: \ListGeofenceCollectionsRequest.nextToken,
            outputKey: \ListGeofenceCollectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofences stored in a given geofence collection.
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
    public func listGeofencesPaginator<Result>(
        _ input: ListGeofencesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGeofencesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGeofences,
            tokenKey: \ListGeofencesResponse.nextToken,
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
    public func listGeofencesPaginator(
        _ input: ListGeofencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGeofencesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGeofences,
            tokenKey: \ListGeofencesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGeofencesPaginator(
        _ input: ListGeofencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGeofencesRequest, ListGeofencesResponse> {
        return .init(
            input: input,
            command: listGeofences,
            inputKey: \ListGeofencesRequest.nextToken,
            outputKey: \ListGeofencesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists map resources in your AWS account.
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
    public func listMapsPaginator<Result>(
        _ input: ListMapsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMapsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMaps,
            tokenKey: \ListMapsResponse.nextToken,
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
    public func listMapsPaginator(
        _ input: ListMapsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMapsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMaps,
            tokenKey: \ListMapsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMapsPaginator(
        _ input: ListMapsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMapsRequest, ListMapsResponse> {
        return .init(
            input: input,
            command: listMaps,
            inputKey: \ListMapsRequest.nextToken,
            outputKey: \ListMapsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists Place index resources in your AWS account.
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
    public func listPlaceIndexesPaginator<Result>(
        _ input: ListPlaceIndexesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPlaceIndexesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPlaceIndexes,
            tokenKey: \ListPlaceIndexesResponse.nextToken,
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
    public func listPlaceIndexesPaginator(
        _ input: ListPlaceIndexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPlaceIndexesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlaceIndexes,
            tokenKey: \ListPlaceIndexesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlaceIndexesPaginator(
        _ input: ListPlaceIndexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlaceIndexesRequest, ListPlaceIndexesResponse> {
        return .init(
            input: input,
            command: listPlaceIndexes,
            inputKey: \ListPlaceIndexesRequest.nextToken,
            outputKey: \ListPlaceIndexesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofence collections currently associated to the given tracker resource.
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
    public func listTrackerConsumersPaginator<Result>(
        _ input: ListTrackerConsumersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrackerConsumersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTrackerConsumers,
            tokenKey: \ListTrackerConsumersResponse.nextToken,
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
    public func listTrackerConsumersPaginator(
        _ input: ListTrackerConsumersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrackerConsumersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrackerConsumers,
            tokenKey: \ListTrackerConsumersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrackerConsumersPaginator(
        _ input: ListTrackerConsumersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrackerConsumersRequest, ListTrackerConsumersResponse> {
        return .init(
            input: input,
            command: listTrackerConsumers,
            inputKey: \ListTrackerConsumersRequest.nextToken,
            outputKey: \ListTrackerConsumersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists tracker resources in your AWS account.
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
    public func listTrackersPaginator<Result>(
        _ input: ListTrackersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrackersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTrackers,
            tokenKey: \ListTrackersResponse.nextToken,
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
    public func listTrackersPaginator(
        _ input: ListTrackersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrackersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrackers,
            tokenKey: \ListTrackersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrackersPaginator(
        _ input: ListTrackersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrackersRequest, ListTrackersResponse> {
        return .init(
            input: input,
            command: listTrackers,
            inputKey: \ListTrackersRequest.nextToken,
            outputKey: \ListTrackersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

extension LocationService.GetDevicePositionHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.GetDevicePositionHistoryRequest {
        return .init(
            deviceId: self.deviceId,
            endTimeExclusive: self.endTimeExclusive,
            nextToken: token,
            startTimeInclusive: self.startTimeInclusive,
            trackerName: self.trackerName
        )
    }
}

extension LocationService.ListGeofenceCollectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListGeofenceCollectionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LocationService.ListGeofencesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListGeofencesRequest {
        return .init(
            collectionName: self.collectionName,
            nextToken: token
        )
    }
}

extension LocationService.ListMapsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListMapsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LocationService.ListPlaceIndexesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListPlaceIndexesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LocationService.ListTrackerConsumersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListTrackerConsumersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            trackerName: self.trackerName
        )
    }
}

extension LocationService.ListTrackersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LocationService.ListTrackersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
