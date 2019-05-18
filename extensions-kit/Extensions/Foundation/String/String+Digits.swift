//
//  String+Digits.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 02/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension String {
    
    /// Combines decimal digits into a single String property
    public var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
}
