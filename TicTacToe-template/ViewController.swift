//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1 = true
    var player2 = false
    
    var board = [[0,0,0],[0,0,0],[0,0,0]]
    var counter = 0
    
    @IBOutlet weak var One1: UIButton!
    @IBOutlet weak var One2: UIButton!
    @IBOutlet weak var One3: UIButton!
    @IBOutlet weak var Second1: UIButton!
    @IBOutlet weak var Second2: UIButton!
    @IBOutlet weak var Second3: UIButton!
    @IBOutlet weak var Third1: UIButton!
    @IBOutlet weak var Third2: UIButton!
    @IBOutlet weak var Third3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
        resetAll()
    }
    
    func resetAll(){
        player1 = true
        player2 = false
        
        board = [[0,0,0],[0,0,0],[0,0,0]]
        counter = 0
        
        One1.isEnabled = true
        One1.setBackgroundImage(nil, for: .normal)
        
        One2.isEnabled = true
        One2.setBackgroundImage(nil, for: .normal)
        
        One3.isEnabled = true
        One3.setBackgroundImage(nil, for: .normal)
        
        Second1.isEnabled = true
        Second1.setBackgroundImage(nil, for: .normal)
        
        Second2.isEnabled = true
        Second2.setBackgroundImage(nil, for: .normal)
        
        Second3.isEnabled = true
        Second3.setBackgroundImage(nil, for: .normal)
        
        Third1.isEnabled = true
        Third1.setBackgroundImage(nil, for: .normal)
        
        Third2.isEnabled = true
        Third2.setBackgroundImage(nil, for: .normal)
        
        Third3.isEnabled = true
        Third3.setBackgroundImage(nil, for: .normal)
    }
    
    @IBAction func boardSquares(_ sender: UIButton) {
        switch(sender){
        case One1:
            board[0][0] = (player1) ? 1 : 2
            break;
        case One2:
            board[0][1] = (player1) ? 1 : 2
            break;
        case One3:
            board[0][2] = (player1) ? 1 : 2
            break;
        case Second1:
            board[1][0] = (player1) ? 1 : 2
            break;
        case Second2:
            board[1][1] = (player1) ? 1 : 2
            break;
        case Second3:
            board[1][2] = (player1) ? 1 : 2
            break;
        case Third1:
            board[2][0] = (player1) ? 1 : 2
            break;
        case Third2:
            board[2][1] = (player1) ? 1 : 2
            break;
        case Third3:
            board[2][2] = (player1) ? 1 : 2
            break;
        default:
            break;
        }
        
        (player1) ? sender.setBackgroundImage(UIImage(named: "cross"), for: .normal) : sender.setBackgroundImage(UIImage(named: "nought"), for: .normal)
        player1 = !player1
        player2 = !player2
        sender.isEnabled = false
        counter+=1
    }
    
    
}

