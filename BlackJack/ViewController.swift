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
    @IBOutlet weak var dealerHandControl: DealerHandControl!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    
    var deck: Deck?
    var player: Player?
    var dealer: Dealer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        deck = Deck()
        
        player = Player(deck!)
        dealer = Dealer(deck!)

        self.playerHandControl = PlayerHandControl()
        self.dealerHandControl = DealerHandControl()
//        self.playerHandControl.setupPlayer(player!)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func hitButtonAction(_ sender: Any) {
    }
    
    @IBAction func standButtonAction(_ sender: Any) {
    }
}

