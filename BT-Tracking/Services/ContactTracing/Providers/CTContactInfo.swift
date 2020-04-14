//
//  CTContactInfo.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Contains information about a single contact incident.
@objc protocol CTContactInfo: class {

    /// How long the contact was in proximity. Minimum duration is 5 minutes and increments by 5 minutes: 5, 10, 15, etc.
    var duration: TimeInterval { get }

    /// This property contains the time when the contact occurred. This may have reduced precision, such as within one day of the actual time.
    var timestamp: CFAbsoluteTime { get }
}


class CTContactInfoProvider: CTContactInfo {
    let duration: TimeInterval
    let timestamp: CFAbsoluteTime

    init(duration: TimeInterval, timestamp: CFAbsoluteTime) {
        self.duration = duration
        self.timestamp = timestamp
    }
}


