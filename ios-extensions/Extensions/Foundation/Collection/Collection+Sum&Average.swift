//
//  Collection+Sum&Average.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Collection where Iterator.Element == IntegerLiteralType {
    
    public var sum: Element {
        return isEmpty ? 0 : reduce(0, +)
    }
    
    public var average: Element {
        return isEmpty ? 0 : reduce(0, +) / count
    }
    
}
