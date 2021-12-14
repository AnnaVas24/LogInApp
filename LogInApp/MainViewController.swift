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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInButton() {
        if userNameTF.text == "" || passwordTF.text == "" {
            showAlert(title: "Ooops!", message: "Please enter your User Name and password")
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
