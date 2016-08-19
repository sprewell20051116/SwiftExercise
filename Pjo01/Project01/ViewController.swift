//
//  ViewController.swift
//  Project01
//
//  Created by GIGIGUN on 8/20/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetBtnClicked(sender: AnyObject) {
        countLab.text = "0";
    }
    
    @IBAction func tapToAddBtnClicked(sender: AnyObject) {
        if let countInt = Int(self.countLab.text!) {
            print(countInt);
            countLab.text = String(countInt + 1);
        }
    }
}
