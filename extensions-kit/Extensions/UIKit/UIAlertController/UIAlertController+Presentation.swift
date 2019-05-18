//
//  UIAlertController+Presentation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import UIKit.UIAlertController

extension UIAlertController {
    
    /// Presents a UIAlertController with the given title, message, tintColor and alert actions
    ///
    /// - Parameters:
    ///   - title: is an optional String title that will appear at the top of the alert controller
    ///   - message: is an optional String message that will appear at the center of the alert controller
    ///   - tintColor: is an optional UIColor that will color the view of the alert controller
    ///   - controller: is a target UIViewController that will be used to present the alert. If none was specified then the UIApplication's root view controller will be used to present the alert
    ///   - animated: is a Bool value that specified whether the presentation of the alert should be animated or not
    ///   - alertActions: is a closure that is used to inject varying number of UIAlertAction objects
    public class func present(with title: String?,
                              and message: String?,
                              tintColor: UIColor? = nil,
                              from controller: UIViewController? = nil,
                              shouldAnimate animated: Bool = true,
                              alertActions: ()->[UIAlertAction]) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let actions = alertActions()
        actions.forEach { action in
            alertController.addAction(action)
        }
        
        if let tintColor = tintColor {
            alertController.view.tintColor = tintColor
        }
        
        let unwrappedController = controller ?? UIApplication.shared.keyWindow?.rootViewController
        unwrappedController?.present(alertController, animated: animated, completion: nil)
    }
}
