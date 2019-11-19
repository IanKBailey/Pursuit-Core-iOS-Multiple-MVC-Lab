//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals = [[ZooAnimal]]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        animals = ZooAnimal.getAnimals()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else { fatalError("failed to find path")}
        
        detailViewController.detailAnimal = animals[indexPath.section][indexPath.row]
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else { fatalError("Cell not found")}
        let animal = animals[indexPath.section][indexPath.row]
        cell.ConfigAnimalCell(for: animal)
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        animals.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animals[section].first?.classification
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
