//
//  ViewController.swift
//  BlackJack
//
//  Created by gma712 on 2019/05/29.
//  Copyright © 2019 gma712. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var playerHandControl: PlayerHandControl!
    @IBOutlet var dealerHandControl: DealerHandControl!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    @IBOutlet weak var resultMessage: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
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
            self.playerHandControl.firstSet(player)
        } else {
            fatalError("omg")
        }
        
        if let dealer = dealer {
            self.dealerHandControl.firstSet(dealer)
        } else {
            fatalError("omg")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func hitButtonAction(_ sender: Any) {
        if let player = player {
            let card = player.hit(deck!)
            print("Hit!")
            playerHandControl.addHand(card)
        } else {
            fatalError()
        }
    }
    
    @IBAction func standButtonAction(_ sender: Any) {
        if let player = player {
            player.stand()
        }
        if let dealer = dealer {
            dealerHandControl.startAction(dealer, deck: deck!)
        }
        judge()
    }
    
    private func judge() {
        let playerScore = self.player?.score
        let dealerScore = self.dealer?.score
        
        if playerScore! > dealerScore! {
            resultMessage.text = "You Win!!"
        } else if playerScore! < dealerScore! {
            resultMessage.text = "You lose."
        } else {
            resultMessage.text = "Draw!"
        }
        
    }
    
}

