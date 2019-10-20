//
//  UIApplication+SafeAreas.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIApplication {
    
    public class func safeAreaBottom() -> CGFloat {
        let window = getFirstSharedAppsWindow()
        let bottomPadding = window?.safeAreaInsets.bottom ?? 0.0
        return bottomPadding
    }
    
    public class func safeAreaTop() -> CGFloat {
        let window = getFirstSharedAppsWindow()
        let bottomPadding = window?.safeAreaInsets.top ?? 0.0
        return bottomPadding
    }
    
    public class func safeAreaLeft() -> CGFloat {
        let window = getFirstSharedAppsWindow()
        let leftPadding = window?.safeAreaInsets.left ?? 0.0
        return leftPadding
    }
    
    public class func safeAreaRight() -> CGFloat {
        let window = getFirstSharedAppsWindow()
        let rightPadding = window?.safeAreaInsets.right ?? 0.0
        return rightPadding
    }
    
}

private extension UIApplication {
    
    private class func getFirstSharedAppsWindow() -> UIWindow? {
        return UIApplication.shared.keyWindow ?? UIApplication.shared.windows.first
    }
}

