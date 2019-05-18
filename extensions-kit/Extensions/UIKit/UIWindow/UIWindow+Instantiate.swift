//
//  UIWindow+Instantiate.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 24/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import UIKit

extension UIWindow {
    
    /// Creates a new `UIWindow` instance with the given root view controller, frame and a `WindowOption` if any
    public static func create<T: UIViewController>(with rootViewController: T, frame: CGRect = UIScreen.main.bounds, option: WindowOption = .none) -> UIWindow {
        let window = UIWindow(frame: frame)
        window.rootViewController = rootViewController
        let windowsOptionFunction = option.convert(for: window)
        windowsOptionFunction()
        
        return window
    }
}

/// Is a wrapper enum type that simplifies the instantiation of `UIWindow` class
///
/// - none: no options applied
/// - key: makes the `UIWindow` instance key but not visible
/// - keyAndVisible: makes the `UIWindow` instnace key and visible
public enum WindowOption {
    case none
    case key
    case keyAndVisible
}

public extension WindowOption {
    func convert(for window: UIWindow) -> () -> Void {
        switch self {
        case .none:
            return { /* empty function that will does nothing or none */ }
        case .key:
            return window.makeKey
        case .keyAndVisible:
            return window.makeKeyAndVisible
        }
    }
}
