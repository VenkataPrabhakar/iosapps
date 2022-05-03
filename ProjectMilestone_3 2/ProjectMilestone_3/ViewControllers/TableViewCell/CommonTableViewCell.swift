//
//  CommonTableViewCell.swift
//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit


class CommonTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDescription : UILabel!
    @IBOutlet weak var lblTime : UILabel!
    @IBOutlet weak var lblCategory : UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

}

