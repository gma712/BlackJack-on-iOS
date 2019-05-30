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
    var score: Int
    var burst = false
    
    init(_ deck: Deck) {
        self.hand = [Card]()
        self.hand.append(deck.drawed())
        self.hand.append(deck.drawed())
        self.score = hand[0].score() + hand[1].score()
    }
    
    func hit(_ deck: Deck) -> Card {
        let card: Card = deck.drawed()
        burstCheck()
        return card
    }
    
    func burstCheck() {
        if score > 21 {
            self.burst = true
        }
    }
    
    func stand(){
        
    }
}



