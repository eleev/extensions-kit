//
//  PriorityQueue.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Implementation of Priority Queue based on Heap data structure.
public struct PriorityQueue<T> where T: Comparable {
    
    // MARK: - Propertioes
    
    fileprivate var heap: Heap<T>
    
    // MARK: - Initializers
    
    public init(order: @escaping (T, T) -> Bool) {
        heap = Heap(order: order)
    }
    
    public init(elements: [T], order: @escaping (T, T) -> Bool) {
        heap = Heap(array: elements, order: order)
    }
    
    // MARK: - Methods
    
    public func isEmpty() -> Bool {
        return heap.isEmpty
    }
    
    public func count() -> Int {
        return heap.count
    }
    
    public func peek() -> T? {
        return heap.peek()
    }
    
    public mutating func enqueue(_ element: T) {
        heap.insert(node: element)
    }
    
    public mutating func dequeue() -> T? {
        return heap.remove()
    }
    
    public mutating func changePriority(index i: Int, value: T) {
        return heap.replace(elementAt: i, with: value)
    }
}

extension PriorityQueue where T: Equatable {
    
    // MARK: - Methods
    
    public func index(of element: T) -> Int? {
        return heap.index(of: element)
    }
}

extension PriorityQueue: ExpressibleByArrayLiteral {
    
    // MARK: - Initializers
    
    public init(arrayLiteral elements: T...) {
        self.init(elements: elements, order: >)
    }
}

extension PriorityQueue: CustomStringConvertible, CustomDebugStringConvertible {
    
    // MARK: - Properties
    
    public var description: String {
        return heap.description
    }
    
    public var debugDescription: String {
        return heap.debugDescription
    }
    
}

