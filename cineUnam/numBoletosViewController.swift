//
//  numBoletosViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/6/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class numBoletosViewController: UIViewController {
    
    @IBOutlet weak var LugaresDisponibles: UILabel!
    @IBOutlet weak var precioAdulto: UILabel!
    @IBOutlet weak var precioNinos: UILabel!
    @IBOutlet weak var cantidadBoletosAdultos: UITextField!
    @IBOutlet weak var cantidadBoletosNinos: UITextField!
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var stepperAdulto: UIStepper!
    @IBOutlet weak var stepperNino: UIStepper!
    
    var costoTotal = 0
    
    
    var detalleFuncion: detallesPeliculasViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        LugaresDisponibles.text = String(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        precioAdulto.text = "$ \(detalleFuncion.funcionSeleccionada!.precioAdultos)"
        precioNinos.text = "$ \(detalleFuncion.funcionSeleccionada!.precioNinos)"
        total.text = "0"
        cantidadBoletosAdultos.text = "0"
        cantidadBoletosNinos.text = "0"
        
        stepperAdulto.maximumValue = Double(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        stepperNino.maximumValue = Double(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        LugaresDisponibles.text = String(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        precioAdulto.text = "$ \(detalleFuncion.funcionSeleccionada!.precioAdultos)"
        precioNinos.text = "$ \(detalleFuncion.funcionSeleccionada!.precioNinos)"
        total.text = "0"
        cantidadBoletosAdultos.text = "0"
        cantidadBoletosNinos.text = "0"
        
        stepperAdulto.maximumValue = Double(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        stepperNino.maximumValue = Double(detalleFuncion.funcionSeleccionada!.cupo_disponible)
        
    }
    
    
    
    @IBAction func addOrDownAdultos(_ sender: UIStepper) {
       
        let numBoletos = Int(stepperAdulto.value)
        cantidadBoletosAdultos.text = String(numBoletos)
        
        /*let cantFinal = detalleFuncion.funcionSeleccionada!.cupo_disponible - numBoletos*/
        
        let numeroAdultos = Int(cantidadBoletosAdultos.text!)!
        let numeroNinos = Int(cantidadBoletosNinos.text!)!
        
        let totalFinal = calcBoletosPrecio(numAdultos: numeroAdultos, numNinos: numeroNinos)
        total.text = "\(totalFinal)"
        
        let boletosFin = calcBoletosDisponibles(boletosAdultos: numeroAdultos, boletosNinos: numeroNinos)
        LugaresDisponibles.text = "\(boletosFin)"
    }
    
    @IBAction func addOrDownNinos(_  sender: UIStepper) {
        
        let numBoletos = Int(stepperNino.value)
        cantidadBoletosNinos.text = String(numBoletos)
        
        /*let cantFinal = detalleFuncion.funcionSeleccionada!.cupo_disponible - numBoletos
        LugaresDisponibles.text = "\(cantFinal)"*/
        
        let numeroAdultos = Int(cantidadBoletosAdultos.text!)!
        let numeroNinos = Int(cantidadBoletosNinos.text!)!
        
        let totalFinal = calcBoletosPrecio(numAdultos: numeroAdultos, numNinos: numeroNinos)
        total.text = "\(totalFinal)"
        
        let boletosFin = calcBoletosDisponibles(boletosAdultos: numeroAdultos, boletosNinos: numeroNinos)
        LugaresDisponibles.text = "\(boletosFin)"
    }
    
    
    func calcBoletosPrecio(numAdultos: Int, numNinos: Int) -> Int {
        
        let adultos = numAdultos * detalleFuncion.funcionSeleccionada!.precioAdultos
        let ninos = numNinos * detalleFuncion.funcionSeleccionada!.precioNinos
        let total = adultos + ninos
        
        return total
    }
    
    
    func calcBoletosDisponibles(boletosAdultos: Int, boletosNinos: Int) -> Int {
        
        let total = detalleFuncion.funcionSeleccionada!.cupo_disponible - boletosAdultos - boletosNinos
        return total
    }
    
    
    var alCarrito: carritoFuncion!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var miCarrito: carritoFuncion = carritoFuncion(funcionSeleccionada: detalleFuncion.funcionSeleccionada!, numBoletosAdultos: Int(cantidadBoletosAdultos.text!)!, numBoletosNinos: Int(cantidadBoletosNinos.text!)!, subTotal: Int(total.text!)!)
        
        
        let resumenBoletos = segue.destination as! resumenPeliculaViewController
        alCarrito = miCarrito
        resumenBoletos.numBoletoVista = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
