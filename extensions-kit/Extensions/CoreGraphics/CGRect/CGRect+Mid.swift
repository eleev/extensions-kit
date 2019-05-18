//
//  CGRect+Mid.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGRect {
    
    public var mid: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}
