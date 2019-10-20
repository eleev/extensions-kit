//
//  UIColor+Blend.swift
//  extensions_kit
//
//  Created by Astemir Eleev on 09/05/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import class UIKit.UIColor
import struct CoreGraphics.CGFloat

public extension UIColor {
    
    func blend(with color: UIColor, intensity: CGFloat) -> UIColor {
        let l1 = intensity
        let l2 = 1 - intensity
        guard l1 > 0 else { return color}
        guard l2 > 0 else { return self}
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        
        getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
        
        return UIColor(red: l1 * r1 + l2 * r2, green: l1 * g1 + l2 * g2, blue: l1 * b1 + l2 * b2, alpha: l1 * a1 + l2 * a2)
    }
}
