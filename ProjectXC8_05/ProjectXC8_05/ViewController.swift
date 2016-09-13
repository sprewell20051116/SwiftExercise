//
//  ViewController.swift
//  ProjectXC8_05
//
//  Created by GIGIGUN on 9/13/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray: [String] = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                               "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                               "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                               "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                               "Pear", "Pineapple", "Raspberry", "Strawberry"];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: tableView datasource
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


}

