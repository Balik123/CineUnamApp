//
//  celdaDulcesDetallesCollectionViewCell.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/10/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class celdaDulcesDetallesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var posterDulceDetalle: UIImageView!
    @IBOutlet weak var tamañoDulces: UILabel!
    
    
    override func awakeFromNib() {
        posterDulceDetalle.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)

        posterDulceDetalle.layer.cornerRadius = 10
        posterDulceDetalle.clipsToBounds = true
    }
    
}
