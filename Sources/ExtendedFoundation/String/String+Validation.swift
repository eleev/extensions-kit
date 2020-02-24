//
//  String+Validation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension String {
    
    /// Determines if self is alphanumeric String
    ///
    /// - Returns: boolean value indicating wherher self is alphanumeric
    public var isAlphaNumeric: Bool {
        let alphaNumeric = NSCharacterSet.alphanumerics
        let output = self.unicodeScalars.split { !alphaNumeric.contains($0)}.map(String.init)
        
        if output.count == 1, output[0] != self {
            return false
        }
        return output.count == 1
    }
    
    /// Check whether the string is an email or not
    ///
    /// - Returns: boolean value indicating whether self is an email
    public var isEmail: Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", regex)
        return predicate.evaluate(with: self)
    }
    
    /// Check whether the string contains one or more letters
    ///
    /// - Returns: boolean value indicating whether self has letters
    public var hasLetters: Bool {
        return rangeOfCharacter(from: .letters, options: .literal) != nil
    }
    
    /// Check whether the string contains one or more numbers
    ///
    /// - Returns: boolean value indicating whether self has numbers
    public var hasNumbers: Bool {
        return rangeOfCharacter(from: .decimalDigits, options: .literal) != nil
    }
    
    /// Check whether the string contains only letters
    ///
    /// - Returns: boolean value indicating whether self is alphabetic
    public var isAlphabetic: Bool {
        for c in self {
            if !(c >= "a" && c <= "z") && !(c >= "A" && c <= "Z") {
                return false
            }
        }
        return true
    }

    /// Check whether the string is a valid `JSON`
    ///
    /// - Returns: boolean value indicating whether self is `JSON`
    public var isJSON: Bool {
        guard
            let jsonDataToVerify = self.data(using: String.Encoding.utf8),
            let _ = try? JSONSerialization.jsonObject(with: jsonDataToVerify) else {
                return false
        }
        return true
    }
    
    /// Check whether the string is a valid `UUID`
    ///
    /// - Returns: boolean value indicating whether self is `UUID`
    var isUUID: Bool {
        return UUID(uuidString: self) != nil
    }
}
