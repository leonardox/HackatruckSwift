//
//  CadastroFilmeViewController.swift
//  DesafioCoreData
//
//  Created by Francini Roberta de Carvalho on 11/1/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import UIKit

// Controller da view de cadastro de filmes, acionada pelo botão "+"
class CadastroFilmeViewController: UIViewController {

    @IBOutlet weak var nomeTextView: UITextField!
    
    @IBOutlet weak var anoTextView: UITextField!
    
    @IBOutlet weak var diretorTextView: UITextField!
    
    var ano: Int16 {
    
        if let text = anoTextView.text {
            if let intValue = Int16(text) {
                return intValue
            }
        }
        return 0
    }
    
    @IBAction func salvarFilme(_ sender: Any) {
    
        // 1 pegar as informacoes
        let nome = nomeTextView.text
        let diretor = diretorTextView.text
        
        // 2 montar o obj
        
        
        // 3 salvar o obj
    
    
    
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
