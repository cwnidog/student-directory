//
//  ViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/1/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class Person {
        var firstName = "John"
        var lastName = "Doe"
        var isStudent = false
        
        init(first: String, last: String, enrolled: Bool) {
            self.firstName = first
            self.lastName = last
            self.isStudent = enrolled
        } // init()
        
        func getFullName() -> String {
            return self.firstName + " " + self.lastName
        } // getFullName()
        
    } // Person
    
    var myPerson = Person(first: "Peter", last: "Parker", enrolled: true)
    
    @IBAction func showFullName() {
        println(self.myPerson.getFullName())
    } // showFullName()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

