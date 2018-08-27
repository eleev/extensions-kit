//
//  MutableCollection+Shuffle.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension MutableCollection {
    
    /// In-place shuffling of self
    public mutating func shuffle() {
        if count < 2 { return }
        
        for i in indices.dropLast() {
            let dist = distance(from: i, to: endIndex)
            let j = index(i, offsetBy: numericCast(arc4random_uniform(numericCast(dist))))
            swapAt(i, j)
        }
    }
}
