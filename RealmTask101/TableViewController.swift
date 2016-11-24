//
//  TableViewController.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/23/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//


import UIKit
import Realm

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let taskA = TaskList()
        taskA.name = "Wishlist"
        
        let item1 = Task()
        item1.name = "item1"
        item1.notes = "This is item number 1"
        
        let item2 = Task(value: ["name": "item2", "notes": "This is item number 2"])
        
        taskA.tasks.append(item1)
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        return cell
    }
}
