//
//  ViewController.swift
//  LogInApp
//
//  Created by Vasichko Anna on 14.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userName = "Name"
    private let userPassword = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = [tabBarController.viewControllers]
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeLabel.text = "Welcome, \(userName)"
            }
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButton() {
        if userNameTF.text == "" || passwordTF.text == "" {
            showAlert(title: "Ooops!", message: "Please enter your User Name and password")
        } else if  userNameTF.text == userName && passwordTF.text == userPassword {
            performSegue(withIdentifier: "goToWelcome", sender: self)
            
        } else {
            showAlert(title: "The data is wrong!", message: "Please enter correct data")
        }
    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "Ooops!", message: "Your name is Name ☺️")
    }
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is Password ☺️")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTF.text = ""
        userNameTF.text = ""
    }
}

// MARK: - Private Methods
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
