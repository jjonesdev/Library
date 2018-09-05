//
//  GameCell.swift
//  Library
//
//  Created by Jordan on 9/4/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var platformLabel: UILabel!
    
    
    func setLabels(setGame: Game ) {
        gameLabel.text = setGame.name
        platformLabel.text = setGame.platform
    }

}
