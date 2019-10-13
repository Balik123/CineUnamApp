//
//  celdaCarritoTableViewCell.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/11/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class celdaCarritoTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var hora: UILabel!
    @IBOutlet weak var dia: UILabel!
    @IBOutlet weak var salaTamaño: UILabel!
    @IBOutlet weak var cantDulces: UILabel!
    @IBOutlet weak var tipoSalaPrecioDulce: UILabel!
    @IBOutlet weak var Adultos: UILabel!
    @IBOutlet weak var niños: UILabel!
    @IBOutlet weak var cantAdultos: UILabel!
    @IBOutlet weak var cantNiños: UILabel!
    @IBOutlet weak var subTotal: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
