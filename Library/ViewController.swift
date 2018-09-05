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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        games = constructGameCollection()
        print(games)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    
    func constructGameCollection() -> [Game] {
        
        var tempGames: [Game] = []
        
        let gameOne = Game(name: "The Witcher 3", platform: "xbox")
        let gameTwo = Game(name: "The Last of Us", platform: "ps4")
        let gameThree = Game(name: "Hearthstone", platform: "pc")
        let gameFour = Game(name: "Starcraft 2", platform: "pc")
        
        tempGames.append(gameOne)
        tempGames.append(gameTwo)
        tempGames.append(gameThree)
        tempGames.append(gameFour)
        
        return tempGames
        
    }
    
}

