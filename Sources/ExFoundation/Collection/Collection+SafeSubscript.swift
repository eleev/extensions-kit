//
//  Collection+SafeSubscript.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 18/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Collection {
    
    /// Safely checks whether the collection is able to retreive an element for the given Index, otherwise it will return nil
    public subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
