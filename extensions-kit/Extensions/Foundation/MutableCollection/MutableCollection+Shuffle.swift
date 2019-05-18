//
//  MutableCollection+Shuffle.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension MutableCollection where Self: RandomAccessCollection {
    
    /// In-place shuffling of self
    public mutating func shuffle() {
        var i = startIndex
        let beforeEndIndex = index(before: endIndex)
        
        while i < beforeEndIndex {
            let dist = distance(from: i, to: endIndex)
            let j = index(i, offsetBy: numericCast(arc4random_uniform(numericCast(dist))))
            
            guard i != j else { continue }
            swapAt(i, j)
            formIndex(after: &i)
        }
    }
}
