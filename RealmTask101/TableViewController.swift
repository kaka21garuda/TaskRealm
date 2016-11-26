//
//  TableViewController.swift
//  RealmTask101
//
//  Created by Buka Cakrawala on 11/23/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//


import UIKit
import RealmSwift


class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addObjectToRealm()
        queryAllMessages()
    }
    
    func addObjectToRealm() {
        let firstTask = Task()
        firstTask.name = "Hello"
        firstTask.notes = "World"
        
        let secondTask = Task()
        secondTask.name = "Good"
        secondTask.notes = "Morning"
        
        let thirdTask = Task()
        thirdTask.name = "Hey,"
        thirdTask.notes = "whatsup!"
        
        let realm = try! Realm()
        
        try! realm.write({ 
            realm.add(firstTask)
            realm.add(secondTask)
            realm.add(thirdTask)
            print("Added \(firstTask.name) to realm database.")
        })
    }
    
    func queryAllMessages() {
        let realm = try! Realm()
        
        let allMessages = realm.objects(Task)
        for message in allMessages {
            print("message: \(message.name) \(message.notes)")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell!
        cell?.titleLabel.text = "TitleLabel"
        return cell!
    }
}
