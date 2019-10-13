//
//  posterPrincipalCollectionViewCell.swift
//  cineUnam
//
//  Created by Jose Olvera on 9/30/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class posterPrincipalCollectionViewCell: UICollectionViewCell {
        
    @IBOutlet weak var photoPoster: UIImageView!
        
        override func awakeFromNib() {
            photoPoster.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
            photoPoster.layer.cornerRadius = 10
            photoPoster.clipsToBounds = true
            
            
        }
        
}
