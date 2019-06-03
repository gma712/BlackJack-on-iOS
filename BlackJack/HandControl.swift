//
//  HandControl.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/31.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit


// This is the super class of PlayerHandControler and DealerHandControler.
class HandControl: UIStackView {
    //MARK: Properties
    var holdingCards = [Card]()
    
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        
        print("setup")
        let bundle = Bundle(for: type(of: self))
        for _ in 1...2 {
            let cardImage = UIImage(named: "BackSide", in: bundle, compatibleWith: self.traitCollection)
            if let cardImage = cardImage {
                let cardImageView = CardImageView(image: cardImage)
                self.addArrangedSubview(cardImageView)
            } else {
                fatalError("Resource not found.")
            }
        }
    }
    
    func openCard(index: Int) {
        let bundle = Bundle(for: type(of: self))
        let openedCard = self.holdingCards[index]
        let openedCardImage = UIImage(named: openedCard.name(), in: bundle, compatibleWith: self.traitCollection)
        if let openedCardImage = openedCardImage {
            let openedCardView = CardImageView(image: openedCardImage)
            self.removeArrangedSubview(self.arrangedSubviews[index])
            self.insertArrangedSubview(openedCardView, at: index)
        } else {
            fatalError("Resources \(openedCard.name()) is not found.")
        }
    }
    
    func addHand(_ card: Card) {
        let bundle = Bundle(for: type(of: self))
        let cardImage = UIImage(named: card.name(), in: bundle, compatibleWith: self.traitCollection)
        if let cardImage = cardImage {
            let cardImageView = CardImageView(image: cardImage)
            self.addArrangedSubview(cardImageView)
            self.holdingCards.append(card)
        } else {
            fatalError("Resources \(card.name()) is not found.")
        }
    }
}

