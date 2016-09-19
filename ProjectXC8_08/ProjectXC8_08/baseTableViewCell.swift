//
//  baseTableViewCell.swift
//  ProjectXC8_08
//
//  Created by GIGIGUN on 9/19/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit


class baseTableViewCell: UITableViewCell {

    @IBOutlet var titleImageView: UIImageView!
    @IBOutlet var timeLab: UILabel!
    @IBOutlet var contentLab: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.titleImageView.layer.masksToBounds = true;
        self.titleImageView.layer.cornerRadius = 5;
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
