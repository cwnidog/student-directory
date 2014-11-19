//
//  PersonTableViewCell.swift
//  ClassRoster
//
//  Created by John Leonard on 11/18/14.
//  Copyright (c) 2014 John Leonard. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    
    // set up outlets for elements contained by the PersonTableViewCell instance
    @IBOutlet weak var subNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var personImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
