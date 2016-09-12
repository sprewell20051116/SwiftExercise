//
//  ViewController.swift
//  ProjectXC8_02
//
//  Created by GIGIGUN on 9/11/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resetBtn: UIBarButtonItem!
    @IBOutlet var holdHereBtn: UIButton!
    @IBOutlet var countLab: UILabel!
    
    // [Casper] Add Timer for add value in countLab
    // Swift3.0 change NSTimer to Timer
    var timer:Timer!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        init_UiItem();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func init_UiItem() {
        
        resetBtn.target = self;
        resetBtn.action = #selector(resetBtnClicked);
        countLab.text = "0";
        holdHereBtn.addTarget(self, action: #selector(holdHereBtnAction), for: UIControlEvents.touchDown);
        holdHereBtn.addTarget(self, action: #selector(holdHereBtnReleased), for: UIControlEvents.touchUpInside);

    }
    
    func resetBtnClicked(sender : Any)  {
        countLab.text = "0";
    }
    
    func holdHereBtnReleased(sender:Any) {
        timer.invalidate();
    }
    
    func holdHereBtnAction(sender : Any)  {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(testTimer), userInfo: nil, repeats: true);
        
    }
    
    
    func testTimer(sender:AnyObject) {
        
        if let countInt = Int(self.countLab.text!) {
            print(countInt);
            countLab.text = String(countInt + 1);
        }
        
    }
    
}

