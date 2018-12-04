//
//  CustomTableViewCell.swift
//  Sample App
//
//  Created by smadhuay on 04/12/18.
//  Copyright © 2018 sagarayi. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
