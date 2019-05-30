//
//  ViewController.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerHandControl: PlayerHandControl!
    
    var deck: Deck?
    var player: Player?
    var dealer: Dealer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        deck = Deck()
        
        player = Player(deck!)
        dealer = Dealer(deck!)
        
        if let player = player {
            setupPlayer(player.hand)
        }
    }

    private func setupPlayer(_ cards: [Card]) {
        
        }
}

