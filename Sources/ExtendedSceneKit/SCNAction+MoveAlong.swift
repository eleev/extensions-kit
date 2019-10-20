//
//  SCNAction+MoveAlong.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/05/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import class SceneKit.SCNAction
import struct SceneKit.SCNVector3
import CoreGraphics
import class UIKit.UIBezierPath
import ExtendedUIKit
import ExtendedCoreGraphics

extension SCNAction {
    
    public class func moveAlong(path: UIBezierPath, z: CGFloat, speed: Double) -> SCNAction {
        let points = path.points
        var lastPoint = points.first!
        var lastAngle = lastPoint.angle(to: points[1])
        var actions = [SCNAction.rotateTo(x: 0, y: 0, z: lastAngle, duration: 0), SCNAction.move(to: SCNVector3(lastPoint.x, lastPoint.y, z), duration: 0)]
        
        for point in points[1...] {
            let duration = Double(point.distance(to: lastPoint)) / speed
            var angle = lastPoint.angle(to: point)
            if abs(angle - lastAngle) > .pi {
                if angle > 0 {
                    angle -= 2 * .pi
                } else {
                    angle += 2 * .pi
                }
            }
            actions.append(SCNAction.group([
                SCNAction.move(to: SCNVector3(point.x, point.y, z), duration: duration),
                SCNAction.rotateTo(x: 0, y: 0, z: angle, duration: duration / 3)
                ]))
            lastPoint = point
            lastAngle = angle
        }
        return SCNAction.sequence(actions)
    }
    
}
