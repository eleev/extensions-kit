//
//  Sequence+Shuffle.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Sequence {
    
    /// Shuffls the elements of self
    ///
    /// - Returns: an array of shuffled Elements
    public func randomlyShuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
