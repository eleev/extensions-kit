//
//  Int+Clamp.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Int {
    
    public func clamp(min: Int, _ max: Int) -> Int {
        return Swift.max(min, Swift.min(max, self))
    }

    public func clamp(in range: ClosedRange<Int>) -> Int {
        return clamp(min: range.lowerBound, range.upperBound)
    }
    
}
