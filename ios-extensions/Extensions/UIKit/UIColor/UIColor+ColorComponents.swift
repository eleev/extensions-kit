//
//  UIColor+ColorComponents.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 06/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

// MARK: - The extension adds support for missing color components properties for various use cases
public extension UIColor {
    
    // MARK: - Properties
    
    public var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        if getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return (red, green, blue, alpha)
        }
        
        return nil
    }
    
    public var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)? {
        var hue: CGFloat = 0.0
        var saturation: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return (hue, saturation, brightness, alpha)
        }
        
        return nil
    }
    
    public var grayscale: (white: CGFloat, alpha: CGFloat)? {
        var (white, alpha) = (CGFloat(0.0), CGFloat(0.0))
        
        if getWhite(&white, alpha: &alpha) {
            return (white, alpha)
        }
        
        return nil
    }
}
