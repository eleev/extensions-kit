//
//  UIImageView+Masking.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIImageView

public extension UIImageView {
    
    func mask(with image: UIImage, targetImageSize: CGSize) {
        let maskLayer = CALayer()
        maskLayer.contents = image.cgImage
        maskLayer.frame = CGRect(x: 0, y: 0, width: targetImageSize.width, height: targetImageSize.height)
        self.layer.mask = maskLayer
        self.layer.masksToBounds = true
    }
}
