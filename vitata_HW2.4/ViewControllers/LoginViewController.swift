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
    
    
    private func showAlert(title: String, message: String) {
        let myAlert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
            myAlert.dismiss(animated: true, completion: nil)
        }))
        
        present(myAlert, animated: true, completion: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func loginButton() {
        if loginTextField.text == User.getLogin() && passwordTextField.text == User.getPassword() {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            showAlert(title: "Error", message: "Wrong credenials, try again")
            passwordTextField.text = ""
        }
        
    }
    
    @IBAction func forgotLogin() {
        showAlert(title: "Oops", message: "Login is Andrew")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops", message: "Password is 111")
    }
    
}

