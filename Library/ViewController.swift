//
//  ViewController.swift
//  Library
//
//  Created by Jordan on 9/4/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var games: [Game] = []
    let gc = GameCollection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        games = gc.constructGameCollection()
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let game = games[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath) as! GameCell
        
        cell.setLabels(setGame: game)
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
       
        if editingStyle == UITableViewCellEditingStyle.delete {
            swipeToDelete(indexPath: indexPath)
        }
    }
    
    func swipeToDelete(indexPath: IndexPath) {
        games.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.bottom)
    }
    
}

