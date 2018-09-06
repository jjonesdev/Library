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
        
        let gameOne = Game(name: "The Witcher 3", platform: "xbox")
        let gameTwo = Game(name: "The Last of Us", platform: "ps4")
        let gameThree = Game(name: "Hearthstone", platform: "pc")
        let gameFour = Game(name: "Starcraft 2", platform: "pc")
        
        let tempGames = [gameOne, gameTwo, gameThree, gameFour]
        
        return tempGames
        
    }
    
}
