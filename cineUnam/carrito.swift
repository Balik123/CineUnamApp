//
//  carrito.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/7/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

struct carritoFuncion {
    var funcionSeleccionada: Funcion
    var numBoletosAdultos: Int
    var numBoletosNinos: Int
    var subTotal: Int
}

struct carritoDulces {
    var dulceGeneral: Dulce
    var dulceCantidad: Int
    var subTotla: Int
}


var carritUsuario: [carritoFuncion] = []
var carritDulces: [carritoDulces] = []
