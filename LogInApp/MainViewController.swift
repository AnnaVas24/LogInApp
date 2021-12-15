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
    
    let userName = "Name"
    let userPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcomeLabelText = "Welcome, \(userName)!"
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
    
}

// MARK: - Private Methods
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
