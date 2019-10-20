//
//  Array+InsertionSort.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    /// Sorts self in place with the given order (<, >) using the Insertion Sort algorithm
    public mutating func insertionSorted(order: (Element, Element) -> Bool) {
        
        if self.count <= 1 { return }
        
        for i in 1..<self.count {
            let temp = self[i]
            var j = i
            
            while j > 0 && order(self[j - 1], temp) {
                self[j] = self[j - 1]
                j -= 1
            }
            self[j] = temp
        }
    }
    
}
