//
//  Dealer.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/30.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class Dealer: Person {
    
    override init(_ deck: Deck) {
        super.init(deck)
        if self.score >= 17 {
            self.stand()
        }
    }
    
    func mainAction(_ deck: Deck) -> [Card] {
        var cards = [Card]()
        while self.drawNext == true {
            let card = self.hit(deck)
            if let card = card {
                cards.append(card)
                if self.score >= 17 {
                    self.stand()
                } else {
                    print("No more draw.")
                }
                
            }
        }
        return cards
    }
}
