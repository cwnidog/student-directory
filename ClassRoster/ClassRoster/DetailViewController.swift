//
//  DetailViewController.swift
//  ClassRoster
//
//  Created by John Leonard on 11/6/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedPerson = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.selectedPerson.getFullName()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
