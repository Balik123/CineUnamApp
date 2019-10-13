//
//  dulcesDetallesViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/8/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class dulcesDetallesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var dulcesDeLaPrimeraVista = [Dulce]()
    var collecionVistaPrincipal: dulceriaVistaPrincipalViewController!
    var dulceSeleccionado: Dulce?
    

    @IBOutlet weak var collectionDulcesFinal: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
        // Do any additional setup after loading the view.
        obtenerProducto()

    }
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return dulcesDeLaPrimeraVista.count
        
    }
    
    let celdaDulce = "celdaDulceDetalle"
    var i = 0
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celdaDulce, for: indexPath) as! celdaDulcesDetallesCollectionViewCell
        
        
        cell.posterDulceDetalle.image = UIImage(named: dulcesDeLaPrimeraVista[i].dulceProducto.poster)
        cell.tamañoDulces.text = dulcesDeLaPrimeraVista[i].tamaño
        
        i = i + 1
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = collectionDulcesFinal.indexPath(for: sender as! UICollectionViewCell)
        
        let finalDulDetalle = segue.destination as! finalDulcesViewController
        dulceSeleccionado = dulcesDeLaPrimeraVista[(indexPath?.row)!]
        finalDulDetalle.vistaDetallesDulces = self
//
    }
    
    
    func obtenerProducto(){
        var i = 0
        for dulSel in todosLosDulces.dulSeleccionados {
            if todosLosDulces.dulSeleccionados[i].dulceProducto.nombre == collecionVistaPrincipal.misDulces?.nombre {
                
                dulcesDeLaPrimeraVista.append(dulSel)
            }
    
          i = i + 1
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
    @IBAction func cancelar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
