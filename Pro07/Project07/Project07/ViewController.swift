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
        self.init_textView();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: 
    // MARK: private methods -
    
    func setTextViewBound() {
        
        let contentSize:CGSize = textView.sizeThatFits(textView.bounds.size);
        var frame = self.textView.frame
        frame.size.height = contentSize.height
        self.textView.frame = frame

        print(contentSize);
//        let descriptionSize : CGSize = textView.contentSize;
//        print(textView.contentSize);
//        print(textViewHeightConstraint);
        textViewHeightConstraint.constant = contentSize.height;
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

