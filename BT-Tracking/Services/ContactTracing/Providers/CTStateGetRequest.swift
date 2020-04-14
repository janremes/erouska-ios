//
//  CTStateGetRequest.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Requests whether contact tracing is on or off on the device.
@objc protocol CTStateGetRequest: class {

    /// This property holds the completion handler that framework invokes when the request completes. The property is cleared upon completion to break any potential retain cycles.
    var completionHandler: CTErrorHandler? { get }


    /// This property holds the the dispatch queue used to invoke handlers on. If this property isn't set, the framework uses the main queue.
    var dispatchQueue: DispatchQueue? { get}


    /// This property contains the snapshot of the state when the request was performed. It's valid only after the framework invokes the completion handler.
    var state: Int32 { get }


    /// Asynchronously performs the request to get the state, and invokes the completion handler when it's done.
    func perform()


    /// Invalidates a previously initiated request. If there is an outstanding completion handler, the framework will invoke it with an error.
    /// Don't reuse the request after this is called. If you require another request, create a new one.
    func invalidate()

    init()
}

class CTStateGetRequestProvider: CTStateGetRequest {
    var completionHandler: CTErrorHandler?
    var dispatchQueue: DispatchQueue?
    var state: Int32

    func perform() {

    }

    func invalidate() {

    }

    required init() {
        self.completionHandler = nil
        self.dispatchQueue = nil
        self.state = 1
    }

    init(state: Int32, dispatchQueue: DispatchQueue?, completionHandler: CTErrorHandler?) {
        self.state = state
        self.dispatchQueue = dispatchQueue
        self.completionHandler = completionHandler
    }
}
