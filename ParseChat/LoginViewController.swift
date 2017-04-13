//
//  ViewController.swift
//  ParseChat
//
//  Created by Curtis Wilcox on 4/12/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit
import Parse
class LoginViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(_ sender: Any) {
        
    }

    @IBAction func onSignUp(_ sender: Any) {
        var user = PFUser()
        user.username = userNameTextField.text
        user.password = passwordTextField.text
        user.email = userNameTextField.text
       
        user.signUpInBackground { (isSuccess, error) in
            if let error = error {
               NSLog("error")
                // Show the errorString somewhere and let the user try again.
            } else {
                NSLog("success sign up")
                // Hooray! Let them use the app now.
            }

        }
        
     

    }
}

