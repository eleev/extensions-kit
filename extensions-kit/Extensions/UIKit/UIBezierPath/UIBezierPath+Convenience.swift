//
//  UIBezierPath+Convenience.swift
//  extensions_kit
//
//  Created by Astemir Eleev on 09/05/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreGraphics
import class UIKit.UIBezierPath

public extension UIBezierPath {
    
    // MARK: - Properties
    
    var center: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    var points: [CGPoint] {
        var points = [CGPoint]()
    
        withUnsafeMutablePointer(to: &points) { pointsPointer in
            cgPath.apply(info: pointsPointer) { userInfo, nextElementPointer in
                let element = nextElementPointer.pointee
                var point = CGPoint.zero
                switch element.type {
                case .moveToPoint: point = element.points[0]
                case .addLineToPoint: point = element.points[0]
                default: break
                }
                let elementsPointer = userInfo!.assumingMemoryBound(to: [CGPoint].self)
                elementsPointer.pointee.append(point)
            }
        }
        return points
    }
    
    // MARK: - Initializers
    
    convenience init(ovalOf size: CGSize) {
        self.init(ovalIn: CGRect(origin: CGPoint(x: -size.width / 2, y: -size.height / 2), size: size))
    }
}
