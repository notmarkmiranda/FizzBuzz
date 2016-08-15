//
//  Game.swift
//  FizzBuzz
//
//  Created by Mark Miranda on 8/14/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import Foundation

class Game: NSObject {

    var score : Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move : String) -> Bool {
        
        let result = brain.check(score + 1)
        
        if result == move {
            score += 1
            return true
        } else {
            return false
        }
    }
}