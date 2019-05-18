//
//  UIView+Masking.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import UIKit.UIView

extension UIView {
    
    /// Masks the view with the specified UIRectCorner array and corner radius
    public func mask(corners: UIRectCorner = [], with cornerRadius: CGFloat = 6) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }
}
