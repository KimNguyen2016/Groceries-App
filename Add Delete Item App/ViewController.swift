//
//  ViewController.swift
//  Add Delete Item App
//
//  Created by Kim Nguyen on 2016-09-10.
//  Copyright © 2016 Kim Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var items: [String] = ["Apple", "Banana", "Tomato", "Grape"]

    @IBAction func addItemClick(sender: AnyObject) {
        alert()
    }
    
    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("listItem") as! ItemTableViewCell
        cell.itemLabel.text = items[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func alert(){
        
        let alert = UIAlertController(title: "", message: "", preferredStyle: .Alert)
        
        alert.addTextFieldWithConfigurationHandler {
            (textfield) in
            textfield.placeholder = "Enter your item name :"
        }
        
        let add = UIAlertAction(title: "Add", style: .Default){
            (action) in
            let textfield = alert.textFields![0] as! UITextField
            self.items.append(textfield.text!)
            self.listTableView.reloadData()
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) {
            (alert) in
            print("Hi")
        }
        
        alert.addAction(add)
        alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        items.removeAtIndex(indexPath.row)
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

