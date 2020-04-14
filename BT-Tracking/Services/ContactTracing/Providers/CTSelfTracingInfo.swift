//
//  CTSelfTracingInfo.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Contains the Daily Tracing Keys.
@objc protocol CTSelfTracingInfo: class {

    /// Daily tracing keys available at the time of the request.
    var dailyTracingKeys: [CTDailyTracingKey] { get }
}

class CTSelfTracingInfoProvider: CTSelfTracingInfo {
    var dailyTracingKeys: [CTDailyTracingKey]

    init(dailyTracingKeys: [CTDailyTracingKey]) {
        self.dailyTracingKeys = dailyTracingKeys
    }
}
