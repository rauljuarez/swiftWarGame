//
//  ViewController.swift
//  War
//
//  Created by Raul Juarez on 22/11/15.
//  Copyright © 2015 Raul Juarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var scorePlayerLabel: UILabel!
    @IBOutlet weak var scoreEnemyLabel: UILabel!
    
    var cardsNamesArray : [String] = [
                                        "card2",
                                        "card3",
                                        "card4",
                                        "card5",
                                        "card6",
                                        "card7",
                                        "card8",
                                        "card9",
                                        "card10",
                                        "card11",
                                        "card12",
                                        "card13",
                                        "card1",
                                    ]
    
    var playerScore : Int = 0
    var enemyScore : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playRoundTapped(sender: UIButton) {
        
        let firstRandomNumber : Int = Int(arc4random_uniform(13))
        let secondRandomNumber : Int = Int(arc4random_uniform(13))
        
        let firstCardString : String = self.cardsNamesArray[firstRandomNumber]
        let secondCardString : String = self.cardsNamesArray[secondRandomNumber]
        
        self.firstCardImageView.image = UIImage(
                                        named: String(
                                                format: firstCardString
                                                )
                                        )
        
        
        self.secondCardImageView.image = UIImage(
                                        named: String(
                                                format: secondCardString
                                                )
                                        )
        
        if firstRandomNumber > secondRandomNumber {
            self.playerScore++
            self.scorePlayerLabel.text = String(self.playerScore)
            
        } else if firstRandomNumber == secondRandomNumber{
        
        } else {
            self.enemyScore++
            self.scoreEnemyLabel.text = String(self.enemyScore)

        }
        
    }
}

    