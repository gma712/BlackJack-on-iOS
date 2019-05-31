//
//  Users.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit


class Person {
    var hand: [Card]
    var score: Int = 0
    var drawNext = true
    var burst = false
    
    init(_ deck: Deck) {
        self.hand = [Card]()
        self.hand.append(deck.draw())
        self.hand.append(deck.draw())
        self.score += hand[0].score()
        self.score += hand[1].score()
    }
    
    func hit(_ deck: Deck) -> Card {
        let card: Card = deck.draw()
        self.addScore(card)
        self.burstCheck()
        return card
    }
    
    func stand(){
        self.drawNext = false
    }
    
    func addScore(_ card: Card) {
        self.score += card.score()
    }
    
    func burstCheck() {
        if self.score > 21 {
            self.burst = true
        }
    }
    
}



