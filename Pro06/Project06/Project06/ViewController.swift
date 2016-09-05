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
    @IBOutlet var keyboardToolbar: UIToolbar!
    
    
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
        
        numberTextField.inputAccessoryView = keyboardToolbar;
    }
    
    func setLabs() {
        if let numberInt = Float(self.numberTextField.text!) {
            
            print(numberInt);
            tipResultLab.text = "$\(slider.value * numberInt)";
            totalResultLab.text = "$\(numberInt + (slider.value * numberInt))";

        } else {
            print("textField is not number");
        }
        
        tipLab.text = "Tip (\(slider.value * 100)%) : ";
        totalLab.text = "Total : ";
        
    }

    @IBAction func keyboarDoneBtnClicked(sender: AnyObject) {
        
        //
        // Casper Note 
        // optional is really pain in my ass
        //
        numberTextField.resignFirstResponder();
        if numberTextField.text?.characters.count != 0 {
            numberTextField.text = "$\(numberTextField.text!)";
        }
    
    }
    
}

