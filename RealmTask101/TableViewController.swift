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
    
    let realm = try! Realm()
    
    
    @IBAction func plusButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Notes", message: "Enter your message here", preferredStyle: .alert)
        alertController.addTextField { (nameTextField) in
            nameTextField.placeholder = "Enter your title"
        }
        alertController.addTextField { (notesTextField) in
            notesTextField.placeholder = "Enter your notes"
        }
        alertController.addAction(UIAlertAction(title: "write", style: .default, handler: { (action) in
            let nameText = alertController.textFields?.first
            let notesText = alertController.textFields?.last
            
            var newObject = Task()
            newObject.name = (nameText?.text)!
            newObject.notes = (notesText?.text)!
            
            try! self.realm.write({
                self.realm.add(newObject)
            })
            self.dismiss(animated: true, completion: nil)
            self.tableView.reloadData()
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let allMessages = realm.objects(Task)
        return allMessages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell!
        let allMessages = realm.objects(Task)
        cell?.titleLabel.text = allMessages[indexPath.row].name
        return cell!
    }
}
