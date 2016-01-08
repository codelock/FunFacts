//
//  FactBook.swift
//  FunFacts
//
//  Created by Apurv Gupta on 28/11/15.
//  Copyright (c) 2015 Apurv Gupta. All rights reserved.
//

import Foundation

struct FactBook {
    
    let factsArray = ["khkhj", "gfgfiuyiyo", "midas"]
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        
        return factsArray[randomNumber]
    }
}