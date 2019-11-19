//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Ian Bailey on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UILabel!
    
    var detailAnimal: ZooAnimal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAnimal()
        
    }
    
    func updateAnimal(){
        guard let theAnimals = detailAnimal else { fatalError("No animals found")}
        title = theAnimals.name
        detailImage.image = UIImage(named: theAnimals.imageNumber.description)
        detailDescription.text = theAnimals.info
    }

    

}
