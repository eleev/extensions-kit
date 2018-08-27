//
//  Bool+Int.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Bool {
    
    public var int: Int {
        return self ? 1 : 0
    }
}
