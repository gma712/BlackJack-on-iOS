//
//  PlayerHandControl.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

@IBDesignable class PlayerHandControl: UIStackView {

    //MARK: Properties
//    var cards: [Card]
    

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPlayer()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupPlayer()
    }
    
    private func setupPlayer() {

        print("setup")
//        print("Cards: \(cards)")
        
        for card in cards{
            print("The Card")
            
            
            var cardImage = UIImage(named: card.name())
            var cardView = UIImageView(image: cardImage)
            addArrangedSubview(cardView)
            card = Card(rank: Rank.four, suit: Suit.club)

        }
//        let bundle = Bundle(path: "")
        
//        for card in cards {
//            let cardImage = UIImage(named: "BackSide")
//            images.append(cardImage!)
//        }
    }
    
}
