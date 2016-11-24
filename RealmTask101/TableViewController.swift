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
    
    @IBAction func plusButton(_ sender: Any) {
        
    }
    
    var tasks: RLMResults<RLMObject> {
        get {
            return Task.allObjects()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(tasks.count)
    }
    
   
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        let index = indexPath.row
        let taskItem = tasks.object(at: UInt(index)) as! Task
        cell.textLabel?.text = taskItem.name
        
        return cell
    }
}
