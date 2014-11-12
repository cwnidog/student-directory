//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/6/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    // Text Field Outlets for first & last names
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var selectedPerson = Person() // Student's names to display

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we're our own delegate for text fields
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        
        // paint it light grey
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // display Person's full name as scene title
        self.title = self.selectedPerson.getFullName()
        

        // Do any additional setup after loading the view.
    } // viewDidLoad()
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
