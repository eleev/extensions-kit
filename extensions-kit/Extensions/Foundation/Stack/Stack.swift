//
//  Stack.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct Stack<T> {
    
    // MARK: - Private properties
    
    private var elements: [T]
    
    // MARK: - Public computed properties
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var count: Int {
        return elements.count
    }
    
    // MARK: - Initializers
    
    public init() {
        elements = [T]()
    }
    
    public init<S: Sequence>(stack: S) where S.Iterator.Element == T {
        self.elements = Array(stack.reversed())
    }
    
    // MARK: Methods
    
    public mutating func push(element: T) {
        elements.append(element)
    }
    
    public mutating func peek() -> T? {
        return elements.last
    }
    
    public mutating func pop() -> T? {
        return elements.popLast()
    }
    
}

/// Extension that adds conformances to CustomStringConvertible & CustomDebugStringConvertible protocols
extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description: String {
        return elements.description
    }
    
    public var debugDescription: String {
        return elements.description
    }
}

/// Adds conformance to ExpressibleByArrayLiteral protocol - Stack can be initialized by an array literal
extension Stack: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        self.init()
        
        elements.forEach { element in
            self.elements.append(element)
        }
    }
}

/// Adds conformance to Sequence protocol - can be used in for...in loop
extension Stack: Sequence {
    
    public func makeIterator() -> AnyIterator<T> {
        let idexedIterator = IndexingIterator(_elements: self.elements.lazy.reversed())
        return AnyIterator(idexedIterator)
    }
}
