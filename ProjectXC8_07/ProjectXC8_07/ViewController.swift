//
//  ViewController.swift
//  ProjectXC8_07
//
//  Created by GIGIGUN on 9/18/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imagePickerBtn: UIBarButtonItem!

    let imagePicker = UIImagePickerController();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imagePickerClicked(_ sender: AnyObject) {
        
        imagePicker.allowsEditing = false;
        imagePicker.sourceType = .photoLibrary;
        
        present(imagePicker, animated: true, completion: nil);
    }
    
    // MARK: - UIImagePickerControllerDelegate Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFill
            imageView.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    
    }


}

