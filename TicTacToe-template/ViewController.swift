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
    var counter = 1
    
    @IBOutlet weak var boardImg: UIImageView!
    @IBOutlet weak var lblResult: UILabel!
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
        if(counter % 2 == 1){
            lblResult.text = "Player 1"
        }else{
            lblResult.text = "Player 2"
        }
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
        resetAll()
    }
    
    func resetAll(){
        player1 = true
        player2 = false
        
        board = [[0,0,0],[0,0,0],[0,0,0]]
        counter = 1
        
        if(counter % 2 == 1){
            lblResult.text = "Player 1"
        }else{
            lblResult.text = "Player 2"
        }
        
        boardImg.image = UIImage(named: "board")
        
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
        if(counter % 2 == 1){
            lblResult.text = "Player 1"
        }else{
            lblResult.text = "Player 2"
        }
        
        if(checkResult()){
            disableAllButtons()
        }else if(counter > 9){
            lblResult.text = "Draw"
        }
    }
    
    func disableAllButtons(){
        One1.isEnabled = false
        One2.isEnabled = false
        One3.isEnabled = false
        
        Second1.isEnabled = false
        Second2.isEnabled = false
        Second3.isEnabled = false
        
        Third1.isEnabled = false
        Third2.isEnabled = false
        Third3.isEnabled = false
    }
    
    func checkResult() -> Bool{
        if(board[0][0] == board[0][1] && board[0][1] == board[0][2] && board[0][0] != 0){
            //print("1");
            lblResult.text = (board[0][0] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board1")
            return true
        }
        else if(board[1][0] == board[1][1] && board[1][1] == board[1][2] && board[1][0] != 0){
            //print("2");
            lblResult.text = (board[1][0] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board2")
            return true
        }
        else if(board[2][0] == board[2][1] && board[2][1] == board[2][2] && board[2][0] != 0){
            //print("3");
            lblResult.text = (board[2][0] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board3")
            return true
        }
        else if(board[0][0] == board[1][0] && board[1][0] == board[2][0] && board[0][0] != 0){
            //print("4");
            lblResult.text = (board[0][0] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board4")
            return true
        }
        else if(board[0][1] == board[1][1] && board[1][1] == board[2][1] && board[0][1] != 0){
            //print("5");
            lblResult.text = (board[0][1] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board5")
            return true
        }
        else if(board[0][2] == board[1][2] && board[1][2] == board[2][2] && board[0][2] != 0){
            //print("6");
            lblResult.text = (board[0][2] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board6")
            return true
        }
        else if(board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0){
            //print("7");
            lblResult.text = (board[0][0] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board7")
            return true
        }
        else if(board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != 0){
            //print("8");
            lblResult.text = (board[0][2] == 1) ? "Player 1 Won" : "Player 2 Won"
            boardImg.image = UIImage(named: "board8")
            return true
        }
        return false
    }
    
}

