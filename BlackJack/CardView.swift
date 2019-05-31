//
//  CardView.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/31.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class CardView: UIImageView {
    
    override init(image: UIImage?) {
        super.init(image: image)
        
        // Diffine imageview's constraint.
        self.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
        self.widthAnchor.constraint(equalToConstant: 65.0).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
