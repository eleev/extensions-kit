//
//  Array+Contains.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    /// Checks if self contains the specified elements
    ///
    /// - Parameter elements: is a vararg for elements that conform to Equatable protocol
    /// - Returns: true in cases when the array contains, otherwise false
    public func contains(elements: Element...) -> Bool {
        
        return elements.all {
            let result = self.firstIndex(of: $0)
            // Note that the force unwrapping here is safe because we explicitly checked whether the result is nil or not
            return result == nil ? false : result! >= 0
        }
    }
}
