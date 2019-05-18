//
//  String+Subscript.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 06/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

// MARK: - Adds conformances to CoutableClosedRnage, CountableRange, PartialRangeThrough and PartialRangeFrom protocols support in a form of subscripts
extension String {
    
    public subscript(value: CountableClosedRange<Int>) -> Substring {
        return self[index(startIndex, offsetBy: value.lowerBound)...index(startIndex, offsetBy: value.upperBound)]
    }
    
    public subscript(value: CountableRange<Int>) -> Substring {
        return self[index(startIndex, offsetBy: value.lowerBound)..<index(startIndex, offsetBy: value.upperBound)]
    }
    
    public subscript(value: PartialRangeUpTo<Int>) -> Substring {
        return self[..<index(startIndex, offsetBy: value.upperBound)]
    }
    
    public subscript(value: PartialRangeThrough<Int>) -> Substring {
        return self[...index(startIndex, offsetBy: value.upperBound)]
    }
    
    public subscript(value: PartialRangeFrom<Int>) -> Substring {
        return self[index(startIndex, offsetBy: value.lowerBound)...]
    }
}
