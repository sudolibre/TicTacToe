//
//  Board.swift
//  TicTacToe
//
//  Created by Jonathon Day on 12/5/16.
//  Copyright © 2016 dayj. All rights reserved.
//

import Foundation

struct Board {
    var topLeft = (Place(row: .top, column: .left), Marker.none)
    var topMiddle = (Place(row: .top, column: .middle), Marker.none)
    var topRight = (Place(row: .top, column: .right), Marker.none)
    var middleLeft = (Place(row: .middle, column: .left), Marker.none)
    var middleMiddle = (Place(row: .middle, column: .middle), Marker.none)
    var middleRight = (Place(row: .middle, column: .right), Marker.none)
    var bottomLeft = (Place(row: .bottom, column: .left), Marker.none)
    var bottomMiddle = (Place(row: .bottom, column: .middle), Marker.none)
    var bottomRight = (Place(row: .bottom, column: .right), Marker.none)
    
    init() {
        if playerX.ownedPlaces.count > 0 {
        for i in playerX.ownedPlaces {
            switch (i.row, i.column) {
            case (.top, .left):
                topLeft.1 = .X
            case (.top, .middle):
                topMiddle.1 = .X
            case (.top, .right):
                topRight.1 = .X
            case (.middle, .left):
                middleLeft.1 = .X
            case (.middle, .right):
                middleRight.1 = .X
            case (.middle, .middle):
                middleMiddle.1 = .X
            case (.bottom, .left):
                bottomLeft.1 = .X
            case (.bottom, .right):
                bottomRight.1 = .X
            case (.bottom, .middle):
                bottomMiddle.1 = .X
            }
        }
        }
        if playerY.ownedPlaces.count > 0 {
        for i in playerY.ownedPlaces {
            switch (i.row, i.column) {
            case (.top, .left):
                topLeft.1 = .O
            case (.top, .middle):
                topMiddle.1 = .O
            case (.top, .right):
                topRight.1 = .O
            case (.middle, .left):
                middleLeft.1 = .O
            case (.middle, .right):
                middleRight.1 = .O
            case (.middle, .middle):
                middleMiddle.1 = .O
            case (.bottom, .left):
                bottomLeft.1 = .O
            case (.bottom, .right):
                bottomRight.1 = .O
            case (.bottom, .middle):
                bottomMiddle.1 = .O
            }
            
        }
        }
    }
    
}
