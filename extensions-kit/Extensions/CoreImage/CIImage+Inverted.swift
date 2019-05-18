//
//  CIImage+Inverted.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreImage.CIImage

extension CIImage {
    
    /// Inverts the colors of `self`
    public var inverted: CIImage? {
        guard let invertedColorFilter = CIFilter(name: "CIColorInvert") else { return nil }
        
        invertedColorFilter.setValue(self, forKey: "inputImage")
        return invertedColorFilter.outputImage
    }
}
