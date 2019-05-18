//
//  OptionSet+Operations.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

// MARK: - Extension that adds missing operations
extension OptionSet where Element == Self {
    
    /// Duplicates the set, inserts the new element and returns Self
    public func inserting(new element: Self) -> Self {
        var opts = self
        opts.insert(element)
        return opts
    }
    
    /// Duplicates the set, removes the element and returns Self
    public func removing(_ element: Self) -> Self {
        var opts = self
        opts.remove(element)
        return opts
    }
}
