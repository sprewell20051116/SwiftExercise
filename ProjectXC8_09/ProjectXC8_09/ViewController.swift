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
    var newsDataArray : [News] = CoreDataModel().readObj();
    @IBOutlet var addBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.rowHeight = UITableViewAutomaticDimension;
        TableView.estimatedRowHeight = 300;
        
        addBtn.target = self;
        addBtn.action = #selector(addBtnClicked);
    }

    override func viewWillAppear(_ animated: Bool) {
        newsDataArray = CoreDataModel().readObj();
        TableView.reloadData();
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

        cell.detailedLab?.text = newsDataArray[indexPath.row].detailed;
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return newsDataArray.count;
    }
    
    // MARK: - tableView delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
        
        presentDetailedPage(edit : true);
    }
    
    // MARK: - private methods
    func addBtnClicked(sender : Any) {
        print(#function);
        presentDetailedPage(edit : false);
    }
    
    func presentDetailedPage(edit : Bool) {
        
        let detailedPage : DetailedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController;
        self.present(detailedPage, animated: true, completion: nil);

    }
    
    
//
//    
//    // MARK: - CoreData
//    func testForCoredata() {
//        let coreData = CoreDataModel();
////        coreData.saveObj();
////        coreData.readObj();
//        newsDataArray = coreData.readObj();
//    }
//

}

