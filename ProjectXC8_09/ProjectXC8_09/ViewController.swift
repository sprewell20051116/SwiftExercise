//
//  ViewController.swift
//  ProjectXC8_09
//
//  Created by GIGIGUN on 9/20/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.rowHeight = UITableViewAutomaticDimension;
        TableView.estimatedRowHeight = 300;
        // Do any additional setup after loading the view, typically from a nib.
        
        testForCoredata();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - tableView dataSource
    func tableView(_ tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : BaseTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as! BaseTableViewCell;
        
        if cell == nil {
            cell = BaseTableViewCell.init(style: .value1, reuseIdentifier: "Cell");
        }

        cell.detailedLab?.text = "You probably already know the name FLOR, which has become synonymous with modular rug tiles, and they’re constantly innovating and changing it up to consistently be the leader in custom, affordable rug designs. ";
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10;
    }
    
    // MARK: - tableView delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
        
        let detailedPage : DetailedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController;
        self.present(detailedPage, animated: true, completion: nil);

    }

    
    // MARK: - CoreData
    func testForCoredata() {
        let coreData = CoreDataModel();
//        coreData.saveObj();
        coreData.readObj();
    }


}

