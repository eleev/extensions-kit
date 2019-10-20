//
//  Float+Rounded.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension Float {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Float {
        let divisor = Float(pow(10.0, Float(places)))
        return (self * divisor).rounded() / divisor
    }
}
