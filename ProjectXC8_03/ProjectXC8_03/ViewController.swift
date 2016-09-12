//
//  ViewController.swift
//  ProjectXC8_03
//
//  Created by GIGIGUN on 9/12/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dataArray : [String] = ["We", "Hear", "Swift"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath);
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: "Cell");
        }
        cell.textLabel?.text = dataArray[indexPath.row];
        return cell;
    }
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return dataArray.count;
    }

}

