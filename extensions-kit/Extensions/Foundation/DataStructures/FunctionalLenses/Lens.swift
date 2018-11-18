//
//  Lens.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 18/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

// C -> Whole
// V -> Part
public struct Lens<Whole, Part> {
    public let get: (Whole) -> Part
    public let set: (Whole, Part) -> Whole
}

precedencegroup ComposePrecedence {
    associativity: left
}

infix operator >>> : ComposePrecedence

public func >>> <Whole, Part, Subpart>(lhs: Lens<Whole, Part>, rhs: Lens<Part, Subpart>) -> Lens<Whole, Subpart> {
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
