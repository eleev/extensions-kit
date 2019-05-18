//
//  UIImage+ImageFromUIView.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 05/06/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIImage
import UIKit.UIView

extension UIImage {
    
    public class func image(from view: UIView) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 0.0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        
        view.layer.render(in: context)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
