//
//  Int+DecimalToBinary.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Int {
    
    /// Converts a decimal number to a binary number using the conventional algorithm.
    ///
    /// - Returns: a binary representation of 'self'
    public func decimalToBinary() -> Int {
        var decimal = 0, binary = 0, c = -1
        var selfCopy = self
        
        while selfCopy != 0 {
            decimal = selfCopy % 2
            c += 1
            binary += decimal * Int(truncating: pow(10, c) as NSDecimalNumber)
            selfCopy /= 2
        }
        return binary
    }
    
    /// Converts a binary number to a decimal number using the conventional algorithm.
    ///
    /// - Returns: a decimal representation of `self`
    public func binaryToDecimal() -> Int {
        var k = self, d = 0, s = 0, c = -1

        while k != 0 {
            d = k % 10
            c += 1
            s += d * Int(truncating: pow(2, c) as NSDecimalNumber)
            k /= 10
        }
        return s
    }
}


