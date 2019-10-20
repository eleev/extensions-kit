//
//  Array+Remove.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// The extension adds support for convenience 'remove' methods for single elements, varargs and arrays of elements
extension Array where Element: Equatable {
  
    /// Removes an Element by mutating the array
    @discardableResult
    public mutating func remove(object: Element) -> Element? {
        return firstIndex(of: object).map { self.remove(at: $0) }
    }
  
    /// Removes a number of Elements by mutating the origianl array
    public mutating func remove(objects: Element...) {
        remove(objects: objects)
    }
    
    /// Removes an array of Elements by mutating the origial array
    public mutating func remove(objects: [Element]) {
        objects.forEach {
            self.remove(object: $0)
        }
    }
}
