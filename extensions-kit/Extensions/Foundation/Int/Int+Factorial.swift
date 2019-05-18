//
//  Int+Factorial.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Int {
    
    /// Computes factorial of self
    ///
    /// - Returns: factorial
    public func factorial () -> Int {
        return self == 0 ? 1 : self * (self - 1).factorial()
    }
}
