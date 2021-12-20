//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by Vasichko Anna on 17.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    var user: User!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.name + " " + user.person.surname
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personalInfoVC = segue.destination as! PersonalInfoViewController
        personalInfoVC.age = user.person.age
        personalInfoVC.languages = user.person.languages
        personalInfoVC.hobbies = user.person.hobbies
        personalInfoVC.city = user.person.city
        personalInfoVC.pet = user.person.pet
        
    }
}
