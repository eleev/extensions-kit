//
//  Sequence+DuplicatesRemoved.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 12/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Sequence where Element: Equatable {
    
    /// Removes the duplicate elements and returns the new Sequence without duplicates if any
    /// The complexity is O(log(n))
    public func removeDuplicates() -> [Element] {
        return reduce([], { $0.contains($1) ? $0 : $0 + [$1] })
    }
}
