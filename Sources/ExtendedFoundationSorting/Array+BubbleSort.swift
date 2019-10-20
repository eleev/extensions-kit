//
//  Array+BubbleSort.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public mutating func bubbleSorted(order sign: (Element, Element) -> Bool) {
        let count = self.count
        
        for _ in 0...count {
            for value in 1...count - 1 {
                if sign(self[value - 1], self[value]) {
                    // An alternative to the manual `swap`
                    // self.swapAt(value - 1, value)
                    let largerValue = self[value - 1]
                    self[value - 1] = self[value]
                    self[value] = largerValue
                }
            }
        }
    }
    
}
