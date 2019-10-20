//
//  Array+Intersection.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    /// Computes intersection of self and the input values
    ///
    /// - Parameter values: vararg of arrays to intersect
    /// - Returns: an array that contains unique elements in all the input elements and self
    public func intersection(values: [Element]...) -> Array {
        var result = self
        var intersection = Array()
        
        for (index, value) in values.enumerated() {
            // By intersecting n and n + 1 we compute the intersection
            if (index > 0) {
                result = intersection
                intersection = Array()
            }
            
            // Searches for the common elements and saves them in the intersection Array, in order to intersect in the next iteration
            for elementValue in value where result.contains(elementValue) {
                intersection.append(elementValue)
            }
        }
        
        return intersection
    }
}
