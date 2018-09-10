//
//  UIView+Corners.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 10/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

public extension UIView {
    
    /// Rounds corners of the UIView with the specified corner radius
    public func roundCorners(with radius: CGFloat = 10.0) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    /// Returns current corner radius
    public func getCornerRadius() -> CGFloat {
        return layer.cornerRadius
    }
    
}
