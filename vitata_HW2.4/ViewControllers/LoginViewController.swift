//
//  ViewController.swift
//  vitata_HW2.4
//
//  Created by Svetlana Tolstova on 5/31/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
        
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as! TabOneViewController
        destinationVC.welcomeText = "Welcome, \(loginTextField.text ?? "Welcome, Anonymous")"
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func loginButton() {
        if loginTextField.text == User.getLogin() && passwordTextField.text == User.getPassword() {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            
        }
        
    }
    
    @IBAction func forgotLogin() {
    }
    
    @IBAction func forgotPassword() {
    }
    
}

