//
//  ViewController.swift
//  ProjectXC8_08
//
//  Created by GIGIGUN on 9/19/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TableView: UITableView!
    let contentArray : Array = [
        "You probably already know the name FLOR, which has become synonymous with modular rug tiles, and they’re constantly innovating and changing it up to consistently be the leader in custom, affordable rug designs. ",
        "Apple have made the great improvements in the Interface Builder in Xcode 8. Using the size classes became more intuitive, ability to zoom your storyboard is very convenient, and the full preview right in the Interface Builder is just amazing. For those who were hesitant about using Interface Builder, this may become a deal breaker.",
        "On the other hand, many developers still have some troubles ",
        "In this article, I will share some of the good practices when you deal with storyboards and nibs in your project. Either you was using Interface Builder before, or you just making the first step in this direction, these tips may be useful for you.",
        "1. If you work in team, use separate storyboard for every screen. If you work alone, it’s still a good habit.",
        "This looks good from the designer stand-point: you can easily see the complete UI and navigation flow. That’s exactly what the Interface Builder was created for.",
        "Make sure your storyboard file has the same name as the actual class. Otherwise, the app will crash when you try to create a reference to this storyboard."];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.rowHeight = UITableViewAutomaticDimension;
        TableView.estimatedRowHeight = 300;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - tableView dataSource
    func tableView(_ tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : baseTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "CusomizeCell", for: indexPath as IndexPath) as! baseTableViewCell;
        if cell == nil {
            cell = baseTableViewCell.init(style: .value1, reuseIdentifier: "CusomizeCell");
        }
        cell.titleImageView.image = UIImage.init(named: "Cha0\(indexPath.row)");
        cell.contentLab?.text = contentArray[indexPath.row];
    
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return contentArray.count;
    }
    
}

