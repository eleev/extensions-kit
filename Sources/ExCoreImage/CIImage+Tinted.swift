//
//  CIImage+Tinted.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreImage.CIImage
import UIKit.UIColor

public extension CIImage {
    
    /// Applies the `color` as a tint color
    ///
    /// - Parameter color: is a UIColor instance that is used as a tint color
    /// - Returns: new optional CIImage that was tinted or nil if `CIMultiplyCompositing` or/and `CIConstantColorGenerator` filter(s) could not be created
    func tinted(by color: UIColor) -> CIImage? {
        guard
            let transparentQRImage = transparent,
            let filter = CIFilter(name: "CIMultiplyCompositing"),
            let colorFilter = CIFilter(name: "CIConstantColorGenerator") else { return nil }
        
        let ciColor = CIColor(color: color)
        colorFilter.setValue(ciColor, forKey: kCIInputColorKey)
        let colorImage = colorFilter.outputImage
        
        filter.setValue(colorImage, forKey: kCIInputImageKey)
        filter.setValue(transparentQRImage, forKey: kCIInputBackgroundImageKey)
        
        return filter.outputImage!
    }
}
