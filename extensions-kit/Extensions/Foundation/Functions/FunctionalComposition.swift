//
//  FunctionalComposition.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 18/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

precedencegroup ComposePrecedence {
    associativity: left
}

infix operator ->> : ComposePrecedence

/// Composes two functions into one by using functional composition
public func ->> <T, U, V>(lhs: @escaping (T) -> U, rhs: @escaping (U) -> V) -> ((T) -> V) {
    return { rhs(lhs($0)) }
}
