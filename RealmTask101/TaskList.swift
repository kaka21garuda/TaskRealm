//
//  TaskList.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/24/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import RealmSwift

class TaskList: Object {
    dynamic var name = ""
    dynamic var createdAt = NSDate()
    let tasks = List<Task>()
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
