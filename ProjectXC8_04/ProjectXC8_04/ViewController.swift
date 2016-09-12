//
//  ViewController.swift
//  ProjectXC8_04
//
//  Created by GIGIGUN on 9/12/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataArray: [String] = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                               "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                               "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                               "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                               "Pear", "Pineapple", "Raspberry", "Strawberry"];
    
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var addBtn: UIBarButtonItem!
    @IBOutlet var editBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addBtn.target = self;
        addBtn.action = #selector(addBtnClicked);
        editBtn.target = self;
        editBtn.action = #selector(editBtnClicked);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath);
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "Cell");
        }
        
        cell.textLabel?.text = dataArray[indexPath.row];
        
        return cell
    }
    
    // MARK: bar button action
    func addBtnClicked(sender : Any) {
        print(#function);
    }
    
    func editBtnClicked(sender : Any) {
        tableView.setEditing(!tableView.isEditing, animated: true);
    }
    
    func tableView(_ tableView: UITableView,
                   editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
    {
        return .delete;
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true;
    }
    
    func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath,
                   toIndexPath destinationIndexPath: NSIndexPath)
    {
        let itemToMove = dataArray[sourceIndexPath.row];
        dataArray.remove(at: sourceIndexPath.row);
        dataArray.insert(itemToMove, at: destinationIndexPath.row);
    }
    
}

