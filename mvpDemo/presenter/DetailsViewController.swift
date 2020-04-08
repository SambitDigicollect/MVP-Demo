//
//  DetailsViewController.swift
//  MVP Demo
//
//  Created by Sambit Das on 08/04/20.
//  Copyright © 2020 Sambit Das. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var img1 : UIImage!
    var lbl1 : String!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = img1
        lbl.text = lbl1
        
        
    }

    
    

}
