//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/6/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // label Outlets
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    
    var selectedPerson = Person() // Student's names to display

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // paint it red
        self.view.backgroundColor = UIColor.redColor()
        
        // display Person's full name as scene title
        self.title = self.selectedPerson.getFullName()
        
        // fill in the names
        self.firstNameLabel.text = selectedPerson.firstName
        self.lastNameLabel.text = selectedPerson.lastName
        

        // Do any additional setup after loading the view.
    } // ()viewDidLoad


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // class DetailViewController
