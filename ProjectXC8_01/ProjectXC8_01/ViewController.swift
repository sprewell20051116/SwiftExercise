//
//  ViewController.swift
//  ProjectXC8_01
//
//  Created by GIGIGUN on 9/11/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resetBtn: UIBarButtonItem!
    @IBOutlet var tapHereBtn: UIButton!
    @IBOutlet var countLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.init_UiItems();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func init_UiItems() {
        countLab.text = "0";
        resetBtn.action = #selector(resetBtnClicked);
        resetBtn.target = self;
        tapHereBtn.addTarget(self, action: #selector(tapHereBtnClicked), for: .touchUpInside);

    }
    
    func resetBtnClicked(sender : Any) {
//        print(#function);
        countLab.text = "0";
    }

    func tapHereBtnClicked(sender : Any) {
//        print(#function);
        if let intValue = Int(countLab.text!) {
            countLab.text = String(intValue + 1);
        } else {
            print("Not Int value text");
        }
    }
}

