//
//  CTExposureDetectionSummary.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// Provides a summary on exposures.
@objc protocol CTExposureDetectionSummary: class {

    /// This property holds the number of keys that matched for an exposure detection.
    var matchedKeyCount: Int { get }
}

class CTExposureDetectionSummaryProvider: CTExposureDetectionSummary {
    var matchedKeyCount: Int

    init(matchedKeyCount: Int) {
        self.matchedKeyCount = matchedKeyCount
    }
}
