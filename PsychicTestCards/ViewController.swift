//
//  ViewController.swift
//  PsychicTestCards
//
//  Created by Joseph Leon on 7/6/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Card 1 is circle.
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    
    var symbols = [String]()
    var score = 0
    
    override func viewDidLoad() {
        
        symbols += ["circle", "plus", "wave", "square", "star"]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playCards()
    }
    
    func playCards() {
        
        var counterStartZero = 0
        var cards = [card1, card2, card3, card4, card5]
        for card in cards {
            card.setImage(UIImage(named: symbols[counterStartZero]), forState: .Normal)
            card.layer.borderWidth = 1
            card.layer.borderColor = UIColor.lightGrayColor().CGColor
            counterStartZero++
 
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

