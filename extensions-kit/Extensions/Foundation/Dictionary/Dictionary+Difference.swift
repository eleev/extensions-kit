//
//  Dictionary+Difference.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Dictionary where Value: Equatable {
    
    /// Computes differences between self and the input dictionaries
    ///
    /// - Parameter dictionaries: is a vararg of dictionaries
    /// - Returns: dictionary that contains differences
    func difference(dictionaries: [Key: Value]...) -> [Key: Value] {
        var result = [Key: Value]()
        
        each { result[$0] = $1 }
        
        for dictionary in dictionaries {
            for (key, value) in dictionary where result.has(key: key) && result[key] == value {
                result.removeValue(forKey: key)
            }
        }
        
        return result
    }
}
