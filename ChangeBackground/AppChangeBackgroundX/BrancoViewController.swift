//
//  BrancoViewController.swift
//  AppChangeBackgroundX
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class BrancoViewController: UIViewController {
    

    @IBOutlet weak var corLabel: UILabel!
    
    var cor: String?
    
    
    
    override func viewDidLoad() {
        corLabel.text = cor
        
        if cor != ""{
        
            switch cor!.lowercased() {
            case "vermelho", "red":
                self.view.backgroundColor = UIColor.red
            case "verde", "green":
                self.view.backgroundColor = UIColor.green
            default:
                self.view.backgroundColor = UIColor.gray
            }
        
        }
        
        
        
    }
 

}
