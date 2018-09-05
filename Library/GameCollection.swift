//
//  GameCollection.swift
//  Library
//
//  Created by Jordan on 9/5/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation

struct GameCollection {
    
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
