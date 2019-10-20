//
//  UIImage+SolidColor.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIImage

// MARK: - Extension for creating UIImage from a UIColor
extension UIImage {
    
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    func isImageWhite() -> Bool? {
        guard let whiteImage = UIImage(color: .white, size: self.size), let whiteImageData = whiteImage.jpegData(compressionQuality: 1.0), let imageData = self.jpegData(compressionQuality: 1.0) else {
            return nil
        }
        return whiteImageData == imageData
    }
}
