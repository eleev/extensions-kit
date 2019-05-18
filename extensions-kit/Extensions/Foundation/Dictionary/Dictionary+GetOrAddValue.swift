//
//  Dictionary+GetOrAddValue.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 06/06/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Dictionary {
    
    /// Checks for a value for a given key or creates a new key/value pair if none was found
    public mutating func value(for key: Key, orAdd valueClosure: @autoclosure () -> Value) -> Value {
        if let value = self[key] {
            return value
        }
        
        let value = valueClosure()
        self[key] = value
        return value
    }
}
