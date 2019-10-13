//
//  datosDulces.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/8/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit


struct dulcesPrincipal {
    var nombre: String
    var poster: String
}

struct arrayDulcesPrincipal {
    var productosDulceria: [dulcesPrincipal]
}

var palomitasPrincipal = dulcesPrincipal(nombre: "Palomitas", poster: "palomitas.jpg")
var refrascosPrincipal = dulcesPrincipal(nombre: "Refrescos", poster: "Refresco.png")
var nachosPrincipal = dulcesPrincipal(nombre: "Nachos", poster: "nachos.jpg")
var chocolatesPrincipal = dulcesPrincipal(nombre: "Chocolates", poster: "chocolate.jpg")


var prodsDulceria = arrayDulcesPrincipal(productosDulceria: [palomitasPrincipal, refrascosPrincipal, nachosPrincipal, chocolatesPrincipal])



struct Dulce {
    var dulceProducto: dulcesPrincipal
    var tamaño: String
    var precio: Int
    
}

struct dulcesSeleccionados {
    var dulSeleccionados: [Dulce]
}




var refPequeñas: Dulce = Dulce(dulceProducto: refrascosPrincipal, tamaño: "Pequeñas", precio: 25)
var refMedianas: Dulce = Dulce(dulceProducto: refrascosPrincipal, tamaño: "Medianas", precio: 35)
var refGrandes: Dulce = Dulce(dulceProducto: refrascosPrincipal, tamaño: "Grandes", precio: 45)

var nachPequeñas: Dulce = Dulce(dulceProducto: nachosPrincipal, tamaño: "Pequeñas", precio: 45)
var nachMedianas: Dulce = Dulce(dulceProducto: nachosPrincipal, tamaño: "Medianas", precio: 55)
var nachGrandes: Dulce = Dulce(dulceProducto: nachosPrincipal, tamaño: "Grandes", precio: 65)

var palPequeñas: Dulce = Dulce(dulceProducto: palomitasPrincipal, tamaño: "Pequeñas", precio: 30)
var palMedianas: Dulce = Dulce(dulceProducto: palomitasPrincipal, tamaño: "Medianas", precio: 40)
var palGrandes: Dulce = Dulce(dulceProducto: palomitasPrincipal, tamaño: "Grandes", precio: 50)

var chocPequeñas: Dulce = Dulce(dulceProducto: chocolatesPrincipal, tamaño: "Pequeñas", precio: 12)
var chocMedianas: Dulce = Dulce(dulceProducto: chocolatesPrincipal, tamaño: "Medianas", precio: 19)
var chocGrandes: Dulce = Dulce(dulceProducto: chocolatesPrincipal, tamaño: "Grandes", precio: 25)



var todosLosDulces = dulcesSeleccionados(dulSeleccionados: [palPequeñas,palMedianas,palGrandes,refPequeñas,refMedianas,refGrandes,nachPequeñas,nachMedianas,nachGrandes,chocPequeñas,chocMedianas,chocGrandes])
