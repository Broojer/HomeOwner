//
//  ItemViewController.swift
//  HomeOwner
//
//  Created by Student on 4/20/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit


class ItemViewController: UITableViewController
    
{

    
    var itemStore: ItemStore!

    
    
    
    @IBAction func addNewItem(sender: AnyObject) {
        
       // let lastRow = tableView.numberOfRowsInSection(0)
        
        //let indexPath = NSIndexPath(forRow: lastRow, inSection: 0)
        
        
        
    }
    
    
    
    @IBAction func editingMode(sender: AnyObject) {
       if editing {
            sender.setTitle("Edit", forState: .Normal)
            
            
            setEditing(false, animated: true)
            
            
        } else {
            
            sender.setTitle("Done", forState: .Normal)
            
            
            
            setEditing(true, animated: true)
            
       }
    }
    
    
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //  let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        
    }
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return itemStore.allItems.count
        
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       
        /*
        
        let cell2 = UITableViewCell(style: .Value2, reuseIdentifier: "UITableViewCell")
        
        let item = itemStore.allItems[indexPath.row]
        
       
        cell2.textLabel?.text = item.name
        
        cell2.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell2
        
        
        */
    
    
    
    
    let cell = tableView.dequeueReusableCellWithIdentifier("UITableVieCell", forIndexPath: indexPath)
    let item = itemStore.allItems[indexPath.row]
    
    cell.textLabel?.text = item.name
    cell.detailTextLabel?.text = "$\(item.valueInDollars)"
    
    return cell
    
    
    
    
    }
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            let item = itemStore.allItems[indexPath.row]
            itemStore.removeItem(item)
            
            
        }
    }
    
    

    
    

    
}









