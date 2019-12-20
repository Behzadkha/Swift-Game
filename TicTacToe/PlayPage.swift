//
//  PlayPage.swift
//  TicTacToe
//
//  Created by Beh on 2019-12-20.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit


class PlayPage: UIViewController {
    var activePlayer = 0;//changes between 0 and 1 to see whether it has to be a circle or a cross.
    var box:[Int] = [0,0,0,0,0,0,0,0,0];//to check if we have a winner
    
    public static var winner = "winner"
    @IBOutlet weak var p1label: UILabel!
    @IBOutlet weak var p2label: UILabel!
    
    // ALL BUTTONS
    //zero = cross and one = circle
    @IBAction func Button1(_ sender: Any) {
        if(activePlayer == 0 && box[0] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[0] = 1
            activePlayer = 1//next time will be a circle
        }
        else if (activePlayer == 1 && box[0] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[0] = 2
            activePlayer = 0
        }
        checkWinner()
        
    }
    @IBAction func Button2(_ sender: Any) {
        if(activePlayer == 0 && box[1] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[1] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[1] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[1] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button3(_ sender: Any) {
        if(activePlayer == 0 && box[2] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[2] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[2] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[2] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button4(_ sender: Any) {
        if(activePlayer == 0 && box[3] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[3] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[3] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[3] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button5(_ sender: Any) {
        if(activePlayer == 0 && box[4] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[4] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[4] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[4] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button6(_ sender: Any) {
        if(activePlayer == 0 && box[5] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[5] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[5] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[5] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button7(_ sender: Any) {
        if(activePlayer == 0 && box[6] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[6] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[6] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[6] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button8(_ sender: Any) {
        if(activePlayer == 0 && box[7] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[7] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[7] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[7] = 2
            activePlayer = 0
        }
        checkWinner()
    }
    @IBAction func Button9(_ sender: Any) {
        if(activePlayer == 0 && box[8] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "cross.png"), for: UIControl.State.normal)
            box[8] = 1
            activePlayer = 1
        }
        else if (activePlayer == 1 && box[8] == 0){
            (sender as AnyObject).setBackgroundImage(UIImage(named: "circle.png"), for: UIControl.State.normal)
            box[8] = 2
            activePlayer = 0
        }
        checkWinner()
        
    }
    
    func checkWinner(){//check if any three boxes are equal
        rules(first: box[0],second: box[1],third: box[2])
        rules(first: box[0], second: box[4], third: box[8])
        rules(first: box[0], second: box[3], third: box[6])
        rules(first: box[1], second: box[4], third: box[7])
        rules(first: box[2], second: box[4], third: box[6])
        rules(first: box[3], second: box[4], third: box[5])
        rules(first: box[6], second: box[7], third: box[8])
    }
    func rules(first:Int, second:Int, third:Int){//rule: three boxes should be the same
        if(first == second && first == third && first != 0){
            if (first == 1){
                PlayPage.winner = ViewController.firstplayer
            }
            else{
                PlayPage.winner = ViewController.secondplayer
            }
            performSegue(withIdentifier: "winnerpage", sender: self)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        p1label.text = "Player1: " + ViewController.firstplayer
        p2label.text = "Player2: " + ViewController.secondplayer
        
    }
    
    
}
