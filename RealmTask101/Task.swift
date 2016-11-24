//
//  Task.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/23/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    //Prefixed dynamic by var, to make these properties accessors for the underlying database data.
    dynamic var name = ""
    dynamic var createAt = Date()
    dynamic var notes = ""
    dynamic var isCompleted = false
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
