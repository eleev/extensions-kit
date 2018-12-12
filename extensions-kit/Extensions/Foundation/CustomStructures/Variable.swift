//
//  Variable.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 12/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Lightweight bindable data type that allows to get on update notifications for a given value. Can be used with MVVM or any another architectural pattern to replace the need for 3rd party, heavyweight binding framework.
public class Variable<Value> {
    
    public var value: Value {
        didSet {
            onUpdate?(value)
        }
    }
    
    public var onUpdate: ((Value) -> Void)? {
        didSet {
            onUpdate?(value)
        }
    }
        
    public init(_ value: Value, _ onUpdate: ((Value) -> Void)? = nil) {
        self.value = value
        self.onUpdate = onUpdate
        self.onUpdate?(value)
    }
}
