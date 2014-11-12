//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/6/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    var selectedPerson = Person() // Student's names to display

    // first name & last Name text field outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we're our own delegate
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        
        // paint it light grey
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // display Person's full name as scene title
        self.title = self.selectedPerson.getFullName()
  
        // Do any additional setup after loading the view.
    } // viewDidLoad()
    
    // resign s first responder when return key entered
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    } // textFieldShouldReturn()


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // class DetailViewController
