//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardLable: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    var gameOver = false

    @IBAction func cardButton(_ sender: UIButton) {
    }
    
    var randomVariable = Int.random(in: 0...2)

}
