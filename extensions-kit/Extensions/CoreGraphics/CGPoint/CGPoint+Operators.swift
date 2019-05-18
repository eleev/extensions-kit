//
//  CGPoint+Operators.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 20/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGPoint {

    public static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    public static func += (left: inout CGPoint, right: CGPoint) {
        left = left + right
    }
    public static func + (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x + right.dx, y: left.y + right.dy)
    }
    
    public static func += (left: inout CGPoint, right: CGVector) {
        left = left + right
    }
    public static  func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    public static func -= (left: inout CGPoint, right: CGPoint) {
        left = left - right
    }
    
    public static func - (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x - right.dx, y: left.y - right.dy)
    }
    
    public static func -= (left: inout CGPoint, right: CGVector) {
        left = left - right
    }
    
    public static func * (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x * right.x, y: left.y * right.y)
    }
    
    public static func *= (left: inout CGPoint, right: CGPoint) {
        left = left * right
    }
    
    public static func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
        return CGPoint(x: point.x * scalar, y: point.y * scalar)
    }
    
    public static func *= (point: inout CGPoint, scalar: CGFloat) {
        point = point * scalar
    }
    
    public static func * (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x * right.dx, y: left.y * right.dy)
    }
    
    public static func *= (left: inout CGPoint, right: CGVector) {
        left = left * right
    }
    
    public static func / (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x / right.x, y: left.y / right.y)
    }
    
    public static func /= (left: inout CGPoint, right: CGPoint) {
        left = left / right
    }
    
    public static func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
        return CGPoint(x: point.x / scalar, y: point.y / scalar)
    }
    
    public static func /= (point: inout CGPoint, scalar: CGFloat) {
        point = point / scalar
    }
    
    public static func / (left: CGPoint, right: CGVector) -> CGPoint {
        return CGPoint(x: left.x / right.dx, y: left.y / right.dy)
    }
    
    public static func /= (left: inout CGPoint, right: CGVector) {
        left = left / right
    }
    
    public static func lerp(start: CGPoint, end: CGPoint, t: CGFloat) -> CGPoint {
        return start + (end - start) * t
    }

}
