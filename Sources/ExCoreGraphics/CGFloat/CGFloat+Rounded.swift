//
//  CGFloat+Rounded.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGFloat {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places: Int) -> CGFloat {
        let divisor = CGFloat(pow(10.0, CGFloat(places)))
        return (self * divisor).rounded() / divisor
    }
}
