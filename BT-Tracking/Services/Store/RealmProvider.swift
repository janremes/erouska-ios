//
//  RealmProvider.swift
//  BT-Tracking
//
//  Created by Tomas Svoboda on 08/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import Foundation
import RealmSwift

class RealmProvider {
    
    var configuration: Realm.Configuration {
        return Realm.Configuration(encryptionKey: key)
    }
    
    private var key: Data {
        return Data()
    }
}
