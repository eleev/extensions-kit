//
//  RandomAccessCollection+BinarySearch.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 25/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension RandomAccessCollection {
    
    /// Binary Search algorithm for a given value with the closure that specified the order of the elements
    public func binarySearch(for value: Iterator.Element,
                             isOrderIncreasing: (Iterator.Element, Iterator.Element) -> Bool = { _, _ in true })
        -> Index? {
            guard !isEmpty else { return nil }
            var left = startIndex
            var right = index(before: endIndex)
            
            while left <= right {
                let dist = distance(from: left, to: right)
                let mid = index(left, offsetBy: dist/2)
                let candidate = self[mid]
                
                if isOrderIncreasing(candidate, value) { left = index(after: mid)
                } else if isOrderIncreasing(value, candidate) { right = index(before: mid)
                } else {
                    // The elements are equal, do nothing
                }
            }
            // Element has not been found
            return nil
    }
    
}

extension RandomAccessCollection where Iterator.Element: Comparable {
    
    public func binarySearch(for value: Iterator.Element) -> Index? {
        return binarySearch(for: value, isOrderIncreasing: <)
    }
}
