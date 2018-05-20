//
//  CGPoint+Utils.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 20/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

public extension CGPoint {
    
    public func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    public func lengthSquared() -> CGFloat {
        return x*x + y*y
    }
    
    func normalized() -> CGPoint {
        let len = length()
        return len>0 ? self / len : CGPoint.zero
    }
    
    public mutating func normalize() -> CGPoint {
        self = normalized()
        return self
    }
    
    public func distanceTo(_ point: CGPoint) -> CGFloat {
        return (self - point).length()
    }

    /// Returns the angle in radians of the vector described by the CGPoint. The range of the angle is -π to π; an angle of 0 points to the right.
    public var angle: CGFloat {
        return atan2(y, x)
    }
}
