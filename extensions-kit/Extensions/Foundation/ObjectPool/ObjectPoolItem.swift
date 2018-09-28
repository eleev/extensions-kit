//
//  ObjectPoolItem.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

protocol ObjectPoolItem: class {
    
    /// Determines a rule that is used by the ObjectPool instnace to determine whether this object is eligible to be reused
    var canReuse: Bool { get }
    
    /// Resets the state of an instnace to the default state, so the next ObjectPool consumers will not have to deal with unexpected state of the enqueued object.
    ///
    /// WARNING: If you leave this method without an implementation, you may get unexpected behavior when using an instance of this object with ObjectPool
    func reset()
}
