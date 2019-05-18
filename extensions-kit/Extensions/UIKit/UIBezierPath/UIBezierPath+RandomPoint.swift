//
//  UIBezierPath+RandomPoint.swift
//  extensions_kit
//
//  Created by Astemir Eleev on 09/05/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreGraphics
import class UIKit.UIBezierPath

extension UIBezierPath {
    
    func randomPoint(inset: CGFloat) -> CGPoint {
        var position: CGPoint!
        repeat {
            let x = CGFloat.random(in: bounds.origin.x + inset ... bounds.origin.x + bounds.size.width - inset)
            let y = CGFloat.random(in: bounds.origin.y + inset ... bounds.origin.y + bounds.size.height - inset)
            position = CGPoint(x: x, y: y)
        } while (!contains(position))
        return position
    }
    
    func randomPointNormalized(inset: CGFloat) -> CGPoint {
        let point = randomPoint(inset: inset)
        return CGPoint(x: point.x - bounds.origin.x - bounds.size.width / 2, y: point.y - bounds.origin.y - bounds.size.height / 2)
    }
}
