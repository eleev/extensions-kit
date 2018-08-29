//
//  String+Validation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension String {
    
    /// Determines if self is alphanumeric String
    ///
    /// - Returns: boolean value indicating wherher self is alphanumeric
    func isAlphaNumeric() -> Bool {
        let alphaNumeric = NSCharacterSet.alphanumerics
        let output = self.unicodeScalars.split { !alphaNumeric.contains($0)}.map(String.init)
        
        if output.count == 1, output[0] != self {
            return false
        }
        return output.count == 1
    }
}
