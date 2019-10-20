//
//  NSLayoutConstraint+Activation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 10/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension NSLayoutConstraint {
    
    /// Sets the priority of the constraint to the specified value and then return self
    @discardableResult public func with(priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }
    
    /// Set activation state for the current layout constrint and return self
    @discardableResult public func set(active: Bool) -> Self {
        isActive = active
        return self
    }
}
#endif
