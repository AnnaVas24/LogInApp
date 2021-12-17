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
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        let viewControllers = tabBarController.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                let moreInfoVC = navigationVC.topViewController as! MoreInfoViewController
                moreInfoVC.userName = user.person.name
                moreInfoVC.userSurname = user.person.surname
                moreInfoVC.age = user.person.age
                moreInfoVC.city = user.person.city
                moreInfoVC.languages = user.person.languages
                moreInfoVC.hobbies = user.person.hobbies
                moreInfoVC.pet = user.person.pet
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
        } else if  userNameTF.text == user.userName && passwordTF.text == user.password {
            performSegue(withIdentifier: "goToWelcome", sender: nil)
            
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
