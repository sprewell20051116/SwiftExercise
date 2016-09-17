//
//  ViewController.swift
//  ProjectXC8_06
//
//  Created by GIGIGUN on 9/17/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var tipResultLab: UILabel!
    @IBOutlet var tipPercentLab: UILabel!
    @IBOutlet var totalResultLab: UILabel!
    @IBOutlet var toolbar: UIToolbar!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        ui_init();

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Init
    func ui_init() {
        tipPercentLab.text = "Tip (15%)";
        tipResultLab.text = "$0.00";
        totalResultLab.text = "$0.00";
        numberTextField.inputAccessoryView = toolbar;
        slider.setValue(0.15, animated: true);
    }

    
// MARK: UI Action
    @IBAction func slideValueChanged(_ sender: AnyObject) {
        calculateForLabs();
    }
    @IBAction func doneBtnClicked(_ sender: AnyObject) {
        numberTextField.resignFirstResponder();

    }
    
// MARK: Private mathods
    func calculateForLabs() {
        
        if let floatNumber:Float = Float(numberTextField.text!){
            
            let sliderValueString : String = String(format: "%.2f", (slider.value) * 100);
            let tipResultString : String = String(format: "%.2f", (floatNumber * (slider.value)));
            let totalResultString : String = String(format: "%.2f", (floatNumber * (slider.value) + floatNumber));

            
            tipPercentLab.text = "Tip (\(sliderValueString)%)";
            tipResultLab.text = "$\(tipResultString)";
            totalResultLab.text = "$\(totalResultString)";

        } else {
//            print("\(#function) text is not number");
        }
    }

// MARK: textField delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        numberTextField.resignFirstResponder();
        return true;
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField)
    {
        if (0 != textField.text?.characters.count) {
            numberTextField.text = "$ \(textField.text!)";
        }
    }

    @IBAction func textFieldEditingChanged(_ sender: AnyObject) {
        
        calculateForLabs();
    }
}

