//
//  Range+Random.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension ClosedRange {
    
    // MARK: - Properties
    
    public var randomInt: Int {
        get {
            var offset = 0
            
            if (lowerBound as! Int) < 0 {
                offset = abs(lowerBound as! Int)
            }
            
            let mini = UInt32(lowerBound as! Int + offset)
            let maxi = UInt32(upperBound as! Int + offset)
            
            return Int(mini + arc4random_uniform(maxi - mini)) - offset
        }
    }
    
}
