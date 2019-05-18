//
//  NSObjectProtocol+KVO+KVC.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 24/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

extension NSObjectProtocol where Self: NSObject {
    
    @discardableResult public func observe<Value>(for keyPath: KeyPath<Self, Value>, onChange: @escaping (Value) -> ()) -> NSKeyValueObservation {
        return observe(keyPath, options: [.initial, .new], changeHandler: { (_, change) in
            guard let newValue = change.newValue else { return }
            onChange(newValue)
        })
    }
    
    @discardableResult public func bind<Value, Target>(keyPath: KeyPath<Self, Value>, to target: Target, at targetKeyPath: ReferenceWritableKeyPath<Target, Value>) -> NSKeyValueObservation {
        return observe(for: keyPath, onChange: { target[keyPath: targetKeyPath] = $0 })
    }
}
