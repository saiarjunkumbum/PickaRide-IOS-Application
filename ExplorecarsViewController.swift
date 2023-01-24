//
//  ExplorecarsViewController.swift
//  Arjun's_project
//
//  Created by Student on 01/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ExplorecarsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var home_to_explore_cars : String!
    
    @IBAction func Brand_btn(_ sender: Any) {
        performSegue(withIdentifier: "Brand_segue", sender: nil)
    }
    
    @IBAction func Budget_btn(_ sender: Any) {
        performSegue(withIdentifier: "Budget_segue", sender: nil)
        
    }
    
    @IBAction func Body_btn(_ sender: Any) {
        performSegue(withIdentifier: "Body_Type_segue", sender: nil)
    }
    
    
    @IBAction func Fuel_btn(_ sender: Any) {
        performSegue(withIdentifier: "fuel_type_segue", sender: nil)
    }
    
    
}
