//
//  CIImage+Transparent.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreImage.CIImage

extension CIImage {
    
    /// Creates a transparent image by inverting the colors of `self`. Target image should be black and white
    public var transparent: CIImage? {
        return inverted?.blackTransparent
    }
    
    /// Creates a a transparent image by converting all the black to transparent
    public var blackTransparent: CIImage? {
        guard let blackTransparentFilter = CIFilter(name: "CIMaskToAlpha") else { return nil }
        blackTransparentFilter.setValue(self, forKey: "inputImage")
        return blackTransparentFilter.outputImage
    }
}
