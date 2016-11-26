//
//  Task.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/25/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    
    dynamic var name = ""
    dynamic var notes = ""
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
