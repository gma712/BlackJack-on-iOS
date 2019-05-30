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
    private var holdingCards = [UIImageView]()
    

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupPlayer(_ player: Player) {

        for card in holdingCards {
            removeArrangedSubview(card)
            card.removeFromSuperview()
        }
        holdingCards.removeAll()

        print("setup")
        
        let bundle = Bundle(for: type(of: self))
        let cardImage = UIImage(named: "BackSide", in: bundle, compatibleWith: self.traitCollection)
        if let cardImage = cardImage {
            let cardView = UIImageView(image: cardImage)
            self.addArrangedSubview(cardView)
            self.holdingCards.append(cardView)
        } else {
            fatalError("Resource not found.")
        }
//        for card in player.hand {
//            print("The Card: \(card.name())")
//
//
//            let cardImage = UIImage(named: "BackSide", in: bundle, compatibleWith: self.traitCollection)
//            print(cardImage)
//            let cardView = UIImageView(image: cardImage!)
//            print(cardView)
//            addArrangedSubview(cardView)
//            holdingCards.append(cardView)
//        }
    }
}
