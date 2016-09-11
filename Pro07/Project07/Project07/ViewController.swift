//
//  ViewController.swift
//  Project07
//
//  Created by GIGIGUN on 9/5/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var textViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var textView: UITextView!
    @IBOutlet var textToolbar: UIToolbar!
    @IBOutlet var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
    
        super.viewDidAppear(animated);
        self.init_textView();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: 
    // MARK: private methods -
    
    func setTextViewBound() {
        
        var bountSize : CGSize = textView.bounds.size;
        bountSize.width = self.view.frame.size.width - 10;
        bountSize.height = self.view.frame.size.height;
        print(bountSize.width);
        
        let contentSize:CGSize = textView.sizeThatFits(CGSizeMake(200.0, 200.0));
        
        
        let insets: UIEdgeInsets = textView.textContainerInset;	
        print(insets)
        textViewHeightConstraint.constant = textView.contentSize.height + insets.top + insets.bottom;
        print(textViewHeightConstraint);
    }
    
    func init_textView() {
        self.setTextViewBound();
        textView.inputAccessoryView = textToolbar;
        
    }
    
    @IBAction func textDoneBtnClicked(sender: UIBarButtonItem) {
        textView.resignFirstResponder();
    }
    
    @IBAction func imagePickerClicked(sender: AnyObject) {
        
    }
    
}

