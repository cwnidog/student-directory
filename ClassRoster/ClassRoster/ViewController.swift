//
//  ViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/1/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = [Person]() // an array of Persons who may be students
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we're our own datasource
        self.tableView.dataSource = self
        
        // create new Person instances
        var myPerson = Person(first: "Peter", last: "Parker", enrolled: true)
        var anotherPerson = Person(first: "Lois", last: "Lane", enrolled: true)
        var thirdPerson = Person(first: "Bruce", last: "Wayne", enrolled: false)
        
        // add the new instances to the array of names
        self.names.append(myPerson)
        self.names.append(anotherPerson)
        self.names.append(thirdPerson)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
        
        var personToDisplay = self.names[indexPath.row]
        cell.textLabel.text = personToDisplay.getFullName()
        return cell
    }

}

