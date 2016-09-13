//
//  TextInputViewController.swift
//  ProjectXC8_05
//
//  Created by GIGIGUN on 9/13/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class TextInputViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var keyboardToolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.inputAccessoryView = keyboardToolbar;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneBtnClicked(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil);
    }

    @IBAction func toolbarDoneBtnClicked(_ sender: AnyObject) {
        textView.resignFirstResponder();
    }
    
    @IBAction func cancelBtnClicked(_ sender: AnyObject) {
        
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
