//
//  DealerHandControl.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/31.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

@IBDesignable class DealerHandControl: HandControl {

    func firstSet(_ dealer: Dealer) {
        print(self.arrangedSubviews)
        self.holdingCards = dealer.hand
        openCard(index: 0)
        print(self.arrangedSubviews)
    }

    
}
