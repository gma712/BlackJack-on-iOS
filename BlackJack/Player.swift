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
        if self.score == 21{
            self.stand()
        }
    }

    
}



