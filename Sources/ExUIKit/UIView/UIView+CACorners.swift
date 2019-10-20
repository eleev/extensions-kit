//
//  UIView+CaCorners.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 10/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

@available(iOS, introduced: 11.0)
public extension UIView {
    
    /// Wrapps `CACornerMask` for more consistent naming. Serves as a proxy for `CACornerMask` and simplifies naming convension for rounded corners.
    ///
    /// Rather than doing this:
    ///
    ///`CACornerMask.layerMinXMinYCorner`
    ///
    /// you do this:
    ///
    /// `UICorner.topLeft`
    ///
    /// The struct provides all the capabilities of the standard API `CACornerMask` through `OptoinSet` protocol.
    ///
    /// There are `5` different constants that can be chained together: 4 constants for each corner and the 5th one for all corners.
    struct UICorner: OptionSet {
        
        // MARK: - Typealiases
        
        public typealias RawValue = UInt
        
        // MARK: - Conformance to OptionSet protocol
        
        public let rawValue: UInt
        
        // MARK: - Static properties
        
        public static let topLeft       = UICorner(rawValue: 1 << 0)
        public static let topRight      = UICorner(rawValue: 1 << 1)
        public static let bottomLeft    = UICorner(rawValue: 1 << 2)
        public static let bottomRight   = UICorner(rawValue: 1 << 3)
        
        public static let all: UICorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
        
        // MARK: - Initializers
        
        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
        
        // MARK: - Fileprivate methods for internal usage
        
        fileprivate func convert() -> CACornerMask {
            switch self {
            case .topLeft:
                return CACornerMask.layerMinXMinYCorner
            case .topRight:
                return CACornerMask.layerMaxXMinYCorner
            case .bottomLeft:
                return CACornerMask.layerMinXMaxYCorner
            case .bottomRight:
                return CACornerMask.layerMaxXMaxYCorner
            case .all:
                return [CACornerMask.layerMinXMinYCorner, CACornerMask.layerMaxXMinYCorner, CACornerMask.layerMinXMaxYCorner, CACornerMask.layerMaxXMaxYCorner]
            default:
                return CACornerMask(rawValue: rawValue)
            }
        }
        
        static fileprivate func encode(cornerMask: CACornerMask) -> UICorner {
            return UICorner(rawValue: cornerMask.rawValue)
        }
    }
    
    /// Rounds the specified `corners` wit the given `radius`
    ///
    /// - Parameters:
    ///   - corners: is a UICorner struct
    ///   - radius: is a CGFloat argument
    func round(corners: UICorner, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.maskedCorners = corners.convert()
        clipsToBounds = true
    }
    
    /// Rounds all the corners with the given radius
    func roundAllCorners(with radius: CGFloat) {
        round(corners: .all, radius: radius)
    }
    
    /// Returns current corner radius
    func getCornerRadius() -> CGFloat {
        return layer.cornerRadius
    }
    
    func getRoundedCorners() -> UIView.UICorner {
        return UICorner.encode(cornerMask: layer.maskedCorners)
    }
    
    func resetRoundedCorners() {
        layer.cornerRadius = 0
        layer.maskedCorners = .init(rawValue: 0)
    }
}
