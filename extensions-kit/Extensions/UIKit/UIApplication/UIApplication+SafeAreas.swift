//
//  UIApplication+SafeAreas.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

public extension UIApplication {
    
    public class func safeAreaBottom() -> CGFloat {
        let window = UIApplication.shared.keyWindow ?? UIApplication.shared.windows.first
        let bottomPadding = window?.safeAreaInsets.bottom ?? 0.0
        return bottomPadding
    }
    
    public class func safeAreaTop() -> CGFloat {
        let window = UIApplication.shared.keyWindow ?? UIApplication.shared.windows.first
        let bottomPadding = window?.safeAreaInsets.top ?? 0.0
        return bottomPadding
    }
}

