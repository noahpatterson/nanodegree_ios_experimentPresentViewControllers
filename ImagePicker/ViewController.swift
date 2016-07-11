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

}

