//
//  UIImage+Downsample.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// Downsamples the input image to the specified point size and scale factor. Can be used to present the thumbnails, supports caching. The best way to utilize this method is to use GCD in order to delegate the work off the main thread, then use the .main dispatch queue to sync the results.
    ///
    /// There is a possible caveat when using this method intensively by repeatedly creating dispatch queues. That may lead to Thread Explosion. If you need to process many images, for instances for `UITableView` or `UICollectionView`, please use a serial dispatch queue and asynchronously delegate the work. That will prevent your downsampling code to cause Thread Explosion and will keep the performance at a decent level.
    ///
    /// - Parameters:
    ///   - url: a URL instnace that that specifies the location of an image
    ///   - pointSize: is the target size represented by `CGSize` that you wish to get
    ///   - scale: is the scale factor that is represented by `CGFloat`
    /// - Returns: an optional `UIImage` instnace that holds the downsampled image, or `nil` if either `CGImageSourceCreateWithURL` or `CGImageSourceCreateThumbnailAtIndex` has failed a `guard` statement
    public static func downsample(imageAt url: URL, to pointSize: CGSize, scale: CGFloat) -> UIImage? {
        let imageSourceOptions = [kCGImageSourceShouldCache: false] as CFDictionary
        guard let imageSource = CGImageSourceCreateWithURL(url as CFURL, imageSourceOptions) else { return nil }
        
        let maxDimensionsInPixels = max(pointSize.width, pointSize.height) * scale
        let downsampleOptions = [
            kCGImageSourceCreateThumbnailFromImageAlways : true,
            kCGImageSourceShouldCacheImmediately : true,
            kCGImageSourceCreateThumbnailWithTransform : true,
            kCGImageSourceThumbnailMaxPixelSize : maxDimensionsInPixels
        ] as CFDictionary
        
        guard let downsampledImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, downsampleOptions) else { return nil }
        
        return .init(cgImage: downsampledImage)
    }
    
}
