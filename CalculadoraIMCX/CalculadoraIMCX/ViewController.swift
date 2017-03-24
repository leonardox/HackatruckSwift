//
//  ViewController.swift
//  CalculadoraIMCX
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var pesoTextField: UITextField!


    @IBOutlet weak var alturaTextField: UITextField!
    
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    @IBAction func calculaImc() {
        
        let peso = pesoTextField.text!
        let altura = alturaTextField.text!
        
        let imc = Double(peso)! / Double(altura)!
        
        resultadoLabel.text = String(imc)
        
        pesoTextField.text = ""
        alturaTextField.text = ""
        
        
    }
    
}

