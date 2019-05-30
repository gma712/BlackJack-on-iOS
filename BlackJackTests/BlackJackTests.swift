//
//  BlackJackTests.swift
//  BlackJackTests
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import XCTest
@testable import BlackJack

class BlackJackTests: XCTestCase {

    func testDeckInitializationSucceed() {
        
        let deck = Deck.init()
        XCTAssertNotNil(deck)
    }

    func testPlayerInitializationSucceed() {
        
        let deck = Deck()
        let player = Player.init(deck)
        XCTAssertNotNil(player)
    }
    
    func testCardName() {
        let club4 = Card(rank: Rank.four, suit: Suit.club)
        XCTAssertEqual(club4.name(), "club4")
        
        let heart1 = Card(rank: Rank.ace, suit: Suit.heart)
        XCTAssertEqual(heart1.name(), "heart1")
    }

}
