//
//  CGRect+Corners.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 05/06/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGRect {
    
    public var topLeft: CGPoint{
        return origin
    }
    
    public var topRight: CGPoint{
        return CGPoint(x: origin.x + width, y: origin.y)
    }
    
    public var bottomLeft: CGPoint{
        return CGPoint(x: origin.x, y: origin.y + height)
    }
    
    public var bottomRight: CGPoint{
        return CGPoint(x: origin.x + width, y: origin.y + height)
    }
}
