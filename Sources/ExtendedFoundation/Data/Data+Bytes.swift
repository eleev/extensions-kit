//
//  Data+Bytes.swift
//  ExtendedFoundation
//
//  Created by Astemir Eleev on 23/02/2020.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Data {
    var bytes: [UInt8] {
        return [UInt8](self)
    }
}
