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
    
    func resetAll(){
        player1 = true
        player2 = false
        
        board = [[0,0,0],[0,0,0],[0,0,0]]
        counter = 0
    }
    
    


}

