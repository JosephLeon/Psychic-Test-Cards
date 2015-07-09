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
        
        symbols += ["circle", "plus", "squiggle", "square", "star"]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playCards()
    }
    
    func playCards() {
        
        card1.setImage(UIImage(named: symbols[0]), forState: .Normal)
        card1.layer.borderWidth = 1
        card1.layer.borderColor = UIColor.lightGrayColor().CGColor
        card2.setImage(UIImage(named: symbols[1]), forState: .Normal)
        card2.layer.borderWidth = 1
        card2.layer.borderColor = UIColor.lightGrayColor().CGColor
        card3.setImage(UIImage(named: symbols[2]), forState: .Normal)
        card3.layer.borderWidth = 1
        card3.layer.borderColor = UIColor.lightGrayColor().CGColor
        card4.setImage(UIImage(named: symbols[3]), forState: .Normal)
        card4.layer.borderWidth = 1
        card4.layer.borderColor = UIColor.lightGrayColor().CGColor
        card5.setImage(UIImage(named: symbols[4]), forState: .Normal)
        card5.layer.borderWidth = 1
        card5.layer.borderColor = UIColor.lightGrayColor().CGColor




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

