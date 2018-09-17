//
//  Atomic.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 17/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Guarantees that a valid value will be returned when accessing such property by using multiple thread. The valid does not always mean correct (atomic property may not be in the state that you expect, at a time when you access it).
final public class Atomic<T> {
    
    // MARK: - Properties
    
    private var mutex: Mutex
    private var value: T
    
    // MARK: - Initialzers
    
    public init(value: T) {
        mutex = Mutex()
        self.value = value
    }
    
    // MARK: - Methods
    
    public func set(_ closure: (T) -> T) -> T {
        mutex.lock()
        let result = closure(value)
        value = result
        mutex.unlock()
        
        return result
    }
    
    public func get() -> T {
        return value
    }
    
    public func swap(value: T) -> T {
        mutex.lock()
        let previous = self.value
        self.value = value
        mutex.unlock()
        
        return previous
    }
    
    public func with<R>(_ closure: (T) -> R) -> R {
        mutex.lock()
        let result = closure(value)
        mutex.unlock()
        
        return result
    }
}
