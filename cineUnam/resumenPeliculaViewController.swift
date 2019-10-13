//
//  resumenPeliculaViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/7/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class resumenPeliculaViewController: UIViewController {

    @IBOutlet weak var posterFinal: UIImageView!
    @IBOutlet weak var tituloFinal: UILabel!
    @IBOutlet weak var fechaFinal: UILabel!
    @IBOutlet weak var tipoSalaFinal: UILabel!
    @IBOutlet weak var horaFinal: UILabel!
    @IBOutlet weak var numBoletosAdultoFinal: UILabel!
    @IBOutlet weak var numBoletosNinoFinal: UILabel!
    @IBOutlet weak var totalFinal: UILabel!
    
    
    var numBoletoVista: numBoletosViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)

        // Do any additional setup after loading the view.

        
        posterFinal.image = UIImage(named: numBoletoVista.alCarrito.funcionSeleccionada.pelicula.poster)
        tituloFinal.text = numBoletoVista.alCarrito.funcionSeleccionada.pelicula.titulo
        fechaFinal.text = numBoletoVista.alCarrito.funcionSeleccionada.fecha
        tituloFinal.text = numBoletoVista.alCarrito.funcionSeleccionada.sala.tipo
        horaFinal.text = numBoletoVista.alCarrito.funcionSeleccionada.hora_inicio
        
        numBoletosAdultoFinal.text = String(numBoletoVista.alCarrito.numBoletosAdultos)
        numBoletosNinoFinal.text = String(numBoletoVista.alCarrito.numBoletosNinos)
        
        totalFinal.text = String(numBoletoVista.alCarrito.subTotal)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func agregarAlCarrito(_ sender: UIButton) {
        
        carritUsuario.append(numBoletoVista.alCarrito)
        print("Se guardo en el carrito")

        
    }
    
}
