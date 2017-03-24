//
//  ViewController.swift
//  MyFirstAppX
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var MiddleNameTextField: UITextField!

    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var FullNameLabel: UILabel!
    
    @IBAction func sayMyNamePlease() {
        // Pegar o tex que o usuário digitou
        
        let firstName = self.firstNameTextField.text!
        let middleName = self.MiddleNameTextField.text!
        let lastName = self.LastNameTextField.text!
        // Colocar o texto na Label
        
        self.FullNameLabel.text = "\(firstName) \(middleName) \(lastName)"
        // Apagar o texto
        self.firstNameTextField.text = ""
        self.MiddleNameTextField.text = ""
        self.LastNameTextField.text = ""
    }
}

