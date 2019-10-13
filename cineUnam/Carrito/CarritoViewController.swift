//
//  CarritoViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/11/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class CarritoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
 
    
    var mostrar: Int = 0
    @IBOutlet weak var cambioCarrito: UISegmentedControl!
    @IBOutlet weak var mytab: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)


        // Do any additional setup after loading the view.
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if mostrar == 0{
            return carritUsuario.count
        }
        
        else if mostrar == 1{
            return carritDulces.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if mostrar == 0{
            return 150
        }
            
        else if mostrar == 1{
            return 100
        }
        
        return 0
    }
    
    let celda = "celdaCarrito"
    //var i = 0
    var i = 0
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: celda, for: indexPath) as! celdaCarritoTableViewCell
        
 
 if mostrar == 0{
    
        for cu in carritUsuario{
            

            cell.titulo.text = carritUsuario[i].funcionSeleccionada.pelicula.titulo

            cell.hora.text = carritUsuario[i].funcionSeleccionada.fecha
            cell.dia.text = carritUsuario[i].funcionSeleccionada.hora_inicio
            cell.salaTamaño.text = "Sala"
            cell.cantDulces.text = ""
            cell.tipoSalaPrecioDulce.text = carritUsuario[i].funcionSeleccionada.sala.tipo
            cell.Adultos.text = "Adultos"
            cell.niños.text = "Niños"
            cell.cantAdultos.text = String(carritUsuario[i].numBoletosAdultos)
            cell.cantNiños.text = String(carritUsuario[i].numBoletosNinos)
            cell.subTotal.text = String(carritUsuario[i].subTotal)
            

        }
    
    print(i)
    i = i + 1
    
        }
            
    else if mostrar == 1{
            
    for cd in carritDulces{
    
            cell.titulo.text = carritDulces[i].dulceGeneral.dulceProducto.nombre

            cell.hora.text = ""
            cell.dia.text = ""
            cell.salaTamaño.text = carritDulces[i].dulceGeneral.tamaño
            cell.cantDulces.text = String(carritDulces[i].dulceCantidad)
            cell.tipoSalaPrecioDulce.text = String(carritDulces[i].dulceGeneral.precio)
            cell.Adultos.text = "SubTotla"
            cell.niños.text = String(carritDulces[i].subTotla)
            cell.cantAdultos.text = ""
            cell.cantNiños.text = ""
            cell.subTotal.text = ""
    
            }
    
    print(i)
    i = i + 1
        
}
        
        
        return cell
    }
    
    
    
    @IBAction func cambioVista(_ sender: Any) {
        
        
        switch cambioCarrito.selectedSegmentIndex {
        case 0:
            mostrar = cambioCarrito.selectedSegmentIndex
            i = 0
            mytab.reloadData()
            break
            
        case 1:
            mostrar = cambioCarrito.selectedSegmentIndex
            i = 0
            mytab.reloadData()
            break
            
        default:
            break
        }
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Finalizar(_ sender: UIButton) {
        
        
        var i = 0
        for cu in carritUsuario{
            
            var j = 0
            for car in cartelera.funciones{
                
                if cartelera.funciones[j].id == carritUsuario[i].funcionSeleccionada.id{
                cartelera.funciones[j].cupo_disponible = cartelera.funciones[j].cupo_disponible - carritUsuario[i].numBoletosAdultos - carritUsuario[i].numBoletosNinos
                }
                
                j = j + 1
            }
        
            
            i = i + 1
        }
        
        
            
            carritDulces.removeAll()
            carritUsuario.removeAll()
            
    
        
        
        
    }
    
    
    
    
}
