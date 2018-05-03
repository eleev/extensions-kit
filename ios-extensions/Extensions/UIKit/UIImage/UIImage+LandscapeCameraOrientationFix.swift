//
//  UIImage+LandscapeCameraOrientationFix.swift
//  ios-extensions
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

// MARK: - This extension for UIImage fixes image orientation for cases when the iamge was captured using AVFoundation in landscape interface orientation
extension UIImage {
    
    func landscapeCameraCaptureOrientationFix(for interfaceOrinetation: UIInterfaceOrientation) -> UIImage? {
        var imageOrientation: UIImageOrientation!
        var shouldOrient: Bool = false
        
        if interfaceOrinetation == .landscapeRight {
            imageOrientation = UIImageOrientation.left
            shouldOrient = !shouldOrient
        } else if interfaceOrinetation == .landscapeLeft {
            imageOrientation = UIImageOrientation.right
            shouldOrient = !shouldOrient
        }
        if shouldOrient, let cgimage = self.cgImage {
            let image = UIImage(cgImage: cgimage, scale: self.scale, orientation: imageOrientation)
            return image
        }
        
        return self
    }
}
