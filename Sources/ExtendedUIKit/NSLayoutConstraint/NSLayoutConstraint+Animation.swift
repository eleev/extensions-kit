//
//  NSLayoutConstraint+Animation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 14/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    public func setConstant(for value: CGFloat, animated: Bool = false, duration: TimeInterval = 0.3) {
        constant = value
        
        guard let first = firstItem as? UIView,
            let superview = first.superview else {
                return
        }
        
        if animated == false {
            superview.layoutIfNeeded()
            return
        }
        
        UIView.animate(withDuration: duration) { superview.layoutIfNeeded() }
    }
}
