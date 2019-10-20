//
//  UIScreen+InterfaceOrientation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 16/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIScreen

extension UIScreen {
    
    /// Interface orientation for the current UIScreen
    public var orientation: UIInterfaceOrientation {
        let point = coordinateSpace.convert(CGPoint.zero, to: fixedCoordinateSpace)
        switch (point.x, point.y) {
        case (0, 0):
            return .portrait
        case let (x, y) where x != 0 && y != 0:
            return .portraitUpsideDown
        case let (0, y) where y != 0:
            return .landscapeLeft
        case let (x, 0) where x != 0:
            return .landscapeRight
        default:
            return .unknown
        }
    }
}
