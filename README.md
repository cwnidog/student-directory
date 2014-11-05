student-directory
=================

Project repository for iOS Fundamentals II class project, creating a class roster.

Homework 2:
-----------

Homework 2 adds the initial Xcode project to the repository:
- Create the Xcode project
- Add the Person class to the ViewController.
- Instantiate myPerson instance of Person class.
- Provide and @IBAction function to print myPerson's full name, using its getFullName() method.
- Add a second View Controller.
- Add a button to the original View Controller to segue to the second.

Homework 3
----------
Homework 3 adds TableView to list the Person names:
- Remove the "Press Me" button & methods
- Move the Person class to its own Swift file
- Define an array of Person instances
- Add a ViewTable to hold the list of Persons
- Add methods to make the ViewTable conform to the UITableViewDataSource protocol:
1. numberOfRowsInSection
2. cellForRowAtIndexPath
- The TableView cells are populated with the full name of each Person instance in the array.
