//
//  Nihar_ViewController.swift
//  Nihar_Patel_Blue_TicTacToe
//
//  Created by Nihar Patel on 2019-10-09.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import UIKit

class Nihar_ViewController: UIViewController {
    
    var theGameModel = Nihar_GameModel()
    var gameFinished = false
    
    var replayingPastGame = false
    var pastGameData : GameData?

    @IBOutlet weak var gameStateLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStateLabel.text = theGameModel.whoseTurn + "'s Turn"
        
        if (replayingPastGame){
            theGameModel.isPastGame = true
            navigationItem.title = "Past Game"
            
            let pastGameMoves = (pastGameData?.orderOfMoves)!
            
            var delay : Double = Double(0)
            
            for i in pastGameMoves {
                delay = delay + 1.0
                DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay, execute: {
                    let button = self.view.viewWithTag(i)
                    self.squareTouched(button as! UIButton)
                })
             
            }
        } else {
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func squareTouched(_ sender: UIButton) {
        
        print("Button Touched")
        print(sender.tag)
        if (sender.currentTitle == "X" || sender.currentTitle == "O" || gameFinished ){
        } else{
        sender.setTitle(theGameModel.whoseTurn, for: .normal);
            theGameModel.playMove(tag: sender.tag)
            
            
             gameFinished = theGameModel.isGameFinished()
            if (gameFinished) {
                let whoWon = theGameModel.whoWon
                if(whoWon == ""){
                    gameStateLabel.text = "Draw"
                }else {
                gameStateLabel.text = whoWon + " Won!"
                }
            } else {
               gameStateLabel.text = theGameModel.whoseTurn + "'s Turn"
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
