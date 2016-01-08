//
//  ViewController.swift
//  FunFacts
//
//  Created by Apurv Gupta on 27/11/15.
//  Copyright (c) 2015 Apurv Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var funFactLabel: UILabel!
    @IBOutlet var funFactButton: UIButton!
   //  let factsArray = ["Abc", "DEF"]
    let  factBook = FactBook()
    let colorWheel = ColorWheel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        //println("You pressed me!")
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

