//
//  ViewController.swift
//  Project03
//
//  Created by GIGIGUN on 8/24/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var editBtn: UIBarButtonItem!
    
    var dataArray: [String] = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                "Pear", "Pineapple", "Raspberry", "Strawberry"];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editBtn.target = self;
        editBtn.action = #selector(editBtnClicked(_:));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("Cell");
        if (cell == nil) {
            cell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier:"Cell");
        }
        
        cell!.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator;
        cell!.textLabel?.text = dataArray[indexPath.row];
        return cell!;
    }

// MARK: tableView editing -
    func editBtnClicked(sender : UIBarButtonItem){
        tableView.setEditing(!tableView.editing, animated: true);
    }
    
 
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .Delete;
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        dataArray.removeAtIndex(indexPath.row);
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade);
        
    }
    
    // [Casper] canMoveRowAtIndexPath and moveRowAtIndexPath should both implement to active reorder function
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true;
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        let itemToMove = dataArray[fromIndexPath.row]
        dataArray.removeAtIndex(fromIndexPath.row)
        dataArray.insert(itemToMove, atIndex: toIndexPath.row)
        
    }
    
// MARK: View transition
    
    @IBAction func addBarBtnClicked(sender: AnyObject) {
        self.performSegueWithIdentifier("textInputViewController", sender: nil);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(#function);
    }
}

