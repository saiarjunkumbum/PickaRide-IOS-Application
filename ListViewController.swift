//
//  ListViewController.swift
//  Arjun's_project
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(min)
        print(max)
        
        if(Brand != "")
        {
            for (key,value) in data{
                
                if(value[0] == Brand)
                {
                    filtered[key] = value
                    filtered_images[key] = cars[key]
                    indexing.append(key)
                }
                
            }
        }
        else if(Fuel != "")
        {
            for (key,value) in data{
                
                if(value[1] == Fuel)
                {
                    filtered[key] = value
                    filtered_images[key] = cars[key]
                    indexing.append(key)
                }
                
            }
        }
        else if(BodyType != "")
        {
            for (key,value) in data{
                
                if(value[2] == BodyType)
                {
                    filtered[key] = value
                    filtered_images[key] = cars[key]
                    indexing.append(key)
                }
                
            }
        }
        else if(max != 0)
        {
            print(min)
            print(max)
            
            var price_currr = 0
            
            for (key,value) in data{
                //print(Int(value[8])!)
            
                price_currr = Int(value[8]) ?? 0
                
                if (price_currr >= min && price_currr < max)
                {
                    filtered[key] = value
                    filtered_images[key] = cars[key]
                    indexing.append(key)
                }
                    
                }
            
        }
        
        //print(filtered as AnyObject)
    }
    
    
    
    var indexing : [String] = []

    
    var cars : [String:UIImage] =
    [
        "Punch" :#imageLiteral(resourceName: "punch"),
        "Altroz" :#imageLiteral(resourceName: "altroz"),
        "Nexon" :#imageLiteral(resourceName: "nexon"),
        "Harrier" :#imageLiteral(resourceName: "harrier"),
        "Safari" :#imageLiteral(resourceName: "safari"),
        "XUV_300" :#imageLiteral(resourceName: "xuv300"),
        "Thar" :#imageLiteral(resourceName: "Thar"),
        "XUV700" :#imageLiteral(resourceName: "xuv700"),
        "Scorpio" :#imageLiteral(resourceName: "Scorpio"),
        "i10_Nios" :#imageLiteral(resourceName: "Nios"),
        "i20_Nline" :#imageLiteral(resourceName: "i20Nline"),
        "Verna" :#imageLiteral(resourceName: "VERNA"),
        "Venue" :#imageLiteral(resourceName: "venue"),
        "Creta" :#imageLiteral(resourceName: "CRETA"),
        "Polo" :#imageLiteral(resourceName: "polo"),
        "Vento" :#imageLiteral(resourceName: "vento"),
        "Virtus" :#imageLiteral(resourceName: "virtus"),
        "Taigun" :#imageLiteral(resourceName: "taigun"),
        "Slavia" :#imageLiteral(resourceName: "Slavia"),
        "Octavia" :#imageLiteral(resourceName: "Octavia"),
        "Kushaq" :#imageLiteral(resourceName: "Kushaq"),
        "Kodiaq" :#imageLiteral(resourceName: "Kodiaq"),
        "Ignis" :#imageLiteral(resourceName: "Ignis"),
        "Swift" :#imageLiteral(resourceName: "Swift"),
        "Baleno" :#imageLiteral(resourceName: "Baleno"),
        "Ciaz" :#imageLiteral(resourceName: "Ciaz"),
        "XL6" :#imageLiteral(resourceName: "XL6"),
        "Glanza" :#imageLiteral(resourceName: "Glanza"),
        "Urban Cruiser" :#imageLiteral(resourceName: "Urban Cruiser"),
        "Innova Crysta" :#imageLiteral(resourceName: "Innova Crysta"),
        "Fortuner" :#imageLiteral(resourceName: "Fortuner"),
        "M3_340i" :#imageLiteral(resourceName: "m340i_xdrive.jpeg"),
        "M5_Competetion" :#imageLiteral(resourceName: "m5 Compettetion.jpeg"),
        "M4 X-drive" :#imageLiteral(resourceName: "x4 30d x-drive.jpeg"),
        "X7" :#imageLiteral(resourceName: "x7.jpeg"),
        "AMG A Class" :#imageLiteral(resourceName: "amga45s.jpeg"),
        "C Class" :#imageLiteral(resourceName: "c-class.jpeg"),
        "S class" :#imageLiteral(resourceName: "s-classs.jpeg"),
        "GLE Coupe" :#imageLiteral(resourceName: "amgglc43coupe.jpeg"),
        "G Wagon" :#imageLiteral(resourceName: "gclass-wagon.jpeg"),
    ]

    var data : [String:[String]] =
    [
        "Punch" :   ["Tata", "Petrol", "Hatch", "Manual", "1199 cc", "18.82 kmpl", "5", "2",      "550000"],    // Punch
        "Altroz" :  ["Tata", "Petrol", "Hatch", "Manual", "1497 cc", "18.53 kmpl", "5", "2",     "650000"],    // Altroz
        "Nexon" :   ["Tata", "Petrol", "MSUV",   "AMT",   "1199 cc", "21.19 kmpl", "5", "4",      "780000"],    // Nexon
        "Harrier" : ["Tata", "Diesel", "SUV",    "AMT",   "1956 cc", "14.64 kmpl", "5", "6",    "1730000"],    // Harrier
        "Safari" :  ["Tata", "Diesel", "SUV",   "Manual", "1956 cc", "16.14 kmpl", "7", "6",     "2160000"],    // Safari
        "XUV_300" : ["Mahindra", "Petrol", "MSUV", "Manual", "1197 cc", "20.00 kmpl", "5", "2", "920000"],    // XUV_300
        "Thar" :    ["Mahindra", "Diesel", "SUV", "Manual", "1997 cc", "15.82 kmpl", "5", "2",     "1612000"],    // Thar
        "XUV700" :  ["Mahindra", "Diesel", "SUV", "Manual", "1999 cc", "21.37 kmpl", "7", "6",   "2120000"],    // XUV700
        "Scorpio" : ["Mahindra", "Diesel", "SUV", "Manual", "2198 cc", "20.62 kmpl", "7", "6",  "1833000"],    // Scorpio
        "i10_Nios" : ["Hyundai", "Petrol", "Hatch", "Manual","1197 cc", "20.07 kmpl", "5", "2", "543000"],     // i10
        "i20_Nline" : ["Hyundai", "Petrol", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2","999000"],     // i20_Nline
        "Verna" : ["Hyundai", "Petrol", "Sedan", "Manual","1497 cc", "17.07 kmpl", "5", "4",    "1143000"],     // Verna
        "Venue" : ["Hyundai", "Petrol", "MSUV", "Manual", "1098 cc", "18.82 kmpl", "5", "4",    "1216000"],     // Venue
        "Creta" : ["Hyundai", "Diesel", "SUV", "Manual",  "1493 cc", "16.82 kmpl", "5", "4",    "1636000"],     // Creta
        "Polo" : ["Volkswagen", "Diesel", "Hatch", "Manual","1099 cc", "15.82 kmpl", "5", "2",  "850000"],  // Polo
        "Vento" : ["Volkswagen", "Diesel", "Sedan", "Manual","999 cc", "16.32 kmpl", "5", "2",  "1110000"],  // Vento
        "Virtus" : ["Volkswagen", "Diesel", "Sedan", "Manual","1498 cc", "18.82 kmpl", "5", "2","1231900"],  // Virtus
        "Taigun" : ["Volkswagen", "Diesel", "MSUV", "Manual","1099 cc", "17.82 kmpl", "5", "4", "1644000"],  // Taigun
        "Slavia" : ["Skoda", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",     "1188000"],       // Slavia
        "Octavia" : ["Skoda", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "3124000"],       // Octavia
        "Kushaq" : ["Skoda", "Diesel", "MSUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",      "1790000"],       // Kushaq
        "Kodiaq" : ["Skoda", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "4036000"],       // Kodiaq
        "Ignis" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "530000"],        // Ignis
        "Swift" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "550000"],        // swift
        "Baleno" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",      "649000"],        // Baleno
        "Ciaz" : ["Nexa", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",        "910000"],        //
            // Ciaz
        "XL6" : ["Nexa", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",           "1130000"],        // XL6
        "Glanza" : ["Toyota", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "660000"],      // Glanza
        "Urban Cruiser" : ["Toyota", "Diesel", "MSUV", "Manual","1199 cc", "18.82 kmpl", "5", "2", "1120000"],      // Urban Cruiser
        "Innova Crysta" : ["Toyota", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2", "1910000 "],      // Crysta
        "Fortuner" : ["Toyota", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "3628000"],      // fortuner
        "M3_340i" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "7124000"],   // M3_340i
        "M5_Competetion" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "17537000"],  // M5_Competetion
        "M4 X-drive" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "14390000"],  // M4_X-drive
        "X7" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "18027000"],  // X7
        "AMG A Class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "8156000"],  // AMG A Class
        "C Class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "5600000"],  // C Class
        "S class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "18000000"],  // S class
        "GLE Coupe" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "16100000"],  // GLE Coupe
        "G Wagon" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "17400000"],  // G Wagon
        
        
    ]

    var filtered : [String:[String]] = [:]
    
    var filtered_images : [String:UIImage] = [:]
    
    
    var Brand : String!
    var Fuel : String!
    var BodyType : String!
    var min : Int = 0
    var max : Int = 0
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.imageView?.image = cars[indexing[indexPath.row]]
        cell.textLabel?.text = indexing[indexPath.row]
        
        return cell
        
    }
    
    var selected_brand : String = ""
    var selected_fuel_type : String = ""
    var selected_body_type : String = ""
    var selected_transmission : String = ""
    var selected_engine : String = ""
    var selected_mileage : String = ""
    var selected_seats : String = ""
    var selected_airbags : String = ""
    var selected_price : String = ""
    // var selected_budget : String = ""
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selected_brand = filtered[indexing[indexPath.row]]![0]
        selected_fuel_type = filtered[indexing[indexPath.row]]![1]
        selected_body_type = filtered[indexing[indexPath.row]]![2]
        selected_transmission = filtered[indexing[indexPath.row]]![3]
        selected_engine = filtered[indexing[indexPath.row]]![4]
        selected_mileage = filtered[indexing[indexPath.row]]![5]
        selected_seats = filtered[indexing[indexPath.row]]![6]
        selected_airbags = filtered[indexing[indexPath.row]]![7]
        selected_price = filtered[indexing[indexPath.row]]![8]
       // selected_budget = filtered[indexing[indexPath.row]]![8]
        
        performSegue(withIdentifier: "car_details_segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as! CarDetailsViewController
        
        dest.Brand_get = selected_brand
       //  dest.Budget_get = selected_budget
        dest.Price_get = selected_price
        dest.BodyType_get = selected_body_type
        dest.Fuel_get = selected_fuel_type
        dest.Transmission_get = selected_transmission
        dest.Engine_get = selected_engine
        dest.Mileage_get = selected_mileage
        dest.Seats_get = selected_seats
        dest.Airbags_get = selected_airbags
        
    }
    
}



