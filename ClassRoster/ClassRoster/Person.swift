//
//  Person.swift
//  ClassRoster
//
//  Created by John Leonard on 11/4/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import Foundation

/*
 *  Define a class, Person:
 *
 *  Atrributes:
 *      firstName:  person's first name
 *      lastName:   person's last name
 *      enrolled:   true if person is enrolled as a student
 *
 *  Methods:
 *      getFullName():  returns a string containing the person's first and last names,
 *                      separated by a space.
*/

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
