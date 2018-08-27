//
//  Int+Power.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence

func ^^(radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}


