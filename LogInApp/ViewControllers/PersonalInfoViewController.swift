//
//  PersonalInfoViewController.swift
//  LogInApp
//
//  Created by Vasichko Anna on 17.12.2021.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var languagesLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    @IBOutlet weak var petLabel: UILabel!
   
    var age = 0
    var city = ""
    var languages = ""
    var hobbies = ""
    var pet = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "Age: \(age)"
        cityLabel.text = "City: \(city)"
        languagesLabel.text = "Languages: \(languages)"
        hobbiesLabel.text = "Hobbies: \(hobbies)"
        petLabel.text = "Pet: \(pet)"
    }
    


}
