//
//  Lens.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 18/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct Lens<C, V> {
    public let get: (C) -> V
    public let set: (C, V) -> C
}

precedencegroup ComposePrecedence {
    associativity: left
}

infix operator >>> : ComposePrecedence

public func >>> <C, V, U>(lhs: Lens<C, V>, rhs: Lens<V, U>) -> Lens<C, U> {
    return Lens(
        get: { container in
            let view = lhs.get(container)
            let subview = rhs.get(view)
            return subview
    },
        set: { (container, subview) in
            let initialView = lhs.get(container)
            let updatedView = rhs.set(initialView, subview)
            return lhs.set(container, updatedView)
    })
}
