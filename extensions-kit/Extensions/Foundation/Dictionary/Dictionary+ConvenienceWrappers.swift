//
//  Dictionary+ConvenienceWrappers.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Dictionary {
    
    public func has(key: Key) -> Bool {
        return self[key] != nil
    }
    
    public func each (each: (Key, Value) -> ()) {
        for (key, value) in self {
            each(key, value)
        }
    }
}
