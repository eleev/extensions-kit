//
//  Array+RadixSort.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    
    // Radix sort relies on the positional notation of integers and sorts an integer array for linear time.
    public mutating func radixSorted(of base: Int = 10) {
        var isDone = false
        var digits = 1
        
        while !isDone {
            isDone = true
            var buckets: [[Int]] = .init(repeating: [], count: base)
            
            forEach { number in
                let remainig = number / digits
                let digit = remainig % base
                buckets[digit].append(number)
                
                if remainig > 0 {
                    isDone = false
                }
            }
            digits *= base
            self = buckets.flatMap { $0 }
        }
    }
}
