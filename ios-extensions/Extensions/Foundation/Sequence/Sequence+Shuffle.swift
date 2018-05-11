//
//  Sequence+Shuffle.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Sequence {
    
    /// Shuffls the elements of self
    ///
    /// - Returns: an array of shuffled Elements
    public func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
