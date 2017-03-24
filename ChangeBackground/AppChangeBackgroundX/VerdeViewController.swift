//
//  VerdeViewController.swift
//  AppChangeBackgroundX
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class VerdeViewController: UIViewController {

    

    @IBOutlet weak var corTextField: UITextField!
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mostraProximaView"{
            if let novaView = segue.destination as? BrancoViewController {
            
                //novaView.corLabel.text = corTextField.text
                novaView.cor = corTextField.text
            }
            
            
        }
    }
 

}
