//
//  main.swift
//  TicTacToe
//
//  Created by Jonathon Day on 12/5/16.
//  Copyright © 2016 dayj. All rights reserved.
//

import Foundation

var playerX = Player(name: "Jon")
var playerY = Player(name: "CA")

func play(player: Player, place: Place) -> (Player, Board, Bool){
    var newPlayer = player
    var success = true
    //fails here with EXC_BAD_ACCESS
    if playerX.ownedPlaces.count > 0 {
        for i in playerX.ownedPlaces {
            if i.column == place.column && i.row == place.row {
                print("Place already taken)")
                success = false
            }
        }
    }
    if playerY.ownedPlaces.count > 0 {
        for i in playerY.ownedPlaces {
            if i.column == place.column && i.row == place.row {
                print("Place already taken)")
                success = false
            }
        }
    }
    if success == true {
        newPlayer.ownedPlaces.append(place)
    }
    if newPlayer.hasWinningCombination {
        print("Congrats \(newPlayer.name), You have won the game!")
    }
    let newBoard = Board()
    return (newPlayer, newBoard, success)
}
