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
    private var holdingCards = [UIImageView]()
    
    
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
        
        for card in holdingCards {
            removeArrangedSubview(card)
            card.removeFromSuperview()
        }
        holdingCards.removeAll()
        
        print("setup")
        
        for _ in 1...2 {
            let bundle = Bundle(for: type(of: self))
            let cardImage = UIImage(named: "BackSide", in: bundle, compatibleWith: self.traitCollection)
            if let cardImage = cardImage {
                let cardView = UIImageView(image: cardImage)
                cardView.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
                cardView.widthAnchor.constraint(equalToConstant: 65.0).isActive = true
                self.addArrangedSubview(cardView)
                self.holdingCards.append(cardView)
            } else {
                fatalError("Resource not found.")
            }
        }
    }
}
