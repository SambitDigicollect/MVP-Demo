//
//  ViewController.swift
//  MVP Demo
//
//  Created by Sambit Das on 08/04/20.
//  Copyright © 2020 Sambit Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource{
    


    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.arrimg.count
       }
     
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {


           let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell

        cell.img.image = dataModel.arrimg[indexPath.row]
        cell.lbl.text = dataModel.arrlbl[indexPath.row]
           return cell

           
           
       }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail : DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        imageDetail.img1 = dataModel.arrimg[indexPath.row]
        imageDetail.lbl1 = dataModel.arrlbl[indexPath.row]
        
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
    

}

