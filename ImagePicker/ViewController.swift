//
//  ViewController.swift
//  ImagePicker
//
//  Created by Noah Patterson on 7/11/16.
//  Copyright © 2016 Noah Patterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePickerButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func presentImagePicker(sender: AnyObject) {
        
        let imagePickerVC = UIImagePickerController()
        
        self.presentViewController(imagePickerVC, animated: true, completion: nil)
    }
    
    @IBAction func openAction(sender: AnyObject) {
        let image = UIImage()
        let actionVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        self.presentViewController(actionVC, animated: true, completion: nil)
    }

    @IBAction func alert(sender: AnyObject) {
        let alertVC = UIAlertController(title: "Alert!", message: "This is an alert", preferredStyle: .ActionSheet)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .Cancel, handler: {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        })
        
        alertVC.addAction(dismissAction)
        
        self.presentViewController(alertVC, animated: true, completion: nil)
    }
}

