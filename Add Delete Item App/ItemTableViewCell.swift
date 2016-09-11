//
//  ItemTableViewCell.swift
//  Add Delete Item App
//
//  Created by Kim Nguyen on 2016-09-10.
//  Copyright © 2016 Kim Nguyen. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
