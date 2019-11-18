//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Ian Bailey on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {

 
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var animalName: UILabel!
    
    @IBOutlet weak var animalOrigin: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    func ConfigAnimalCell() {
        
    }
}
