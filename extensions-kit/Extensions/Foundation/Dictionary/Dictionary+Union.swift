//
//  Dictionary+Union.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Dictionary {
    
    /// Unions self and the input dictionaries
    ///
    /// - Parameter dictionaries: is a vararg for Dictionaries
    /// - Returns: a new Dictionary containing merged keys and values
    public func union(dictionaries: Dictionary...) -> Dictionary {
        var result = self
        
        dictionaries.forEach { (dictionary) in
            dictionary.forEach { (key, value) in
                _ = result.updateValue(value, forKey: key)
            }
        }
        
        return result
    }
    
}
