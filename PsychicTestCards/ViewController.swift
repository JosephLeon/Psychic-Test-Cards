//
//  ViewController.swift
//  PsychicTestCards
//
//  Created by Joseph Leon on 7/6/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    
    var symbols = [String]()
    var score = 0
    var correctCard = 0
    var timesPlayed = 0
    var resultsData = 0
    
    override func viewDidLoad() {
        
        symbols += ["circle", "plus", "wave", "square", "star"]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var counterStartZero = 0
        var cards = [card1, card2, card3, card4, card5]
        for card in cards {
            card.setImage(UIImage(named: symbols[counterStartZero]), forState: .Normal)
            card.layer.borderWidth = 1
            card.layer.borderColor = UIColor.lightGrayColor().CGColor
            counterStartZero++
        }

    }
    
    func playCards(action: UIAlertAction! = nil) {
        
        correctCard = Int(arc4random_uniform(5))

    }
    
    
    @IBAction func buttonTapped(sender: UIButton) {
        
        if sender.tag == correctCard {
            ++score
        }
        
        ++timesPlayed
        

        if (timesPlayed > 4) {
            resultsData = (score / timesPlayed) * 100
            resultsLabel.text = "\(score) \(timesPlayed) \(resultsData)%"
        }
        
        self.scoreLabel.text = "\(score) out of \(timesPlayed)"
        
        playCards()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

