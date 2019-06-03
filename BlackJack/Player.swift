//
//  Player.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class Player: Person {

    
    override init(_ deck: Deck) {
        super.init(deck)
        if self.score >= 21{
            self.stand()
        }
    }

    override func hit(_ deck: Deck) -> Card? {
        let card = super.hit(deck)
        if self.score >= 21{
            self.stand()
        }
        return card
    }
}



