//
//  String+IndexOf.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension String {
    
    /// Finds the first occurence for a given String
    public func index(of input: String,
               options: String.CompareOptions = .literal) -> String.Index? {
        return range(of: input, options: options)?.lowerBound
    }

    /// Finds the last occurence for a given String
    public func lastIndex(of input: String) -> String.Index? {
        return self.index(of: input, options: .backwards)
    }
}
