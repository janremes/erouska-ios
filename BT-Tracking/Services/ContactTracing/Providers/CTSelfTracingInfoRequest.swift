//
//  CTSelfTracingInfoRequest.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Requests the daily tracing keys used by this device to share with a server.
@objc protocol CTSelfTracingInfoRequest : class {

    /// This property invokes this completion handler when the request completes and clears the property to break any potential retain cycles.
    var completionHandler: CTSelfTracingInfoGetCompletion? { get }


    /// This property holds the the dispatch queue used to invoke handlers on. If this property isn't set, the framework uses the main queue.
    var dispatchQueue: DispatchQueue? { get }


    /// Asynchronously performs the request to get the state, and invokes the completion handler when it's done.
    func perform()


    /// Invalidates a previously initiated request. If there is an outstanding completion handler, the framework will invoke it with an error.
    ///
    /// Don't reuse the request after this is called. If you require another request, create a new one.
    func invalidate()
}

class CTSelfTracingInfoRequestProvider: CTSelfTracingInfoRequest {

    var completionHandler: CTSelfTracingInfoGetCompletion?
    var dispatchQueue: DispatchQueue?

    func perform() {
    }

    func invalidate() {
    }

    init() {
        self.completionHandler = nil
        self.dispatchQueue = nil
    }

    init(completionHandler: CTSelfTracingInfoGetCompletion?, dispatchQueue: DispatchQueue?) {
        self.completionHandler = completionHandler
        self.dispatchQueue = dispatchQueue
    }
}
