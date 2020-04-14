//
//  ContactTracingDelegate.swift
//  BT-Tracking
//
//  Created by Jan Remes on 14/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation


@objc protocol ContactTracingManagerDelegate: class {
    @objc optional func contactTacingManager(_ manager: ContactTracingManager,
                                             didChangeState state: CTManagerState)
    @objc optional func contactTacingManager(_ manager: ContactTracingManager,
                                             didChangeAuthorization authorized: Bool)
    @objc optional func contactTacingManager(_ manager: ContactTracingManager,
                                             didFailWithError error: Error)
    @objc optional func contactTacingManager(_ manager: ContactTracingManager,
                                             didReceiveExposureDetectionSummary summary: CTExposureDetectionSummary)
    @objc optional func contactTacingManager(_ manager: ContactTracingManager,
                                             didReceiveContactInformation contactInfo: [CTContactInfo])
}
