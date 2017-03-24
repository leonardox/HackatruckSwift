//
//  ViewController.swift
//  MeusFilmesX
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tituloTextField: UITextField!
    
    @IBOutlet weak var diretorTextField: UITextField!
    
    @IBOutlet weak var anoTextField: UITextField!
    
    var ano: Int16 {
    
        if let text = anoTextField.text {
            if let intValue = Int16(text) {
                return intValue
            }
        }
        return 0
    }
    
    @IBAction func adicionarFilme() {
        
        // 1 pegar as informacoes
        let titulo = tituloTextField.text
        let diretor = diretorTextField.text
        
        // 2 criar o obj
        let novoFilme = Filme()
        novoFilme.titulo = titulo
        novoFilme.diretor = diretor
        novoFilme.ano = self.ano
        
        // 3 adicionar o obj no bd
        if FilmeDAO.adicionar(novoFilme) {
            
            print("Filme \(novoFilme.titulo) adicionado com sucesso!")
        } else {
            print("Não foi possível adicionar o Filme \(novoFilme.titulo)")
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

