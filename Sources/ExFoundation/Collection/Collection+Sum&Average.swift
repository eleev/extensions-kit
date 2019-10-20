//
//  Collection+Sum&Average.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Collection where Iterator.Element == IntegerLiteralType {
    
    public var sum: Element {
        return isEmpty ? 0 : reduce(0, +)
    }
    
    public var average: Element {
        return isEmpty ? 0 : reduce(0, +) / count
    }
    
}
