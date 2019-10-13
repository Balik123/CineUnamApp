//
//  celdaDulcesCollectionViewCell.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/8/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class celdaDulcesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fotoDulces: UIImageView!
    
    override func awakeFromNib() {
        fotoDulces.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)

        fotoDulces.layer.cornerRadius = 10
        fotoDulces.clipsToBounds = true
        
        
    }
    
}
