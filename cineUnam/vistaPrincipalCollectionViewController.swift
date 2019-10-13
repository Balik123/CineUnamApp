//
//  vistaPrincipalCollectionViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 9/29/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

class vistaPrincipalCollectionViewController: UICollectionViewController {
    let reuseIdentifier = "Cell"
    var peliculaSeleccionada: Pelicula?
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        /*self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)*/
        

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = collectionView.indexPath(for: sender as! UICollectionViewCell)
        
        let detallesPeliculas = segue.destination as! detallesPeliculasViewController
        peliculaSeleccionada = datosPelis[(indexPath?.row)!]
        detallesPeliculas.vistaprincipal = self
        
        
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return datosPelis.count

    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! posterPrincipalCollectionViewCell
        
        
        cell.photoPoster.image = UIImage(named: datosPelis[indexPath.row].poster)
        // Configure the cell
        
        
        
        return cell
    }
    
    
    @IBAction func unwindToVistaPrinciplaBoletos(segue: UIStoryboardSegue) {
        
        
    }
    
  
    
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    
    
    
    // Seleccionamos un album y hacemos que gire
   /* override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Creamos el item a partir de la posición del indexPath
        
        let item = collectionView.cellForItem(at: indexPath) as! posterPrincipalCollectionViewCell
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            item.photoPoster.transform = CGAffineTransform(scaleX: -1, y: 1)
            //item.photoAlbum.transform = CGAffineTransform(scaleX: 10, y: 10)
            //item.transform = CGAffineTransform(scaleX: 10, y: 10)
            item.photoPoster.transform = .identity
            //item.transform = .identity
            
        }, completion: nil)
        
        
    }*/

}
