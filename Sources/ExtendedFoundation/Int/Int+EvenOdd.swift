//
//  Int+EvenOdd.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Int {
    
    /// Checks if a number is even
    ///
    /// - Returns: true if self is even
    public func isEven () -> Bool {
        return (self % 2) == 0
    }
    
    /// Checks if a number is odd
    ///
    /// - Returns: true if self is odd
    public func isOdd () -> Bool {
        return !isEven()
    }
}
