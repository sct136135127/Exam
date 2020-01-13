//
//  TableViewCell.swift
//  HR
//
//  Created by JASON on 2019/12/23.
//  Copyright © 2019 JASON. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var show_image: UIImageView!
    @IBOutlet weak var ttt: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
