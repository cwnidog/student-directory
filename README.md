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

Homework 5
----------
Homework 5 deletes the first name & last name labels in favor of first name & last name text fields.

- Replace the UILabels with UITextFields
- When the user presses the return key, dismiss the keyboard
- Use Autolayout to layout your detailview controller, so that it looks good in both portrait and landscape modes.
- Add an optional UIImage property to your Person class

Homework 6
----------
Homework 6 adds the camera interface to the project to get a photo

- Implement a UIImagePickerController into your app. Launch via a button press, just like i did in class.
- Upon the user choosing or taking a photo, set your image view on your detail view controller to show that image
- Also set the selectedPerson's image property to be the chosen image as well.

Homework 7
-----------

Homework 7 has a list of people stored in a property list file, Roster.plist. The View Controller's swift code is updated to read the list of people in the property list, rather than have the list of people hard coded. Additionally the View Controller's generic UITableViewCell is replaced with a custom version.

- Create a custom table view cell with an image view and label
- Convert your app to use your custom cell instead of a regular uitableviewcell
- Create a plist with a root array, and fill it with dictionaries, each with a last name and first name key value pairing
- In code, load and parse through the plist and create a person object for each dictionary. Add each person to your people array so your table view can show these people.

Homework 8
----------

Homework 8 adds data persistence. If there is no archived data, the app will pull initial data from the property list, but it will then copy that data to an archive on the device's file system (in .DocumentDirector/archive). It will then store any data updates in the archive, as well. This data is then displayed in th eDetail View Controller scene whenever the user selects a person in the View Controller's table cells. I also expanded on the assignment to have it display the updated data in the View Controller's data cell for a person, sort of as a preview.

- Implement persistence into your app. Skip NSUserDefaults for now, use the NSCoding protocol and NSKeyedArchiver/Unarchiver to persist your people array to disk.
- Make sure you have all the functionality from the previous assignments as well, this should be a pretty fully functioning app at this point.
