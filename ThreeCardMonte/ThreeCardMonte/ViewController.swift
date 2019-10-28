//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var cardLable: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func NewGameButton(_ sender: Any) {
        card0.setImage(UIImage(named:"cardBackRed"), for: .normal)
        card1.setImage(UIImage(named:"cardBackRed"), for: .normal)
        card2.setImage(UIImage(named:"cardBackRed"), for: .normal)
        
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
    }

    @IBAction func cardButton(_ sender: UIButton) {
     let randomVariable = Int.random(in: 0...2)
    print(randomVariable)
        if sender.tag == randomVariable {
            sender.setImage(UIImage(named:"kingCard"), for: .normal)
            cardLable.text = "You win"
        } else if sender.tag != randomVariable {
            sender.setImage(UIImage(named:"threeCard"), for: .normal)
            cardLable.text = "You lose"
            if card0.tag == randomVariable {
                card0.setImage(UIImage(named:"kingCard"), for: .normal)
            } else if card1.tag == randomVariable {
            card1.setImage(UIImage(named:"kingCard"), for: .normal)
            } else if card2.tag == randomVariable {
                card2.setImage(UIImage(named:"kingCard"), for: .normal)
            }
        }
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
        
    }
}

