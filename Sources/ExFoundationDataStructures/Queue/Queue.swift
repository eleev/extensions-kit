//
//  Queue.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 30/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct Queue<T> {
    
    // MARK: - Private properties
    
    private var data: [T]
    
    // MARK: - Public properties
    
    public var count: Int {
        return data.count
    }
    
    public var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }
    
    // MARK: - Initializers
    
    public init() {
        data = [T]()
    }
    
    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        self.init()
        data.append(contentsOf: elements)
    }
    
    
    // MARK: - API methods
    
    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }
    
    public func peek() -> T? {
        return data.first
    }
    
    public mutating func enqueue(element: T) {
        data.append(element)
    }
    
    public mutating func clear() {
        data.removeAll()
    }
    
    public func isFull() -> Bool {
        return count == data.capacity
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
    
    // MARK: - Private methods
    
    private  func checkIndex(index: Int) throws {
        if index < 0 || index > count {
            throw QueueError.indexOutOfRange
        }
    }
    
}

// MARK: - Custom error enum type declaration

public enum QueueError: Error {
    case indexOutOfRange
}

// MARK: - CustomStringConvertable and CustomStirngDebugConvertable protocols conformance

extension Queue: CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description: String {
        return data.description
    }
    
    public var debugDescription: String {
        return data.description
    }
}

// MARK: - ExpressibleByArrayLiteral protocol conformance

extension Queue: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

// MARK: - Sequnce protocol conformance

extension Queue: Sequence {
    
    public func makeIterator() -> AnyIterator<T> {
        let indexedIterator = IndexingIterator(_elements: data.lazy)
        return AnyIterator(indexedIterator)
    }
    
    public func generate() -> AnyIterator<T> {
        let indexingIteratoer = IndexingIterator(_elements: data.lazy)
        return AnyIterator(indexingIteratoer)
        
    }
}

// MARK: - MutableCollection protocol conformance

extension Queue: MutableCollection {
    
    // MARK: - Core protocol conformance
    
    public var startIndex: Int {
        return 0
    }
    
    public var endIndex: Int {
        return count - 1
    }
    
    public func index(after i: Int) -> Int {
        return data.index(after: i)
    }
    
    // MARK: - Subscript implementation
    
    public subscript(index: Int) -> T {
        get {
            checkHandledIndex(index: index)
            return data[index]
        }
        set {
            checkHandledIndex(index: index)
            data[index] = newValue
        }
    }
    
    // MARK: - Utility method
    
    private func checkHandledIndex(index: Int) {
        do {
            try checkIndex(index: index)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
}
