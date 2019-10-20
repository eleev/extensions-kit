//
//  UIImage+LandscapeCameraOrientationFix.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIImage

// MARK: - This extension for UIImage fixes image orientation for cases when the iamge was captured using AVFoundation in landscape interface orientation
extension UIImage {
    
    func landscapeCameraCaptureOrientationFix(for interfaceOrinetation: UIInterfaceOrientation) -> UIImage? {
        var imageOrientation: UIImage.Orientation!
        var shouldOrient: Bool = false
        
        if interfaceOrinetation == .landscapeRight {
            imageOrientation = UIImage.Orientation.left
            shouldOrient = !shouldOrient
        } else if interfaceOrinetation == .landscapeLeft {
            imageOrientation = UIImage.Orientation.right
            shouldOrient = !shouldOrient
        }
        if shouldOrient, let cgimage = self.cgImage {
            let image = UIImage(cgImage: cgimage, scale: self.scale, orientation: imageOrientation)
            return image
        }
        
        return self
    }
}
