//
//  musica.swift
//  StoryBoardX
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import Foundation

class Musica{
    
    let nome: String
    let artista: String
    let album: String
    let foto: String
    
    init(nome: String, artista: String, album: String, foto: String) {
        self.nome = nome
        self.artista = artista
        self.album = album
        self.foto = foto
    }
}


class MusicaDao{
    
    static func initialize(){
    
    
    
    }

    static func getList() -> [Musica] {
        return [
            Musica(nome: "Alta Noite", artista: "Marisa Monte", album: "Duetos", foto: "foto01"),
            Musica(nome: "Bola Pra Frente", artista: "Maria Rita", album: "Brilha muito", foto: "foto02"),
            Musica(nome: "Demons", artista: "Imagine Dragons", album: "Radioactive", foto: "foto03"),
            Musica(nome: "Baby doll", artista: "Calcinha Preta", album: "Magica", foto: "foto04"),
            Musica(nome: "Destruiu Nosso Amor", artista: "Conde do forro", album: "Maltratando os coracoes", foto: "foto05")
        ]
    }
}
