//
//  UIViewController+ContainerViewController.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/02/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    /// Loads a UIViewController from a Storyboard file
    func loadViewController(named name: String, storyboard named: String, bundle: Bundle = .main) -> UIViewController {
        let storyboard = UIStoryboard(name: named, bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: name)
        return viewController
    }
    
    /// Adds a generic `T` which is `UIViewController` as a child container view controller to the specified generic `V` which is `UIView`. The T is embedded into `V` as where `V` is used as a container view for the view controller of type `T`
    func add<T: UIViewController, V: UIView>(viewController: T, to view: V) {
        addChild(viewController)
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
    
    /// Removes the generic `T` which is `UIViewController`
    func remove<T: UIViewController>(viewController: T) {
        willMove(toParent: nil)
        viewController.removeFromParent()
        removeFromParent()
    }
}
