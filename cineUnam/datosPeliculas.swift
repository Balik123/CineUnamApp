//
//  datosPeliculas.swift
//  cineUnam
//
//  Created by Jose Olvera on 9/29/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

struct Pelicula{
    var poster: String
    var titulo: String
    var clasificacion: String
    var duracion: Int
    var sinopsis: String
    var genero: String
    var valoracion: Double
}


struct Sala{
    var tipo: String
    var cupo_max: Int
}


struct Funcion{
    var id: Int
    var sala: Sala
    var hora_inicio: String
    var fecha: String
    var pelicula: Pelicula
    var cupo_disponible: Int
    var precioAdultos: Int
    var precioNinos: Int
    
    
}


struct Cartelera{
    var funciones : [Funcion]
}



var shasam = Pelicula(poster: "0.jpg", titulo: "Shazam", clasificacion: "B", duracion: 120, sinopsis: "Shazam en hombre rayo", genero: "Accion", valoracion: 4.3)
var aquaman = Pelicula(poster: "1.jpg", titulo: "Aquaman", clasificacion: "C", duracion: 120, sinopsis: "Aquaman el rey del oceano", genero: "Accion", valoracion: 4.3)
var capitanaMarvel = Pelicula(poster: "2.jpg", titulo: "Capinana Marvel", clasificacion: "D", duracion: 120, sinopsis: "El poder del universo", genero: "Accion", valoracion: 4.3)
var blackPanther = Pelicula(poster: "3.jpg", titulo: "Black Panther", clasificacion: "E", duracion: 120, sinopsis: "rey t-challa", genero: "Accion", valoracion: 4.3)
var theJoker = Pelicula(poster: "4.jpg", titulo: "The Joker", clasificacion: "A", duracion: 120, sinopsis: "El payaso ", genero: "Accion", valoracion: 4.3)
var aladdin = Pelicula(poster: "5.jpg", titulo: "Aladin", clasificacion: "B", duracion: 120, sinopsis: "Concede deseos", genero: "Accion", valoracion: 4.3)
var toyStory4 = Pelicula(poster: "6.jpg", titulo: "Toy Story 4", clasificacion: "C", duracion: 120, sinopsis: "Adios vaquero ", genero: "Accion", valoracion: 4.3)
var avengers = Pelicula(poster: "7.jpg", titulo: "Avengers End Game", clasificacion: "D", duracion: 120, sinopsis: "Contra tanhos", genero: "Accion", valoracion: 4.3)
var hellBoy = Pelicula(poster: "8.jpg", titulo: "HellBoy", clasificacion: "E", duracion: 120, sinopsis: "El demonio", genero: "Accion", valoracion: 4.3)
var dumbo = Pelicula(poster: "9.jpg", titulo: "Dumbo", clasificacion: "B", duracion: 120, sinopsis: "El elefante", genero: "Accion", valoracion: 4.3)

var tradicional = Sala(tipo: "Tradicional", cupo_max: 40)
var terceraDim = Sala(tipo: "3D", cupo_max: 30)
var cuartaDim = Sala(tipo: "4D", cupo_max: 20)


var funcion0 = Funcion(id: 0, sala: tradicional, hora_inicio: "13:00", fecha: "11-10-2019", pelicula: shasam, cupo_disponible: tradicional.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion1 = Funcion(id: 1, sala: terceraDim, hora_inicio: "12:00", fecha: "11-10-2019", pelicula: shasam, cupo_disponible: terceraDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion2 = Funcion(id: 2, sala: cuartaDim, hora_inicio: "14:00", fecha: "12-10-2019", pelicula: aquaman, cupo_disponible: cuartaDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion3 = Funcion(id: 3, sala: tradicional, hora_inicio: "21:00", fecha: "13-10-2019", pelicula: capitanaMarvel, cupo_disponible: tradicional.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion4 = Funcion(id: 4, sala: cuartaDim, hora_inicio: "16:00", fecha: "11-10-2019", pelicula: blackPanther, cupo_disponible: cuartaDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion5 = Funcion(id: 5, sala: terceraDim, hora_inicio: "20:00", fecha: "11-10-2019", pelicula: theJoker, cupo_disponible: terceraDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion6 = Funcion(id: 6, sala: terceraDim, hora_inicio: "17:00", fecha: "12-10-2019", pelicula: aladdin, cupo_disponible: terceraDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion7 = Funcion(id: 7, sala: tradicional, hora_inicio: "11:00", fecha: "11-10-2019", pelicula: toyStory4, cupo_disponible: tradicional.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion8 = Funcion(id: 8, sala: tradicional, hora_inicio: "13:00", fecha: "11-10-2019", pelicula: avengers, cupo_disponible: tradicional.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion9 = Funcion(id: 9, sala: cuartaDim, hora_inicio: "12:00", fecha: "12-10-2019", pelicula: hellBoy, cupo_disponible: cuartaDim.cupo_max, precioAdultos: 79, precioNinos: 49)
var funcion10 = Funcion(id: 10, sala: terceraDim, hora_inicio: "18:00", fecha: "12-10-2019", pelicula: dumbo, cupo_disponible: terceraDim.cupo_max, precioAdultos: 79, precioNinos: 49)


var datosPelis : [Pelicula] = [shasam,aquaman,capitanaMarvel,blackPanther,theJoker,aladdin,toyStory4,avengers,hellBoy,dumbo]


var cartelera = Cartelera(funciones: [funcion0,funcion1,funcion2,funcion3,funcion4,funcion5,funcion6,funcion7,funcion8,funcion9,funcion10])
