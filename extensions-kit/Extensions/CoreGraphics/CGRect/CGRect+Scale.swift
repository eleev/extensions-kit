//
//  CGRect+Scale.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGRect {
    
    public func scaled(to size: CGSize) -> CGRect {
        return CGRect(
            x: self.origin.x * size.width,
            y: self.origin.y * size.height,
            width: self.size.width * size.width,
            height: self.size.height * size.height)
    }
    
}
