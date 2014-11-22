//
//  Person.swift
//  ClassRoster
//
//  Created by John Leonard on 11/4/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import Foundation
import UIKit

/*
 *  Define a class, Person:
 *
 *  Atrributes:
 *      firstName:  person's first name
 *      lastName:   person's last name
 *      enrolled:   true if person is enrolled as a student
 *
 *  Inits:
 *      init(): the default initializer, takes no parameters anf returns a Person
 *              instance initialized to default values.
 *
 *      init(first: , last: , enrolled ):   a parameterized init that creates a Person
 *              instance initialized to selected values.
 *  Methods:
 *      getFullName():  returns a string containing the person's first and last names,
 *                      separated by a space.
*/

class Person: NSObject, NSCoding {
    var firstName: String
    var lastName: String
    var isStudent: Bool
    var image:  UIImage?
    
   required init(coder aDecoder: NSCoder) {
        self.firstName = aDecoder.decodeObjectForKey("firstName") as String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as String
        self.isStudent = aDecoder.decodeObjectForKey("isStudent") as Bool
    
        if let decodedImage = aDecoder.decodeObjectForKey("image") as? UIImage {
            self.image = decodedImage
        }
    } // init()
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
        aCoder.encodeObject(self.isStudent, forKey: "isStudent")
        
        if self.image != nil {
            aCoder.encodeObject(self.image!, forKey: "image")
        }
        else {
            aCoder.encodeObject(nil, forKey: "image")
        }
    } //encodeWithCoder()
    
    // parameterized init() - all values supplied
    init(first: String, last: String, enrolled: Bool) {
        self.firstName = first
        self.lastName = last
        self.isStudent = enrolled
    } // parameterized init()
    
       // return the first and last names in a blank-separated string
    func getFullName() -> String {
        return self.firstName + " " + self.lastName
    } // getFullName()
    
} // Person
