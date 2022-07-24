//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Ariel Golan on 24.07.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var minimumValueTextField: UITextField!
    @IBOutlet var maximumValueTextField: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTextField.text = minimumValue
        maximumValueTextField.text = maximumValue
    }
    
    @IBAction func cancelButtunPressed() {
        dismiss(animated: true)
    }
    

}
