//
//  UIView+LayoutAnimation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIView {
    
    public func animateLayoutBounce(duration: Double = 0.5,
                                    usingSpringWithDamping damping: CGFloat = 0.8,
                                    initialSpringVelocity velocity: CGFloat = 0,
                                    completion: (() -> Void)? = nil) {
        
        UIView.animate(withDuration: duration,
                       delay: 0,
                       usingSpringWithDamping: damping,
                       initialSpringVelocity: velocity,
                       options: .curveEaseOut,
                       animations: {
                        self.layoutIfNeeded()
        }, completion: { _ in
            completion?()
        })
    }
}
