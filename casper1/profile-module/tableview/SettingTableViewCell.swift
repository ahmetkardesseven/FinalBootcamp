//
//  SettingTableViewCell.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var settingNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
