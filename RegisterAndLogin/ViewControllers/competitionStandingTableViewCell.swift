//
//  competitionStandingTableViewCell.swift
//  RegisterAndLogin
//
//  Created by owise zoubi on 17/06/2019.
//  Copyright © 2019 owise zoubi. All rights reserved.
//

import UIKit

class competitionStandingTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var teamPosition: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
    @IBOutlet weak var teamGroup: UILabel!
    @IBOutlet weak var teamMP: UILabel!
    @IBOutlet weak var teamW: UILabel!
    @IBOutlet weak var teamD: UILabel!
    @IBOutlet weak var teamL: UILabel!
    @IBOutlet weak var teamGS: UILabel!
    @IBOutlet weak var teamGA: UILabel!
    @IBOutlet weak var teamGD: UILabel!
    @IBOutlet weak var teamPts: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
