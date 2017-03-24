//
//  ListaMusicasTableViewController.swift
//  StoryBoardX
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit

class ListaMusicasTableViewController: UITableViewController {

    
    var musicas: [Musica] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        musicas = MusicaDao.getList()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listaMusicas", for: indexPath)      

        
        if let musicaCell = cell as? MusicaTableViewCell{
        
            let musica = musicas[indexPath.row]
            
            musicaCell.musicaLabel.text = musica.nome
            musicaCell.artistaLabel.text = musica.artista
        
        }
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "detalheView"{
            
            if let novaView = segue.destination as? detalhesViewController {
                
                
                if let indiceSelecionado = tableView.indexPathForSelectedRow{
                    
                    novaView.musica = musicas[indiceSelecionado.row].nome
                    novaView.album = musicas[indiceSelecionado.row].album
                    novaView.artista = musicas[indiceSelecionado.row].artista
                    novaView.foto = musicas[indiceSelecionado.row].foto
                }
                
                
                
                
                //novaView.corLabel.text = corTextField.text
                //novaView.cor = corTextField.text
            }
            
            
        }
        
        
    }
 

}
