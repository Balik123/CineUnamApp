//
//  dulceriaVistaPrincipalViewController.swift
//  cineUnam
//
//  Created by Jose Olvera on 10/8/19.
//  Copyright © 2019 Jose Olvera. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class dulceriaVistaPrincipalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionDulces: UICollectionView!
    var misDulces: dulcesPrincipal?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
        collectionDulces.backgroundColor =  UIColor(red: 255/255, green: 245/255, blue: 220/255, alpha: 255/255)
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return prodsDulceria.productosDulceria.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! celdaDulcesCollectionViewCell
        
        
        cell.fotoDulces.image = UIImage(named: prodsDulceria.productosDulceria[indexPath.row].poster)
        // Configure the cell
        
        
        
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = collectionDulces.indexPath(for: sender as! UICollectionViewCell)
        
        let dulDetNav = segue.destination as! UINavigationController
        let detalleDulce = dulDetNav.topViewController as! dulcesDetallesViewController
        
        misDulces = prodsDulceria.productosDulceria[(indexPath?.row)!]
        detalleDulce.collecionVistaPrincipal = self
        
        
    }
    
    @IBAction func unwindToDulcesPrincipal(segue: UIStoryboardSegue) {
        
        
    }
    
    

}
