//
//  UIResponder+ChainDescription.swift
//  ExtendedUIKit
//
//  Created by Astemir Eleev on 23/12/2019.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIResponder

public extension UIResponder {
    
    func responderChain() -> String {
        guard let next = next else {
            return String(describing: self)
        }
        return String(describing: self) + " -> " + next.responderChain()
    }
}
