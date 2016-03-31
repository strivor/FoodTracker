//
//  ViewController.swift
//  foodmenu
//
//  Created by 江小威 on 16/3/28.
//  Copyright © 2016年 xavier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //mark properties
    @IBOutlet weak var nameTextFeild: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // 
        nameTextFeild.delegate = self
    }
    //mark UITextFeildDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text =  textField.text
    }
    //mark UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoImageView.image = selectImage
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    //mark actions

    @IBAction func SetDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        nameTextFeild.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
}

