//
//  Task.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/24/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    
    dynamic var name = ""
    dynamic var createdAt = NSDate()
    dynamic var notes = ""
    dynamic var isCompleted = false
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
