//
//  celdaDetallesTableViewCell.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/6/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class celdaDetallesTableViewCell: UITableViewCell {

    @IBOutlet weak var fechaFuncionCell: UILabel!
    @IBOutlet weak var tipoSalaCell: UILabel!
    @IBOutlet weak var horaFuncionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
