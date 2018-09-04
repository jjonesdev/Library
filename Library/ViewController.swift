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
        constructGameCollection()
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
        
       return
        
    }
    
    
    func constructGameCollection() {
        
        let gc = GameCollection()
        
        for game in gc.gameCollection {
            let newGame = Game(name: game.key, platform: game.value)
            games.append(newGame)
        }
        
    }
    
}

