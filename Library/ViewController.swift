//
//  ViewController.swift
//  Library
//
//  Created by Jordan on 9/4/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, AddGameViewControllerDelegate {
    
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
    
    func addGameViewControllerDidCancel(_ controller: AddGameViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func addGameViewController(_ controller: AddGameViewController, didFinishAdding item: Game) {
        
        let newRowIndex = games.count
        games.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddGame" {
            let controller = segue.destination as! AddGameViewController
            controller.delegate = self
        }
    }
    
}

