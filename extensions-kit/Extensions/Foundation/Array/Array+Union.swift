//
//  Array+Union.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    /// Unions self and the input arrays
    ///
    /// - Parameter values: is a vararg for Arrays
    /// - Returns: a new Array containing merged elements
    public func union(values: [Element]...) -> Array {
        var result = self
        
        for array in values {
            for value in array where !result.contains(value) {
                result.append(value)
            }
        }
        
        return result
    }
}
