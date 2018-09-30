//
//  UIViewController+Storyboard.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIViewController {

    // MARK: - Public methods
    
    /// Instantiates a UIViewController instance from a Storyboard using the UIViewController's name as a reference name of the Storyboard file
    ///
    /// - bundle: is an optional instance of Bundle class. By default it's nil, which means that the defailt bundle will be used
    /// - returns: the instantiated UIViewController instance
    public class func storyboardInstance(using bundle: Bundle? = nil) -> Self? {
        return instantiateFromStoryboard(from: bundle)
    }
    
    // MARK: - Private methods
    
    private class func instantiateFromStoryboard<T: UIViewController>(from bundle: Bundle? = nil) -> T? {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: bundle)
        return storyboard.instantiateInitialViewController() as? T
    }
}
