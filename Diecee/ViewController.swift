//
//  ViewController.swift
//  Diecee
//
//  Created by SIRCLTECH on 23/12/18.
//  Copyright © 2018 SIRCLTECH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    var randomDiceIndex1: Int=0
    var randomDiceIndex2: Int=0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollBtnPress(_ sender: UIButton) {
        updateDiceImage();
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        let a = arc4random_uniform(6)
        let b = arc4random_uniform(6)
        randomDiceIndex1 = Int(a)
        randomDiceIndex2 = Int(b)
        
        diceImageView1.image=UIImage(named:diceArray[randomDiceIndex1])
        diceImageView2.image=UIImage(named:diceArray[randomDiceIndex2])
        
    }
    
}

