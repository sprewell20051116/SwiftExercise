//
//  ViewController.swift
//  Project01
//
//  Created by GIGIGUN on 8/20/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TabBtn: UIButton!
    @IBOutlet var countLab: UILabel!
    
    var timer:NSTimer!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TabBtn.addTarget(self, action: #selector(self.tapBtnLongPressed(_:)), forControlEvents: .TouchDown);
        

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
        print(#function);
        
        // TODO: Stop the timer
        timer.invalidate();

    }

    func tapBtnLongPressed(sender:AnyObject) {
        print(#function);
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(self.testTimer), userInfo: nil, repeats: true);
        
    }
    
    func testTimer(sender:AnyObject) {
        
        // TODO: Start timer
        print(#function);

        if let countInt = Int(self.countLab.text!) {
            print(countInt);
            countLab.text = String(countInt + 1);
        }

    }
    
    
}
