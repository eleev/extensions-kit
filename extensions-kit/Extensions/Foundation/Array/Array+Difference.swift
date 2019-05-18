//
//  Array+Difference.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    /// Computes differences between self and the input arrays
    ///
    /// - Parameter elements: is a vararg of arrays
    /// - Returns: array that contains difference
    public func difference(elements: [Element]...) -> [Element] {
        var result = [Element]()
        
        link: for item in self {
            for element in elements where element.contains(item) {
                continue link
            }
            result.append(item)
        }
        
        return result
    }
    
}
