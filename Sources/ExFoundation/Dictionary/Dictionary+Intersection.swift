//
//  Dictionary+Intersection.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Dictionary where Key: Equatable, Value: Equatable {
    
    /// Computes intersection of self and the input Dictionaries
    ///
    /// - Parameter dictionaries: vararg of dictionaries to intersect
    /// - Returns: a dictionary that contains unique keys and values in all the input dictionaries and self
    public func intersection(dictionaries: [Key: Value]...) -> [Key: Value] {
        let filtered = map { (item, value) -> (Key, Value)? in
            return (item, value)
        }
        
        return filtered.filter { (key: Key, value: Value) -> Bool in
            dictionaries.all { $0.has(key: key) && $0[key] == value }
        }
    }
}
