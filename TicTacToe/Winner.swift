//
//  Winner.swift
//  TicTacToe
//
//  Created by Beh on 2019-12-20.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit

class Winner: UIViewController {
    @IBOutlet weak var winner: UILabel!
  
    @IBAction func playagain(_ sender: Any) {
        performSegue(withIdentifier: "playagain", sender: self)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winner.text = PlayPage.winner
    }
    
}

