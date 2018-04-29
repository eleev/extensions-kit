//
//  Int+Digits.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 29/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Int {
    
    // MARK: - Properties
    
    public var digitCount: Int {
        get {
            return counter(for: self)
        }
    }
    
    // MARK: - Methods
    
    private func counter(for number: Int) -> Int {
        if abs(number) < 10 {
            return 1
        } else {
            return 1 + counter(for: number / 10)
        }
    }
}
