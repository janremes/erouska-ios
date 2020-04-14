//
//  CTDailyTracingKey.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// The Daily Tracing Key object.
@objc protocol CTDailyTracingKey: class {

    /// This property contains the Daily Tracing Key information.
    var keyData: Data { get }
}

class CTDailyTracingKeyProvider: CTDailyTracingKey {

    let keyData: Data

    init(keyData: Data) {
        self.keyData = keyData
    }
}
