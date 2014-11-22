//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/6/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var selectedPerson: Person? // Student's names to display
    var imagePickerController = UIImagePickerController()

    // first name & last Name text field and imageView outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we're our own delegate
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        
        // paint it light grey
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // display Person's full name as scene title
        self.title = self.selectedPerson?.getFullName()
        
        self.firstNameTextField.text = selectedPerson?.firstName
        self.lastNameTextField.text = selectedPerson?.lastName
        
        if selectedPerson?.image != nil {
            self.imageView.image = selectedPerson?.image
        }
  
        // Do any additional setup after loading the view.
    } // viewDidLoad()
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.selectedPerson?.firstName = self.firstNameTextField.text
        self.selectedPerson?.lastName = self.lastNameTextField.text
    }
    
    // resign as first responder when return key entered
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    } // textFieldShouldReturn()

    // what to do when the camera button is pressed
    @IBAction func cameraButtonPressed(sender: AnyObject) {
        
        // is camera available?
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
            
            self.imagePickerController.delegate = self
            
            self.imagePickerController.allowsEditing = true
            
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
        } // camera available
    } //cameraButtonPressed()
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        let image = info[UIImagePickerControllerEditedImage] as UIImage
        
        // reset the imageViewImage
        self.imageView.image = image
        
        // we're done
        imagePickerController.dismissViewControllerAnimated(true, completion: nil)
        
        // set the selected Person's image
        self.selectedPerson?.image = image
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // class DetailViewController
