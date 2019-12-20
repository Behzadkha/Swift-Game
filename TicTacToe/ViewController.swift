//
//  ViewController.swift
//  TicTacToe First page
//  Gets players' names
//  Created by Beh on 2019-12-20.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    public static var firstplayer = "p1"
    public static var secondplayer = "p2"
    @IBOutlet weak var PlayerOne: UITextField!//player one name
    @IBOutlet weak var PlayerTwo: UITextField!//player two name
    @IBAction func PlayButton(_ sender: Any) {//if play button is clicked
        if (PlayerOne.text == "" || PlayerTwo.text == "") {//if either of the text boxes are blank, show an alert
            let alert = UIAlertController(title: "OOPS", message: "Player name cannot be blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: {(ACTION) in print("cancel")
            }))
            self.present(alert, animated: true)
        }
        else{//otherwise go to the next page
            ViewController.firstplayer = PlayerOne.text ?? "ann"
            ViewController.secondplayer = PlayerTwo.text ?? "ann"
            performSegue(withIdentifier: "playy"
                , sender: self)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

