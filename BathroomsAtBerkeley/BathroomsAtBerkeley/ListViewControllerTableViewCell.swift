//
//  ListViewControllerTableViewCell.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/4/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit

class ListViewControllerTableViewCell: UITableViewCell {
    @IBOutlet weak var bathroomName: UILabel!
    
    @IBOutlet weak var rating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
