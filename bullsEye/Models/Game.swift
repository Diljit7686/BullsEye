//
//  Game.swift
//  bullsEye
//
//  Created by Diljit Singh on 2022-08-28.
//

import Foundation
struct Game {
    var target = Int.random(in: 1..<100)
    var score = 0
    var round = 1
    
    
    func points(sliderValue: Int) -> Int {
        
      /*  var difference: Int
    
        difference = sliderValue - self.target
        if difference < 0
        {
           // difference = difference * -1
            difference *= -1
        }
        */
        
        100 - abs(target - sliderValue)
        
    
    }
    
}
