//
//  detallesPeliculasViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/3/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit
import Foundation

class detallesPeliculasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var posterDetalle: UIImageView!
    @IBOutlet weak var tablaFunciones: UITableView!
    @IBOutlet weak var clasi: UILabel!
    @IBOutlet weak var duracion: UILabel!
    @IBOutlet weak var valoracion: UILabel!
    @IBOutlet weak var sinopsis: UILabel!
    @IBOutlet weak var genero: UILabel!
    var funcionSeleccionada: Funcion?
    
    
    var vistaprincipal: vistaPrincipalCollectionViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        obtenerFunciones()
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
        // Do any additional setup after loading the view.
        nombre.text = vistaprincipal.peliculaSeleccionada?.titulo
        posterDetalle.image = UIImage(named: vistaprincipal.peliculaSeleccionada!.poster)
        clasi.text = vistaprincipal.peliculaSeleccionada?.clasificacion
        duracion.text = String(vistaprincipal.peliculaSeleccionada!.duracion)
        sinopsis.text = vistaprincipal.peliculaSeleccionada?.sinopsis
        valoracion.text = String(vistaprincipal.peliculaSeleccionada!.valoracion)
        genero.text = vistaprincipal.peliculaSeleccionada?.genero
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var funcionesObtenidad = [Int]()
    
    func obtenerFunciones() -> [Int] {
        
        for cart in cartelera.funciones {
            
            if cart.pelicula.titulo == vistaprincipal.peliculaSeleccionada?.titulo {
                
                funcionesObtenidad.append(cart.id)
            }
        }
        
        return funcionesObtenidad
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return funcionesObtenidad.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    let celda = "celda"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: celda, for: indexPath) as! celdaDetallesTableViewCell
        
        let datos = cartelera.funciones[funcionesObtenidad[Int(indexPath.row)]]
        
        cell.fechaFuncionCell.text = datos.fecha
        cell.tipoSalaCell.text = datos.sala.tipo
        cell.horaFuncionCell.text = datos.hora_inicio
        
        
        return cell
    }
    

    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let miIndexPath = tablaFunciones.indexPathForSelectedRow
        
        
        let numBoletos = segue.destination as! numBoletosViewController
        funcionSeleccionada = cartelera.funciones[funcionesObtenidad[Int(miIndexPath!.row)]]
        numBoletos.detalleFuncion = self
        
    }
    
    
    
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }*/

}
