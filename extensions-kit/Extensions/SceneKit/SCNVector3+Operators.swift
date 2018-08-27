//
//  SCNVector3+Operators.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import SceneKit

// MARK: - Standard operators

func == (left: SCNVector3, right: SCNVector3) -> Bool {
    var isEqual = false
    if left.x == right.x && left.y == right.y && left.z == right.z {
        isEqual = true
    }
    return isEqual
}

func != (left: SCNVector3, right: SCNVector3) -> Bool {
    var isEqual = false
    if left.x == right.x && left.y == right.y && left.z == right.z {
        isEqual = true
    }
    return !isEqual
}

func + (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
    return SCNVector3Make(left.x + right.x, left.y + right.y, left.z + right.z)
}

func += (left: inout SCNVector3, right: SCNVector3) {
    left = left + right
}

func - (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
    return SCNVector3Make(left.x - right.x, left.y - right.y, left.z - right.z)
}

func -= (left: inout SCNVector3, right: SCNVector3) {
    left = left - right
}

func * (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
    return SCNVector3Make(left.x * right.x, left.y * right.y, left.z * right.z)
}

func *= (left: inout SCNVector3, right: SCNVector3) {
    left = left * right
}

func * (vector: SCNVector3, scalar: Float) -> SCNVector3 {
    return SCNVector3Make(vector.x * scalar, vector.y * scalar, vector.z * scalar)
}

func * (vector: SCNVector3, scalar: CGFloat) -> SCNVector3 {
    let floatScalar = Float(scalar)
    return SCNVector3Make(vector.x * floatScalar, vector.y * floatScalar, vector.z * floatScalar)
}

func *= (vector: inout SCNVector3, scalar: Float) {
    vector = vector * scalar
}

func *= (vector: inout SCNVector3, scalar: CGFloat) {
    vector = vector * Float(scalar)
}

func / (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
    return SCNVector3Make(left.x / right.x, left.y / right.y, left.z / right.z)
}

func /= (left: inout SCNVector3, right: SCNVector3) {
    left = left / right
}

func / (vector: SCNVector3, scalar: Float) -> SCNVector3 {
    return SCNVector3Make(vector.x / scalar, vector.y / scalar, vector.z / scalar)
}

func / (vector: SCNVector3, scalar: CGFloat) -> SCNVector3 {
    let floatScalar = Float(scalar)
    return SCNVector3Make(vector.x / floatScalar, vector.y / floatScalar, vector.z / floatScalar)
}

func /= (vector: inout SCNVector3, scalar: Float) {
    vector = vector / scalar
}

func /= (vector: inout SCNVector3, scalar: CGFloat) {
    vector = vector / Float(scalar)
}

// MARK: - Special operators

infix operator +*
infix operator +*=

/// Cross product of two vectors
func +* (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
    let x = left.y * right.z - left.z * right.y
    let y = left.z * right.x - left.x * right.z
    let z = left.x * right.y - left.y * right.x
    return SCNVector3(x, y, z)
}

/// Cross product of two vectors
func +*= (left: inout SCNVector3, right: SCNVector3) {
    let x = left.y * right.z - left.z * right.y
    let y = left.z * right.x - left.x * right.z
    let z = left.x * right.y - left.y * right.x
    
    left = SCNVector3(x, y, z)
}
