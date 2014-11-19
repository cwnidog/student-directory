//
//  ViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/1/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = [Person]() // an array of Persons who may be students
    
    // get student data from a plist and construct and array of Persons, where each person
    // corresponds ton an element in the plist array
    func loadFromPlist () {
        
        let plistURL = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        let plistArray = NSArray(contentsOfFile: plistURL!)
        
        // loop thorugh all the elements in the plistArray and get their data
        for object in plistArray! {
            if let personDictionary = object as? NSDictionary {
                let firstName = personDictionary["First Name"] as String
                let lastName = personDictionary["Last Name"] as String
                let isStudent = personDictionary["Is Student"] as Bool
                
                // construct a Person inatnce with data from plist
                var person = Person(first: firstName, last: lastName, enrolled: isStudent)
                self.names.append(person)
            } // if let
        } // loop through plistArray
    } // loadFromPlist()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadFromPlist()
        self.title = "Home" // title for scene
        
        // we're our own datasource and delegate
        self.tableView.dataSource = self
        self.tableView.delegate = self
            } // viewDidLoad()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    } // tableView()
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as PersonTableViewCell
        
        var personToDisplay = self.names[indexPath.row]
        cell.nameLabel.text = personToDisplay.getFullName()
        cell.subNameLabel.text = "Student" // just a dummy placeholder value
        cell.personImageView.backgroundColor = UIColor.lightGrayColor()
        return cell
    } // tableView()
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            var personToPass = self.names[selectedIndexPath!.row]
            
            detailViewController.selectedPerson = personToPass
            
        } // if seque.identifier
    } // prepareForSeque()
    
    
    

} // class ViewController

