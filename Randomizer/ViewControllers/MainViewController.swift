//
//  MainViewController.swift
//  Randomizer
//
//  Created by Ariel Golan on 24.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var minimumValueLable: UILabel!
    @IBOutlet var maximumVlaueLable: UILabel!
    @IBOutlet var randomValueLable: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minimumValueLable.text
        settingsVC.maximumValue = maximumVlaueLable.text
    }
    
    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLable.text ?? "") ?? 0
        let maximumNumber = Int(maximumVlaueLable.text ?? "") ?? 100
        
        
        randomValueLable.text = Int.random(in: minimumNumber...maximumNumber).formatted()
        
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingVC = segue.source as? SettingsViewController else { return }
        minimumValueLable.text = settingVC.minimumValueTextField.text
        maximumVlaueLable.text = settingVC.maximumValueTextField.text
    }
    
}

