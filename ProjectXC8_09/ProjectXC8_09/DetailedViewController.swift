//
//  DetailedViewController.swift
//  ProjectXC8_09
//
//  Created by GIGIGUN on 9/20/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit
import CoreData

class DetailedViewController: UIViewController {
    @IBOutlet var textVIew: UITextView!

    @IBOutlet var cancelBtn: UIBarButtonItem!
    @IBOutlet var doneBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneBtn.target = self;
        cancelBtn.target = self;
        doneBtn.action = #selector(doneBtnClicked(sender:));
        cancelBtn.action = #selector(cancelBtnClicked(sender:));

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doneBtnClicked(sender : Any) {
        print(#function);
        
        let newsObj = CoreDataModel().getNewNewsObj();

        newsObj.date = NSDate();
        newsObj.title = "Title \(NSDate())";
        newsObj.detailed = textVIew.text;
        
        CoreDataModel().saveAllContext();

        self.dismiss(animated: true, completion: nil);
    }
    
    func cancelBtnClicked(sender : Any) {
        print(#function);
        self.dismiss(animated: true, completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
