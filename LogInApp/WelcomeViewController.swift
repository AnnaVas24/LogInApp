//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Vasichko Anna on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeLabelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = welcomeLabelText
    }
    

    @IBAction func logOutButton() {
        
    }
    
}
