//
//  BudgetViewController.swift
//  Arjun's_project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var min : Int = 0
    var max : Int = 0
    
    
    @IBOutlet weak var min_label: UILabel!
    @IBOutlet weak var max_label: UILabel!
    
    @IBOutlet weak var min_slider_outlet: UISlider!
    @IBOutlet weak var max_slider_outlet: UISlider!
    
    
    
    @IBAction func min_slider_action(_ sender: Any) {
        min = Int(min_slider_outlet.value)
        min_label.text = String(Int(min_slider_outlet.value))
        
    }
    
    
    @IBAction func max_slider_action(_ sender: Any) {
        max = Int(max_slider_outlet.value)
        max_label.text = String(Int(max_slider_outlet.value))
    }
    
    @IBAction func submit_action(_ sender: Any) {
        performSegue(withIdentifier: "budget_to_list", sender: nil)
    }
    
    
    @IBAction func segment_1(_ sender: Any) {
        min = 5
        max = 15
        performSegue(withIdentifier: "budget_to_list", sender: nil)
    }
    
    @IBAction func segment_2(_ sender: Any) {
        min = 15
        max = 30
        performSegue(withIdentifier: "budget_to_list", sender: nil)
    }
    
    @IBAction func segment_3(_ sender: Any) {
        min = 30
        max = 80
        performSegue(withIdentifier: "budget_to_list", sender: nil)
    }
    
    @IBAction func segment_4(_ sender: Any) {
        min = 80
        max = 200
        performSegue(withIdentifier: "budget_to_list", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dest = segue.destination as! ListViewController
        dest.min = min * 100000
        dest.max = max * 100000
        dest.Brand = ""
        dest.Fuel = ""
        dest.BodyType = ""
        
    }
}
