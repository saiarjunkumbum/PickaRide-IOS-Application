//
//  HomePageViewController.swift
//  Arjun's_project
//
//  Created by Student on 01/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit
import AVFoundation

class HomePageViewController: UIViewController {

   
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.text = username_from_login
        
        let carGif = UIImage.gifImageWithName("car")
        imageView.image = carGif
        
        
        var path2 = Bundle.main.path(forResource:"new-beginnings-115456", ofType: "mp3")
        
        var url2 = URL(fileURLWithPath: path2!)
        
        player2 = AVPlayer(url: url2)
        
        player2.play()
    }
    
    var player2 : AVPlayer!
    
    var username_from_login : String!
    var str1 : String!
    
    @IBOutlet weak var username: UILabel!
    
    @IBAction func Explore_cars_btn(_ sender: Any) {
         performSegue(withIdentifier: "explore_cars_segue", sender: nil)
    }
    
    @IBAction func Compare_cars_btn(_ sender: Any) {
         performSegue(withIdentifier: "compare_cars_segue", sender: nil)
    }
    
}
