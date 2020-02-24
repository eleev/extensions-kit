//
//  Data+Matches.swift
//  ExtendedFoundation
//
//  Created by Astemir Eleev on 23/02/2020.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Data {
    
    func matches(bytes: [UInt8], range: CountableClosedRange<Int>? = nil) -> Bool {
        return Array(self.bytes[range ?? 0...(bytes.count - 1)]) == bytes
    }
}
