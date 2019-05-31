//
//  PlayerHandControl.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

@IBDesignable class PlayerHandControl: HandControl {

    func firstSet(_ player: Player) {
        print(self.arrangedSubviews)
        self.holdingCards = player.hand
        openCard(index: 0)
        openCard(index: 1)
        print(self.arrangedSubviews)
    }
    
    

}
