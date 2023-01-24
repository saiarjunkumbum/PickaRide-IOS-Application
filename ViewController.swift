//
//  ViewController.swift
//  Arjun's_project
//
//  Created by Student on 31/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, DataEnteredDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let catGif = UIImage.gifImageWithName("cat")
        imageview.image = catGif
        // Do any additional setup after loading the view, typically from a nib.
        
        var path = Bundle.main.path(forResource:"OLA cab booking", ofType: "mp3")
        
        var url = URL(fileURLWithPath: path!)
        
        player = AVPlayer(url: url)
        
        player.play()
        
    }
    
    
    var player : AVPlayer!
    
    // Forgot pasword
    
    func updateDetails(password: String)
    {
        credObj.passwd = password
    }
    
    
    
    
    @IBOutlet var imageview: UIImageView!
    
    var credObj = Credentials()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    
    
    @IBOutlet weak var email_outlet: UITextField!
    
    @IBOutlet weak var passwd_outlet: UITextField!
    
    
    @IBAction func forgot_password(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgotPassword_segue", sender: nil)

    }
    
    
    @IBAction func Login(_ sender: Any)
    {
       
        print(credObj.passwd)
        
        //Login button
        if (email_outlet.text == credObj.username) && (passwd_outlet.text == credObj.passwd)
        {
            
            performSegue(withIdentifier: "login_to_welcome", sender: nil)
            
        }
        else
        { let alert = UIAlertController(title: "Login",
                                        message: "Invalid input",
                                        preferredStyle: UIAlertController.Style.alert)
            
            // adding cancel button to alert
            alert.addAction(UIAlertAction(title: "Cancel",
                                          style: UIAlertAction.Style.cancel,
                                          handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    // data transfer
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="ForgotPasswordsegue")
        {
            let dest = segue.destination as! ForgotpasswordVC
            
            dest.delegate = self
            
            dest.credObj = credObj
            
        }
       else if(segue.identifier=="login_to_welcome")
        {
            let dest = segue.destination as! HomePageViewController
    
            dest.username_from_login = email_outlet.text
            
        }
       /* else{
            var dest = segue.destination as! HomePageViewController
            dest.str1 = email_outlet.text
        }
 */
    }
    
    
}

class Credentials
{
    var username: String = "Max Sir"
    var passwd: String = "1234"
}
