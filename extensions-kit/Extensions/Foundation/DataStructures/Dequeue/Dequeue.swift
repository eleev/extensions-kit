//
//  Dequeue.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct Dequeue<T> {
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
        data = []
    }
    
    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        self.init()
        data.append(contentsOf: elements)
    }
    
    // MARK: - Methods
    
    public mutating func dequeueFront() -> T? {
        return data.removeFirst()
    }
    
    public mutating func dequeueBack() -> T? {
        return data.removeLast()
    }
    
    public mutating func enqueue(front element: T) {
        data.insert(element, at: 0)
    }
    
    public mutating func enqueue(back element: T) {
        data.append(element)
    }
    
    public mutating func clear() {
        data.removeAll()
    }
    
    public mutating func isFull() -> Bool {
        return count == data.capacity
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
    
    public func peekFirst() -> T? {
        return data.first
    }
    
    public func peekLast() -> T? {
        return data.last
    }
    
    // MARK: - Private methods
    
    private  func checkIndex(index: Int) throws {
        if index < 0 || index > count {
            throw DequeueError.indexOutOfRange
        }
    }
}

enum DequeueError: Error {
    case indexOutOfRange
}

extension Dequeue: CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description: String {
        return data.description
    }
    
    public var debugDescription: String {
        return data.description
    }
}

extension Dequeue: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension Dequeue: Sequence {
    
    public func makeIterator() -> AnyIterator<T> {
        let indexedIterator = IndexingIterator(_elements: data.lazy)
        return AnyIterator(indexedIterator)
    }
    
    public func generate() -> AnyIterator<T> {
        let indexingIteratoer = IndexingIterator(_elements: data.lazy)
        return AnyIterator(indexingIteratoer)
        
    }
}


extension Dequeue: MutableCollection {
    
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
