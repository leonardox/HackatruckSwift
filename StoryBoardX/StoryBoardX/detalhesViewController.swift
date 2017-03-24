//
//  detalhesViewController.swift
//  StoryBoardX
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class detalhesViewController: UIViewController {

    
    
    @IBOutlet weak var fotoImageView: UIImageView!
    
    @IBOutlet weak var musicaLabe: UILabel!
    
    
    @IBOutlet weak var artistaLabel: UILabel!
    
    
    @IBOutlet weak var albumLabel: UILabel!
    
    var musica: String?
    
    var artista: String?
    
    var album: String?
    
    var foto: String?
    
    override func viewDidLoad() {
        
        musicaLabe.text = "Música: \(musica!)"
        
        artistaLabel.text = "Artista: \(artista!)"
        
        albumLabel.text = "Album: \(album!)"
        
        fotoImageView.image = UIImage(named: foto!)
        
        self.title = artista
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
