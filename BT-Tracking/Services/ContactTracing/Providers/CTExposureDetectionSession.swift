//
//  CTExposureDetectionSession.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Performs exposure detection bad on previously collected proximity data and keys.
@objc protocol CTExposureDetectionSession : class {


    /// This property holds the the dispatch queue used to invoke handlers on. If this property isn't set, the framework uses the main queue.
    var dispatchQueue: DispatchQueue? { get }


    /// This property contains the maximum number of keys to provide to this API at once. This property's value updates after each operation complete and before the completion handler is invoked. Use this property to throttle key downloads to avoid excessive buffering of keys in memory.
    var maxKeyCount: Int { get }


    /// Activates the session and requests authorization for the app with the user. Properties and methods cannot be used until this completes successfully.
    func activate(completion inCompletion: CTErrorHandler?)


    /// Invalidates the session. Any outstanding completion handlers will be invoked with an error. The session cannot be used after this is called. A new session must be created if another detection is needed.
    func invalidate()


    /// Asynchronously adds the specified keys to the session to allow them to be checked for exposure. Each call to this method must include more keys than specified by the current value of <maxKeyCount>.
    func addPositiveDiagnosisKeys(_ inKeys: [CTDailyTracingKey], completion inCompletion: CTErrorHandler?)


    /// Indicates all of the available keys have been provided. Any remaining detection will be performed and the completion handler will be invoked with the results.
    func finishedPositiveDiagnosisKeys(completion inFinishHandler: CTExposureDetectionFinishHandler?)

    /// Obtains information on each incident. This can only be called once the detector finishes. The handler may be invoked multiple times. An empty array indicates the final invocation of the hander.
    func getContactInfo(handler inHandler: CTExposureDetectionContactHandler?)
}

class CTExposureDetectionSessionProvider: CTExposureDetectionSession {
    
    var dispatchQueue: DispatchQueue?
    var maxKeyCount: Int

    init() {
        self.dispatchQueue = nil
        self.maxKeyCount = 100
    }

    init(maxKeyCount: Int, dispatchQueue: DispatchQueue?) {
        self.maxKeyCount = maxKeyCount
        self.dispatchQueue = dispatchQueue
    }

    func activate(completion inCompletion: CTErrorHandler?) {
    }

    func invalidate() {
    }

    func finishedPositiveDiagnosisKeys(completion inFinishHandler: CTExposureDetectionFinishHandler?) {
    }

    func getContactInfo(handler inHandler: CTExposureDetectionContactHandler?) {
    }

    func addPositiveDiagnosisKeys(_ inKeys: [CTDailyTracingKey], completion inCompletion: CTErrorHandler?) {
    }
}
