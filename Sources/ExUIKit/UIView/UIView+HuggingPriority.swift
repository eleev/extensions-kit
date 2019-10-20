//
//  UIView+HuggingPriority.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 10/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Wrapper for 'setContentHuggingPriority' method with more convenient name
    public func setHugging(priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) {
        setContentHuggingPriority(priority, for: axis)
    }
    
    /// Wrapper for 'setContentCompressionResistancePriority' method with more convenient name
    public func setCompressionResistance(priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) {
        setContentCompressionResistancePriority(priority, for: axis)
    }
}
