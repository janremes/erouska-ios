//
//  ContactTracing.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation

/// The type definition for the completion handler.
typealias CTErrorHandler = (Error?) -> Void

/// The type definition for the completion handler.
typealias CTExposureDetectionFinishHandler = (CTExposureDetectionSummary?, Error?) -> Void

/// The type definition for the completion handler.
typealias CTExposureDetectionContactHandler = ([CTContactInfo]?, Error?) -> Void

/// The type definition for the completion handler.
typealias CTSelfTracingInfoGetCompletion = (CTSelfTracingInfo?, Error?) -> Void


@objc enum CTManagerState: Int32 {
    case unknown
    case on
    case off
}
