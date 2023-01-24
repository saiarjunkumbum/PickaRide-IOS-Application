//
//  ForgotpasswordVC.swift
//  Arjun's_project
//
//  Created by Student on 31/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate: AnyObject {
    func updateDetails( password : String )
}


class ForgotpasswordVC: UIViewController {
    
    var credObj =  Credentials()
    weak var delegate : DataEnteredDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    // Extracting email from MainVC
    var email_stored : String!
    
    
    @IBOutlet weak var email_outlet: UITextField!
    
    
    @IBOutlet weak var new_passwd: UITextField!
    
    
    @IBOutlet weak var reenter_passwd: UITextField!
    
    
    
    @IBAction func generate(_ sender: Any) {
        
        let alert = UIAlertController(title: "Warning",
                                            message: "Enter something..",
                                            preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "OK",
                                            style: UIAlertAction.Style.cancel,
                                            handler: nil))
        
        
        
        // if email entered is wrong
        var email_alert = UIAlertController(title: "Email",
                                            message: "Wrong Email",
                                            preferredStyle: UIAlertController.Style.alert)
        
        // ro remove the pop-up
        email_alert.addAction(UIAlertAction(title: "Cancel",
                                            style: UIAlertAction.Style.cancel,
                                            handler: nil))
        
        // if password doesn't match the declaration
        var password_alert = UIAlertController(title: "Password",
                                               message: "Passwords doesn't match !",
                                               preferredStyle: UIAlertController.Style.alert)
        password_alert.addAction(UIAlertAction(title: "Cancel",
                                               style: UIAlertAction.Style.cancel,
                                               handler: nil))

        print(credObj.passwd)
        
        if(email_outlet.text == "" || new_passwd.text == "" || reenter_passwd.text == "")
        {
            present(alert, animated: true, completion: nil)
        }
        else if(email_outlet.text != credObj.username)
        {
            self.present(email_alert, animated: true, completion: nil)
        }
        else if(new_passwd.text != reenter_passwd.text)
        {
            self.present(password_alert, animated: true, completion: nil)
        }
        else
        {
            //credObj.passwd = new_passwd.text!
            
            //self.dismiss(animated: true , completion: nil)
            
            delegate?.updateDetails( password: new_passwd.text! )
            
            print(new_passwd.text!)
            
            _ = self.navigationController?.popViewController(animated: true)
        }
        
       
    }
    
}
