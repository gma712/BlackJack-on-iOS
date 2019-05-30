//
//  Deck.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/30.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class Deck {
    var order: [Card]
    static let sharedDeck = Deck()
    
    init() {
        var cards = [Card]()
        for i in 0...3 {
            for j in 1...13 {
                cards.append(Card(rank: Rank(rawValue: j)!, suit: Suit(rawValue: i)!))
            }
        }
        self.order = cards
        self.order.shuffle()
    }
    
    private func shuffle() {
        for i in 0 ..< order.count {
            let r = Int(arc4random_uniform(UInt32(order.count - 1))) + 1
            order.swapAt(i, r)
        }
    }
    
    func drawed() -> Card {
        let card = order[0]
        order.remove(at: 0)
        return card
    }
}
