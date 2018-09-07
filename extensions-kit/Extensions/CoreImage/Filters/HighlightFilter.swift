//
//  HighlightFilter.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 07/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreImage

/// The filter is originally designed for highlighting 3D objects but can be used to add this effect to images and sprites
public class HighlightFilter: CIFilter {
    
    // MARK: - Properties
    
    public static let filterName = "highlightFilter"
    
    @objc dynamic public var inputImage: CIImage?
    @objc dynamic public var inputIntensity: NSNumber?
    @objc dynamic public var inputRadius: NSNumber?
    
    // MARK: - Overrides
    
    public override var outputImage: CIImage? {
        guard let inputImage = inputImage else {
            return nil
        }
        let bloomFilter = prepareBloomFilter(for: inputImage)
        
        let sourceOverCompositing = CIFilter(name:"CISourceOverCompositing")!
        sourceOverCompositing.setValue(inputImage, forKey: "inputImage")
        sourceOverCompositing.setValue(bloomFilter.outputImage, forKey: "inputBackgroundImage")
        
        return sourceOverCompositing.outputImage
    }
    
    // MARK: - Private helpers
    
    private func prepareBloomFilter(for inputImage: CIImage) -> CIFilter {
        let bloomFilter = CIFilter(name:"CIBloom")!
        bloomFilter.setValue(inputImage, forKey: kCIInputImageKey)
        bloomFilter.setValue(inputIntensity, forKey: "inputIntensity")
        bloomFilter.setValue(inputRadius, forKey: "inputRadius")
        return bloomFilter
    }
    
}
