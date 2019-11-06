//
//  Nihar_TableViewCell.swift
//  Nihar_Patel_Blue_TicTacToe
//
//  Created by Nihar Patel on 2019-09-25.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import UIKit

class Nihar_TableViewCell: UITableViewCell {
    
    //MARK: Outlets
    
    
    @IBOutlet weak var winLossImage: UIImageView!
    
    
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    
    @IBOutlet weak var whoWonLabel: UILabel!
    
    
    var gameData : GameData?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
