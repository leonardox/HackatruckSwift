//
//  FilmeDAO.swift
//  MeusFilmesX
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import Foundation
import CoreData


class FilmeDAO {

    // 1 Adicionar
    static func adicionar (_ filme: Filme) -> Bool {

        return CoreDataManager.inserir(filme)
    }
    // 2 Remover
    static func remover (_ filme: Filme) -> Bool {
        
        return CoreDataManager.delete(filme)
    }
    
    // 3 Buscar
    static func buscarTodos() -> [Filme] {
    
        var results = [Filme]()
        
        let request: NSFetchRequest<Filme> = Filme.fetchRequest()
        
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "titulo", ascending: true)
        ]
        
        // Busca específica precisa definir predicate na request
        
        
        do {
            
            try results = CoreDataManager.getContext().fetch(request)
        
        } catch let error {
            
            print("Não foi possível realizar a busca por Filmes. Erro: \(error)")
        }
        
        return results
    
    }
}















