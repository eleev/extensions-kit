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
infix operator <<- : ComposePrecedence

/// Composes two functions into one by using functional composition (left-to-right order e.g. (x) = rhs(lhs(x)))
public func ->> <T, U, V>(lhs: @escaping (T) -> U, rhs: @escaping (U) -> V) -> ((T) -> V) {
    return { rhs(lhs($0)) }
}

/// Composes two function into one by using functional compoisition (right-to-left order e.g. (x) = lhs(rhs(x)))
public func <<- <T, U, V>(lhs: @escaping (U) -> V, rhs: @escaping (T) -> U) -> ((T) -> V) {
    return { lhs(rhs($0)) }
}

