//
//  BodyTypeViewController.swift
//  Arjun's_project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class BodyTypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var selected : String!
    
    @IBOutlet weak var Hatch_outlet: UIButton!
    
    @IBOutlet weak var Sedan_outlet: UIButton!
    
    @IBOutlet weak var MSUV_outlet: UIButton!
    
    @IBOutlet weak var SUV: UIButton!
    
    @IBOutlet weak var Premium: UIButton!
    
    
    
    @IBAction func Hatch_action(_ sender: Any) {
        selected = "Hatch"
        performSegue(withIdentifier: "body_to_list", sender: nil)
    }
    
    
    @IBAction func Sedan_action(_ sender: Any) {
        selected = "Sedan"
        performSegue(withIdentifier: "body_to_list", sender: nil)
    }
    
    @IBAction func MSUV_action(_ sender: Any) {
        selected = "MSUV"
        performSegue(withIdentifier: "body_to_list", sender: nil)
    }
    
    @IBAction func SUV_action(_ sender: Any) {
        selected = "SUV"
        performSegue(withIdentifier: "body_to_list", sender: nil)
    }
    
    @IBAction func Premium_action(_ sender: Any) {
        selected = "Premium"
        performSegue(withIdentifier: "body_to_list", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! ListViewController
        
        dest.Brand = ""
        dest.Fuel = ""
        dest.BodyType = selected
        //dest.Budget = ""
    }
}
