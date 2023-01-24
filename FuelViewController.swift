//
//  FuelViewController.swift
//  Arjun's_project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class FuelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var selected : String!
    
    @IBOutlet weak var Petrol_outlet: UIButton!
    
    @IBOutlet weak var Diesel_outlet: UIButton!
    
    
    @IBAction func Petrol_action(_ sender: Any) {
        selected = "Petrol"
        performSegue(withIdentifier: "fuel_to_list", sender: nil)
        
    }
    
    @IBAction func Diesel_action(_ sender: Any) {
        selected = "Diesel"
        performSegue(withIdentifier: "fuel_to_list", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! ListViewController
        
        dest.Brand = ""
        dest.Fuel = selected
        dest.BodyType = ""
        //dest.Budget = ""
    }
}
