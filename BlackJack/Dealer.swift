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
    
    func mainAction(_ deck: Deck) {
        while self.drawNext == true {
            self.hit(deck)
            if self.score >= 17 {
                self.stand()
            }
        }
    }
}
