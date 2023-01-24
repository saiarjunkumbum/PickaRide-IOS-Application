// ComparecarsViewController

import UIKit

class CellClass: UITableViewCell {
    
}

class ComparecarsViewController: UIViewController {
    
    @IBOutlet weak var Select1 : UIButton!
    @IBOutlet weak var Select2 : UIButton!
    
    @IBOutlet var imageOutlet1: UIImageView!
    @IBOutlet var imageOutlet2: UIImageView!
    
  
    
    @IBOutlet var BrandA: UILabel!
    @IBOutlet var BrandB: UILabel!
    
    
    @IBOutlet var FuelA: UILabel!
    @IBOutlet var FuelB: UILabel!
    
    
    @IBOutlet var BodyA: UILabel!
    @IBOutlet var BodyB: UILabel!
    
    
    @IBOutlet var TransA: UILabel!
    @IBOutlet var TransB: UILabel!
    
    
    @IBOutlet var EngineA: UILabel!
    @IBOutlet var EngineB: UILabel!
    
    
    @IBOutlet var MileageA: UILabel!
    @IBOutlet var MileageB: UILabel!
    
    
    @IBOutlet var SeatsA: UILabel!
    @IBOutlet var SeatsB: UILabel!
    
    
    @IBOutlet var AirbagsA: UILabel!
    @IBOutlet var AirbagsB: UILabel!
    
    
    @IBOutlet var PriceA: UILabel!
    @IBOutlet var PriceB: UILabel!
    
    
    
    @IBAction func submitBtn(_ sender: Any) {
       var alert = UIAlertController(title: "Warning", message: "Please select both the options", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        if (Select1.currentTitle! == "SelectCar1" || Select2.currentTitle! == "SelectCar2")
        {
            var alert = present(alert, animated: true, completion: nil)
        }
        else
        {
            BrandA.text = data[ Select1.currentTitle! ]![0]
            BrandB.text = data[ Select2.currentTitle! ]![0]
            
            FuelA.text = data[ Select1.currentTitle! ]![1]
            FuelB.text = data[ Select2.currentTitle! ]![1]
            
            BodyA.text = data[ Select1.currentTitle! ]![2]
            BodyB.text = data[ Select2.currentTitle! ]![2]
            
            TransA.text = data[ Select1.currentTitle! ]![3]
            TransB.text = data[ Select2.currentTitle! ]![3]
            
            EngineA.text = data[ Select1.currentTitle! ]![4]
            EngineB.text = data[ Select2.currentTitle! ]![4]
            
            MileageA.text = data[ Select1.currentTitle! ]![5]
            MileageB.text = data[ Select2.currentTitle! ]![5]
            
            SeatsA.text = data[ Select1.currentTitle! ]![6]
            SeatsB.text = data[ Select2.currentTitle! ]![6]
            
            AirbagsA.text = data[ Select1.currentTitle! ]![7]
            AirbagsB.text = data[ Select2.currentTitle! ]![7]
            
            PriceA.text = data[ Select1.currentTitle! ]![8]
            PriceB.text = data[ Select2.currentTitle! ]![8]
            
            imageOutlet1.image = cars_images[ Select1.currentTitle! ]
            imageOutlet2.image = cars_images[ Select2.currentTitle! ]

            
        }
    }
    
    let transparentView = UIView()
    let tableView = UITableView()
    
    var selectedButton = UIButton()
    
    var dataSource = [String]()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self as! UITableViewDelegate
        tableView.dataSource = self as! UITableViewDataSource
        tableView.register(CellClass.self, forCellReuseIdentifier: "Cell")
    }
    
    func addTransparentView(frames: CGRect) {
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
        
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        tableView.reloadData()
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgesture)
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(self.dataSource.count * 50))
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = selectedButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @IBAction func onClickSelect1(_ sender: Any) {
        dataSource = ["Punch", "Altroz", "Nexon", "Harrier", "Safari", "XUV_300", "Thar", "XUV700", "Scorpio", "i10_Nios", "i20_Nline", "Verna", "Venue", "Creta", "Polo", "Vento", "Virtus", "Taigun", "Slavia", "Octavia", "Kushaq", "Kodiaq", "Ignis", "Swift", "Baleno", "Ciaz", "XL6", "Glanza", "Urban Cruiser", "Innova Crysta", "Fortuner", "M3_340i", "M5_Competetion", "M4 X-drive", "X7", "AMG A Class", "C Class", "S class", "GLE Coupe", "G Wagon"]
        
        selectedButton = Select1
        addTransparentView(frames: Select1.frame)
    }
    
    @IBAction func onClickSelect2(_ sender: Any) {
        dataSource = ["Punch", "Altroz", "Nexon", "Harrier", "Safari", "XUV_300", "Thar", "XUV700", "Scorpio", "i10_Nios", "i20_Nline", "Verna", "Venue", "Creta", "Polo", "Vento", "Virtus", "Taigun", "Slavia", "Octavia", "Kushaq", "Kodiaq", "Ignis", "Swift", "Baleno", "Ciaz", "XL6", "Glanza", "Urban Cruiser", "Innova Crysta", "Fortuner", "M3_340i", "M5_Competetion", "M4 X-drive", "X7", "AMG A Class", "C Class", "S class", "GLE Coupe", "G Wagon"]
        
        selectedButton = Select2
        addTransparentView(frames: Select2.frame)
    }
}





var cars_images : [String:UIImage] =
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
        "i10_Nios": ["Hyundai", "Petrol", "Hatch", "Manual","1197 cc", "20.07 kmpl", "5", "2", "543000"],     // i10
        "i20_Nline": ["Hyundai", "Petrol", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2","999000"],     // i20_Nline
        "Verna" : ["Hyundai", "Petrol", "Sedan", "Manual","1497 cc", "17.07 kmpl", "5", "4",    "1143000"],  // Verna
        "Venue" : ["Hyundai", "Petrol", "MSUV", "Manual", "1098 cc", "18.82 kmpl", "5", "4",    "1216000"],  // Venue
        "Creta" : ["Hyundai", "Diesel", "SUV", "Manual",  "1493 cc", "16.82 kmpl", "5", "4",    "1636000"],  // Creta
        "Polo" : ["Volkswagen", "Diesel", "Hatch", "Manual","1099 cc", "15.82 kmpl", "5", "2",  "850000"],   // Polo
        "Vento" : ["Volkswagen", "Diesel", "Sedan", "Manual","999 cc", "16.32 kmpl", "5", "2",  "1110000"],  // Vento
        "Virtus" : ["Volkswagen", "Diesel", "Sedan", "Manual","1498 cc", "18.82 kmpl", "5", "2","1231900"],  // Virtus
        "Taigun" : ["Volkswagen", "Diesel", "MSUV", "Manual","1099 cc", "17.82 kmpl", "5", "4", "1644000"],  // Taigun
        "Slavia" : ["Skoda", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",     "1188000"],  // Slavia
        "Octavia" : ["Skoda", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "3124000"],  // Octavia
        "Kushaq" : ["Skoda", "Diesel", "MSUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",      "1790000"],  // Kushaq
        "Kodiaq" : ["Skoda", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "4036000"],  // Kodiaq
        "Ignis" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "530000"],   // Ignis
        "Swift" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",       "550000"],   // swift
        "Baleno" : ["Nexa", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",      "649000"],   // Baleno
        "Ciaz" : ["Nexa", "Diesel", "Sedan", "Manual","1199 cc", "18.82 kmpl", "5", "2",        "910000"],   // Ciaz
        "XL6" : ["Nexa", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",           "1130000"],  // XL6
        "Glanza" : ["Toyota", "Diesel", "Hatch", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "660000"],   // Glanza
        "Urban Cruiser" : ["Toyota", "Diesel", "MSUV", "Manual","1199 cc", "18.82 kmpl", "5", "2", "1120000"], // Urban Cruiser
        "Innova Crysta" : ["Toyota", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2", "1910000 "], //Crysta
        "Fortuner" : ["Toyota", "Diesel", "SUV", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "3628000"],  //fortuner
        "M3_340i" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2",    "7124000"],  // M3_340i
        "M5_Competetion" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "17537000"],  // M5_Competetion
        "M4 X-drive" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "14390000"],  // M4_X-drive
        "X7" : ["BMW", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "18027000"],  // X7
        "AMG A Class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "8156000"], // AMG A Class
        "C Class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "5600000"],  // C Class
        "S class" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "18000000"],  // S class
        "GLE Coupe" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "16100000"],  // GLE Coupe
        "G Wagon" : ["Merc", "Diesel", "Premium", "Manual","1199 cc", "18.82 kmpl", "5", "2", "17400000"],  // G Wagon
        
]



extension ComparecarsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedButton.setTitle(dataSource[indexPath.row], for: .normal)
        removeTransparentView()
    }
    
    
}
