//
//  finalDulcesViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/10/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class finalDulcesViewController: UIViewController {
    
    var vistaDetallesDulces: dulcesDetallesViewController!

    @IBOutlet weak var posterFinalDulces: UIImageView!
    @IBOutlet weak var tituloDulcesFinal: UILabel!
    @IBOutlet weak var tamDulcesFinal: UILabel!
    @IBOutlet weak var precioDulcesFinal: UILabel!
    @IBOutlet weak var cantidadDulcesFinal: UITextField!
    @IBOutlet weak var addOrDownDulcesFinal: UIStepper!
    @IBOutlet weak var totalDulcesFinal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
        posterFinalDulces.image = UIImage(named: (vistaDetallesDulces.dulceSeleccionado?.dulceProducto.poster)!)
        tituloDulcesFinal.text = vistaDetallesDulces.dulceSeleccionado?.dulceProducto.nombre
        tamDulcesFinal.text = vistaDetallesDulces.dulceSeleccionado?.tamaño
        precioDulcesFinal.text = String(vistaDetallesDulces.dulceSeleccionado!.precio)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addOrDownDulceFinalAction(_ sender: UIStepper) {
        let numDulce = Int(addOrDownDulcesFinal.value)
        cantidadDulcesFinal.text = String(numDulce)

        let totalCantidadFinal: Int = numDulce * vistaDetallesDulces.dulceSeleccionado!.precio
        totalDulcesFinal.text = String(totalCantidadFinal)
    }
    
    
    
    @IBAction func agregarCarrito(_ sender: UIButton) {
        let alCarrito: carritoDulces = carritoDulces(dulceGeneral: vistaDetallesDulces.dulceSeleccionado!, dulceCantidad: Int(cantidadDulcesFinal.text!)!, subTotla: Int(totalDulcesFinal.text!)!)
        
        carritDulces.append(alCarrito)
        print("Se agrego al carrito")
        
    }
    

    
}
