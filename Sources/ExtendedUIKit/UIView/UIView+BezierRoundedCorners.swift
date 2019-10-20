//
//  UIView+BezierRoundedCorners.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

@available(iOS, deprecated: 11.0)
extension UIView {
    
    /// Rounds the corners of self by masking the CALayer with a CAShapeLayer using UIBezierPath
    ///
    /// - Parameters:
    ///     - corners: is an array of UIRectCorner types e.g. [.topLeft, .topRight]
    ///     - radius: is a CGFloat value that describes the radius of the corders
    public func round(corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius))
        
        let shape = CAShapeLayer()
        shape.frame = bounds
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
}
