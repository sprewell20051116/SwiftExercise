//
//  ViewController.swift
//  Project06
//
//  Created by GIGIGUN on 9/2/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaultTip:Float = 0.15;
    
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var tipResultLab: UILabel!
    @IBOutlet var tipLab: UILabel!
    @IBOutlet var totalLab: UILabel!
    @IBOutlet var totalResultLab: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated);
        initUI();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(sender: UISlider) {
        setLabs();
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        return true;
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true;
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true;
    }
    
    // MARK: Private methods
    func initUI() {
        tipLab.text = "Tip (\(defaultTip * 100)%) : ";
        totalLab.text = "Total : ";
        tipResultLab.text = "$0.00";
        totalResultLab.text = "$0.00";
        slider.value = defaultTip;
    }
    
    func setLabs() {
        tipLab.text = "Tip (\(slider.value * 100)%) : ";
        totalLab.text = "Total : ";
        tipResultLab.text = "$0.00";
        totalResultLab.text = "$0.00";
    }

    
}

