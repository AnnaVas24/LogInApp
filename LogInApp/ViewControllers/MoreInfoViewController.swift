//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by Vasichko Anna on 17.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    var userName = ""
    var userSurname = ""
    var age = 0
    var city = ""
    var languages = ""
    var hobbies = ""
    var pet = ""
   

    override func viewDidLoad() {
        super.viewDidLoad()
    title = userName + " " + userSurname
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personalInfoVC = segue.destination as! PersonalInfoViewController
        personalInfoVC.age = age
        personalInfoVC.languages = languages
        personalInfoVC.hobbies = hobbies
        personalInfoVC.city = city
        personalInfoVC.pet = pet
        
    }
}
