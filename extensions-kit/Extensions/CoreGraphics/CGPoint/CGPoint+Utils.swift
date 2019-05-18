//
//  CGPoint+Utils.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 20/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGPoint {
    
    public func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    public func lengthSquared() -> CGFloat {
        return x*x + y*y
    }
    
    func normalized() -> CGPoint {
        let len = length()
        return len > 0 ? self / len : CGPoint.zero
    }
    
    public mutating func normalize() -> CGPoint {
        self = normalized()
        return self
    }
    
    /// Computes the distance between the current [`self`] and the `other` point
    public func distance(to other: CGPoint) -> CGFloat {
        return sqrt(pow(x - other.x, 2) + pow(y - other.y, 2))
    }
    
    /// Computes an angle in radians between the current [`self`] and the argument parameter `point`
    public func angle(to point: CGPoint) -> CGFloat {
        return atan2(point.y - y, point.x - x)
    }
    
    /// Returns the angle in radians of the vector described by the CGPoint. The range of the angle is -π to π; an angle of 0 points to the right.
    public var angle: CGFloat {
        return atan2(y, x)
    }
}
