//
//  BrandViewController.swift
//  Arjun's_project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class BrandViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var selected : String = ""
    
    @IBOutlet var tata: UIButton!
    
    @IBAction func Tata_btn(_ sender: Any) {
        selected = "Tata"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Mahindra_btn(_ sender: Any) {
        selected = "Mahindra"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Hyundai_btn(_ sender: Any) {
        selected = "Hyundai"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Volkswagen_btn(_ sender: Any) {
        selected = "Volkswagen"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Skoda_btn(_ sender: Any) {
        selected = "Skoda"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Nexa_btn(_ sender: Any) {
        selected = "Nexa"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    @IBAction func Toyota_btn(_ sender: Any) {
        selected = "Toyota"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func BMW_btn(_ sender: Any) {
        selected = "BMW"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    
    @IBAction func Merc_btn(_ sender: Any) {
        selected = "Merc"
        performSegue(withIdentifier: "brand_to_list", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as! ListViewController
        
        dest.Brand = selected
        dest.Fuel = ""
        dest.BodyType = ""
        // dest.Budget = ""
        
    }
    
}
