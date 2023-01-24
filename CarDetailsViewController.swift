//
//  CarDetailsViewController.swift
//  Arjun's_project
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class CarDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Brand.text = Brand_get
        Fuel.text = Fuel_get
        BodyType.text = BodyType_get
        Transmission.text = Transmission_get
        Engine.text = Engine_get
        Mileage.text = Mileage_get
        Seats.text = Seats_get
        Airbags.text = Airbags_get
        Price.text = Price_get
        
        // Budget.text = Budget_get
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var Brand: UILabel!
    @IBOutlet var Fuel: UILabel!
    @IBOutlet var BodyType: UILabel!
    @IBOutlet var Transmission: UILabel!
    @IBOutlet weak var Engine: UILabel!
    @IBOutlet weak var Mileage: UILabel!
    @IBOutlet weak var Seats: UILabel!
    @IBOutlet weak var Airbags: UILabel!
    @IBOutlet var Price: UILabel!
    
    
    var Brand_get : String!
    var Fuel_get : String!
    var BodyType_get : String!
    var Transmission_get : String!
    var Engine_get : String!
    var Mileage_get : String!
    var Seats_get : String!
    var Airbags_get : String!
    // var Budget_get : String!
    var Price_get : String!

}
