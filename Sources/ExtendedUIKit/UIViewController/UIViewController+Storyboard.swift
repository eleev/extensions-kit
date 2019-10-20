//
//  UIViewController+Storyboard.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit
import ExtendedFoundation

extension UIViewController {

    // MARK: - Public methods
    
    /// Instantiates a UIViewController instance from a Storyboard using the UIViewController's name as a reference name of the Storyboard file
    ///
    /// - bundle: is an optional instance of Bundle class. By default it's nil, which means that the defailt bundle will be used
    /// - returns: instantiated UIViewController instance
    public class func instantiateController(from bundle: Bundle? = nil) -> Self? {
        return instantiateFromStoryboard(from: bundle)
    }
    
    /// Instantiates a UIViewController instance from the specified Storyboard and a String identifier
    ///
    /// - Returns: instantiated UIViewController instance
    public class func instantiateController(from storyboard: UIStoryboard, identifier: String) -> Self {
        return instantiate(from: storyboard, identifier: identifier)
    }
    
    /// Instantiates a UIView controller instnace from a Storyboard using class name as an identifier
    ///
    /// - Returns: instantiated UIViewController instnace
    public class func instantiateController(from storyboard: UIStoryboard) -> Self {
        return instantiate(from: storyboard, identifier: nameOfClass)
    }
    
    // MARK: - Private methods
    
    private class func instantiateFromStoryboard<T: UIViewController>(from bundle: Bundle? = nil) -> T? {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: bundle)
        return storyboard.instantiateInitialViewController() as? T
    }
    
    private class func instantiate<T: UIViewController>(from storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
