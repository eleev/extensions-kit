//
//  URL+QRImage.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation
import UIKit.UIImage
import CoreImage.CIImage
import ExtendedCoreImage

extension URL {
    
    /// Creates a QR image from the `absoluteString` of the `URL`
    ///
    /// - Parameters:
    ///   - scale: is a `CGPoint` that specifies the scale affine transformation of the final QR image
    ///   - color: is a `UIColor` that specifies the tint color (if any e.g. non `nil`) of the final QR image
    /// - Returns: optional `UIImage` instance holding the QR image or `nil` if `CIImage` could not be created
    public func qrImage(scaledBy scale: CGPoint = CGPoint(x: 10, y: 10), tint color: UIColor? = nil) -> UIImage? {
        var ciImage: CIImage? = CIImage.qrImage(from: absoluteString, scaledBy: scale)
        
        if let someColor = color {
            ciImage = ciImage?.tinted(by: someColor)
        }
        
        guard let image = ciImage else { return nil }
        return UIImage(ciImage: image)
    }   
}
