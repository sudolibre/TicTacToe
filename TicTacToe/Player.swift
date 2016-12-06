//
//  Player.swift
//  TicTacToe
//
//  Created by Jonathon Day on 12/5/16.
//  Copyright © 2016 dayj. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    var ownedPlaces = [Place]()
    var hasWinningCombination: Bool {
        var topRows = 0
        var middleRows = 0
        var bottomRows = 0
        var leftColumns = 0
        var middleColumns = 0
        var rightColumns = 0
        var diagonalRight = 0
        var diagnoalLeft = 0
        
        for i in ownedPlaces {
            switch i.column {
            case .right:
                rightColumns += 1
            case .middle:
                middleColumns += 1
            case .left:
                leftColumns += 1
            }
            switch i.row {
            case .bottom:
                bottomRows += 1
            case .middle:
                middleRows += 1
            case .top:
                topRows += 1
            }
            
            switch (i.row, i.column) {
            case (.bottom, .left):
                diagnoalLeft += 1
            case (.middle,.middle):
                diagnoalLeft += 1
                diagonalRight += 1
            case (.top, .right):
                diagnoalLeft += 1
            case (.bottom, .right):
                diagonalRight += 1
            case (.top, .left):
                diagonalRight += 1
            default:
                continue
            }
        }
        
        return topRows == 3 || middleRows == 3 || bottomRows == 3 || leftColumns == 3 || middleColumns == 3 || rightColumns == 3 || diagnoalLeft == 3 || diagonalRight == 3
    }
    
    init(name: String) {
        self.name = name
    }
    
}
