//
//  Double+Rounded.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    public func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
