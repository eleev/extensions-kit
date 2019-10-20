//
//  Int+Random.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Int {
    
    // MARK: - Methods
    
    static func random(in range: ClosedRange<Int>) -> Int {
        var offset = 0
        
        if range.lowerBound < 0 {
            offset = abs(range.lowerBound)
        }
        
        let mini = UInt32(range.lowerBound + offset)
        let maxi = UInt32(range.upperBound + offset)
        
        return Int(mini + arc4random_uniform(maxi - mini)) - offset
    }
    
    static func random(min: Int = 0, max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
}
