//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Jonathon Day on 12/5/16.
//  Copyright © 2016 dayj. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    
    let topLeft = Place(row: .top, column: .left)
    let topMiddle = Place(row: .top, column: .middle)
    let topRight = Place(row: .top, column: .right)
    let middleLeft = Place(row: .middle, column: .left)
    let middleMiddle = Place(row: .middle, column: .middle)
    let middleRight = Place(row: .middle, column: .right)
    let bottomLeft = Place(row: .bottom, column: .left)
    let bottomMiddle = Place(row: .bottom, column: .middle)
    let bottomRight = Place(row: .bottom, column: .right)
    
    func testHasWinningCombinationTrue() {
    
    let winningSetTopRow = [topLeft, topRight, topMiddle, bottomLeft, bottomRight]
    
    var PlayerOne = Player(name: "Jon")
    PlayerOne.ownedPlaces.append(contentsOf: winningSetTopRow)
    
    XCTAssertTrue(PlayerOne.hasWinningCombination)
        
    }
    
    func testHasWinningCombinationFalse() {
        
        let notWinningSet = [topLeft, topRight, bottomRight, bottomLeft]
        
        var PlayerOne = Player(name: "Jon")
        PlayerOne.ownedPlaces.append(contentsOf: notWinningSet)
        
        XCTAssertTrue(!PlayerOne.hasWinningCombination)
        
    }
    
    func testHasWinningSetDiagonal() {
        let winningSetDiagonal = [topLeft, middleMiddle, bottomRight, topRight]
        var PlayerOne = Player(name: "Jon")
        PlayerOne.ownedPlaces.append(contentsOf: winningSetDiagonal)
        XCTAssertTrue(PlayerOne.hasWinningCombination)

    }
    
    func testPlay() {
        //if i remove the playerX definition here then I get a crazy build error
        let playerX = Player(name: "Jon")
        let result = play(player: playerX, place: Place(row: .top, column: .right))
        XCTAssertTrue(result.0.name == "Jon")
    }
    
}
