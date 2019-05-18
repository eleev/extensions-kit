//
//  Array+Filtering.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 05/06/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array {
    
    /// Skipps the n number of elements and returns the remainig of the array
    ///
    /// - Parameter n: number of elements to skip
    /// - Returns: new array with changed number of elements
    public func skip(_ n: Int) -> Array {
        let result: [Element] = []
        return n > count ? result : Array(self[Int(n)..<count])
    }
    
    /// Checks if all elements satisfy a given condition
    ///
    /// - Parameter condition: a closure with one input element and bool as a return value
    /// - Returns: a bool value taht indicates whether the condition was satisfied for all elements
    public func all(condition: (Element) -> Bool) -> Bool {
        return filter(condition).count == count
    }
    
    /// Checks if any element in the given array satisfies a given condition
    ///
    /// - Parameter condition: a closure with one input element and bool as a return value
    /// - Returns: a bool value that indicates whether the condition was satisfied at least once
    public func any(condition: (Element) -> Bool) -> Bool {
        return filter(condition).count > 0
    }
}
