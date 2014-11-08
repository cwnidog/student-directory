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
- Add methods to make the ViewTable conform to the UITableViewDataSource protocol
- The TableView cells are populated with the full name of each Person instance in the array.

Homework 4
-----------
Homework 4 adds a Nav Controller and a second View Controller:

- Embed your main view controller (the one with the table view) in a navigation controller.
- Create a 2nd view controller class and name it DetailViewController. This View Controller takes the place of the second one in Homework 2
- Drag out a view controller in storyboard, and set its class to DetailViewController
- Create a show segue from your table view cell to your detail view controller on your storyboard.
- Using prepareForSegue(), pass the person they clicked on in the tableview to the detail view controller. To do this had to add a second, default init() to the Person class
- Show the person's first and last name in separate labels on the detail view controller.
