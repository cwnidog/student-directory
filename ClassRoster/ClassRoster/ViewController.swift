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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // try to get names from archive, if no archive, grab an initial
        // set from the property list
        if let peopleFromArchive = self.loadFromArchive() as [Person]? {
            self.names = peopleFromArchive
        }
        else {
            self.loadFromPlist()
            self.saveToArchive()
        }
        
        // figure out if this is the first time the app has run
        var hasLaunched = NSUserDefaults.standardUserDefaults().boolForKey("firstTime")
        
        if !hasLaunched {
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstTime")
        }
        
        self.title = "Home" // title for scene
        
        // we're our own datasource and delegate
        self.tableView.dataSource = self
        self.tableView.delegate = self
    } // viewDidLoad()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
        self.saveToArchive()
    }
    
    func loadFromArchive() ->[Person]? {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String

        if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive") as? [Person] {
            return peopleFromArchive
        }
        return nil
    } // loadFromArchive()
    
    func saveToArchive() {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        NSKeyedArchiver.archiveRootObject(self.names, toFile: documentsPath + "/archive")
    } // saveToArchive()
    
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    } // tableView()
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as PersonTableViewCell
        
        var personToDisplay = self.names[indexPath.row]
        cell.nameLabel.text = personToDisplay.getFullName()
        cell.subNameLabel.text = "Student" // just a dummy placeholder value
        
        if personToDisplay.image != nil {
            cell.personImageView.image = personToDisplay.image
        }
        cell.personImageView.backgroundColor = UIColor.lightGrayColor()
        return cell
    } // tableView()
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let destinationVC = segue.destinationViewController as DetailViewController
            var selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            destinationVC.selectedPerson = self.names[selectedIndexPath!.row]
            
        } // if seque.identifier
    } // prepareForSeque()
    
    
    

} // class ViewController

