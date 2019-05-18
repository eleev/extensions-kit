//
//  Sequence+Count.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 24/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Sequence {
    
    /// Performs a logical condition and counts all true results
    ///
    /// - Parameter logicalExpression: is a closure that performs contains a logical condition
    /// - Returns: the number of true logical expressions
    public func count(_ logicalExpression: (_ element: Element) -> Bool) -> Int {
        var counter = 0
        for element in self where logicalExpression(element) { counter += 1 }
        return counter
    }
}
