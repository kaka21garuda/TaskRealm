//
//  Task.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/24/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import Foundation
import Realm


class Task: RLMObject {
    dynamic var name = ""
    dynamic var finished = false
}
