//
//  UIColor+ColorComponents.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 06/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

// MARK: - The extension adds support for missing color components properties for various use cases
extension UIColor {
    
    // MARK: - Properties
    
    public var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (red, green, blue, alpha)
        
    }
    
    public var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        var hue: CGFloat = 0.0
        var saturation: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return (hue, saturation, brightness, alpha)
    }
    
    public var grayscale: (white: CGFloat, alpha: CGFloat) {
        var (white, alpha) = (CGFloat(0.0), CGFloat(0.0))
        
        getWhite(&white, alpha: &alpha)
        return (white, alpha)
    }
}
