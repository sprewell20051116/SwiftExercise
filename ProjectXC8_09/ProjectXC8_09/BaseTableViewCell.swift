//
//  BaseTableViewCell.swift
//  ProjectXC8_09
//
//  Created by GIGIGUN on 9/20/16.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    @IBOutlet var titleImageView: UIImageView!
    @IBOutlet var dateLab: UILabel!
    @IBOutlet var detailedLab: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleImageView.layer.masksToBounds = true;
        titleImageView.layer.cornerRadius = 5;
        titleImageView.image = #imageLiteral(resourceName: "Cha00");
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
