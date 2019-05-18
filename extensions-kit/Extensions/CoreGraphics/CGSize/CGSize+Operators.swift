//
//  CGSize+Operators.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 05/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGSize {
    
    public static func +(left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width + right.width, height: right.height + right.height)
    }
    
    public static func +=(left: inout CGSize, right: CGSize){
        left = left + right
    }
    
    public static func -(left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width - right.width, height: right.height - right.height)
    }
    
    public static func -=(left: inout CGSize, right: CGSize){
        left = left - right
    }
    
    public static func *(left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width * right.width, height: right.height * right.height)
    }
    
    public static func *=(left: inout CGSize, right: CGSize) {
        left = left * right
    }
    
    public static func /(left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width / right.width, height: right.height / right.height)
    }
    
    public static func /=(left: inout CGSize, right: CGSize) {
        left = left / right
    }
}
