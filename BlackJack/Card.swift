//
//  Cards.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func description() -> String {
        return String(self.rawValue)
    }
}

enum Suit: Int {
    case spade, heart, diamond, club
    
    func description() -> String {
        switch self {
        case .spade:
            return "spade"
        case .heart:
            return "heart"
        case .diamond:
            return "diamond"
        case .club:
            return "club"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func description() -> String {
        return "The \(rank.description()) of \(suit.description())"
    }
    
    func name() -> String {
        return (suit.description() +  rank.description())
    }
    
    func score() -> Int {
        switch rank.rawValue {
        case 1:
            return 11
        case 10...13:
            return 10
        default:
            return rank.rawValue
        }
    }
}



