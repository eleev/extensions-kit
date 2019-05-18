//
//  UIColor+Brightness.swift
//  extensions_kit
//
//  Created by Astemir Eleev on 09/05/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import class UIKit.UIColor
import struct CoreGraphics.CGFloat

public extension UIColor {
    
    func increaseBrightness(_ increase: CGFloat) -> UIColor {
        var (h, s, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return UIColor(hue: h, saturation: s, brightness: max(0, min(b + increase, 1)), alpha: a)
    }
}
