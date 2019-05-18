//
//  BuilderProtocol.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 06/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Allows AnyObject to be extended with chainable initialization methods by using Keypath feature. Please note that the extension works only since `Swift 4.0`.
public protocol BuilderProtocol { /* empty, implementation is added to the protocol extension*/ }

#if swift(>=4.0)
extension BuilderProtocol where Self: AnyObject {
    
    @discardableResult
    public func `init`<T>(_ property: ReferenceWritableKeyPath<Self, T>, with value: T) -> Self {
        self[keyPath: property] = value
        return self
    }
}
#endif
