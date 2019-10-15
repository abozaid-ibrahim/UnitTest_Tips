//
//  ItemTableViewCell.swift
//  UnitTesting_Tips
//
//  Created by abuzeid on 12/27/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
