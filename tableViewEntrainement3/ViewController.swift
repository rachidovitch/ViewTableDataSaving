//
//  ViewController.swift
//  tableViewEntrainement3
//
//  Created by mac on 29/08/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddtoDoViewControllerDelegate {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    var myList = [todoItems]()
    
    // Mark: Add to Delegate
    
    func addNew(todo: todoItems) {
        
        myList.append(todo)
        myTableView.reloadData()
    }
    
    // Mark: navigation methods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "addToSegue" {
            let desVC = segue.destinationViewController as! AddToDoViewController
            
            desVC.delegate = self
        }
        
    }
    
    
    
    // Mark : Add Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tab = todoItems(name: "Rachid", note: "0668313349")
        
        myList.append(tab)
        myList.append(todoItems(name: "Mounir", note: "0668313345"))
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("identifier")! as UITableViewCell
        
        let todo = myList[indexPath.row]
        
        cell.textLabel?.text = todo.name
        
        cell.detailTextLabel?.text = todo.note
        
        return cell
    }
    


}

