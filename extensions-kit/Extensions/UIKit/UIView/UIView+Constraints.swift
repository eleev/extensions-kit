//
//  UIView+Constraints.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIView {
    
    public func pinSuperview() {
        guard let superview = self.superview else {
            return
        }
        self.translatesAutoresizingMaskIntoConstraints = false
        addSuperviewConstraint(constraint: topAnchor.constraint(equalTo: superview.topAnchor))
        addSuperviewConstraint(constraint: leftAnchor.constraint(equalTo: superview.leftAnchor))
        addSuperviewConstraint(constraint: bottomAnchor.constraint(equalTo: superview.bottomAnchor))
        addSuperviewConstraint(constraint: rightAnchor.constraint(equalTo: superview.rightAnchor))
    }
    
    public func addSuperviewConstraint(constraint: NSLayoutConstraint) {
        superview?.addConstraint(constraint)
    }
    
    /// Retrieves all constraints
    public func getAllConstraints() -> [NSLayoutConstraint] {
        // array will contain self and all superviews
        var views = [self]
        
        // get all superviews
        var view = self
        while let superview = view.superview {
            views.append(superview)
            view = superview
        }
        
        // transforms views to constraints and filter only those
        // constraints that include the view itself
        return views.flatMap({ $0.constraints }).filter { constraint in
            return constraint.firstItem as? UIView == self ||
                constraint.secondItem as? UIView == self
        }
    }
    
    public func getHeightConstraint() -> NSLayoutConstraint? {
        return getAllConstraints().filter({
            ($0.firstAttribute == .height && $0.firstItem as? UIView == self) ||
                ($0.secondAttribute == .height && $0.secondItem as? UIView == self)
        }).first
    }
    
    public func getWidthConstraint() -> NSLayoutConstraint? {
        return getAllConstraints().filter({
            ($0.firstAttribute == .width && $0.firstItem as? UIView == self) ||
                ($0.secondAttribute == .width && $0.secondItem as? UIView == self)
        }).first
    }
}
