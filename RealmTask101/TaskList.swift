//
//  TaskList.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/23/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import RealmSwift

//This TaskList class is to stored all the task from the Task class model.
class TaskList: Object {
    
    dynamic var name = ""
    dynamic var createdAt = Date()
    //created tasks array property
    let tasks = List<Task>()
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}

//MARK: List<T> is generic data type and that’s why we didn’t add dynamic before declaring tasks property because the generic properties can’t be represented in Objective-C runtime.
