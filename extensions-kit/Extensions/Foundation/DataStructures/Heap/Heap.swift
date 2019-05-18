//
//  Heap.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct Heap<T> where T: Comparable {
    
    // MARK: - Constants
    
    private let zero = 0
    
    // MARK: - Properties
    
    var nodes = [T]()
    
    public var isEmpty: Bool {
        return nodes.isEmpty
    }
    
    public var count: Int {
        return nodes.count
    }
    
    // MARK: - Private properties
    
    fileprivate var order: (T, T) -> Bool
    
    // MARK: - Initializers
    
    public init(order: @escaping (T, T) -> Bool) {
        self.order = order
    }
    
    public init(array: [T], order: @escaping (T, T) -> Bool) {
        self.order = order
        setup(using: array)
    }
    
    // MARK: - Methods
    
    public func peek() -> T? {
        return nodes.first
    }
    
    public mutating func insert(node: T) {
        nodes.append(node)
        shiftUp(count - 1)
    }
    
    public mutating func insert<S: Sequence>(_ sequence: S) where S.Iterator.Element == T {
        sequence.forEach { element in
            insert(node: element)
        }
    }
    
    public mutating func replace(elementAt index: Int, with value: T) {
        guard index < nodes.count else { return }
        remove(at: index)
        insert(node: value)
    }
    
    @discardableResult public mutating func remove() -> T? {
        guard !nodes.isEmpty else { return nil }
        
        switch nodes.count {
        case 1:
            return nodes.removeLast()
        default:
            let value = nodes[zero]
            nodes[zero] = nodes.removeLast()
            shiftDown(zero)
            return value
        }
    }
    
    @discardableResult public mutating func remove(at index: Int) -> T? {
        guard index < nodes.count else { return nil }
        let size = count - 1
        
        if index != size {
            nodes.swapAt(index, size)
            shiftDown(from: index, until: size)
            shiftUp(index)
        }
        return nodes.removeLast()
    }
    
    // MARK: - Shifting
    
    internal mutating func shiftDown(from startIndex: Int, until endIndex: Int) {
        let leftChildIndex = self.leftChildIndex(of: startIndex)
        let rightChildIndex = leftChildIndex + 1
        var first = startIndex
        
        if leftChildIndex < endIndex && order(nodes[leftChildIndex], nodes[first]) {
            first = leftChildIndex
        }
        if rightChildIndex < endIndex && order(nodes[rightChildIndex], nodes[first]) {
            first = rightChildIndex
        }
        if first == startIndex { return }
        
        nodes.swapAt(startIndex, first)
        shiftDown(from: first, until: endIndex)
    }
    
    internal mutating func shiftDown(_ index: Int) {
        shiftDown(from: index, until: count)
    }
    
    internal mutating func shiftUp(_ index: Int) {
        var childIndex = index
        let child = nodes[childIndex]
        var parentIndex = self.parentIndex(of: childIndex)
        
        while childIndex > 0 && order(child, nodes[parentIndex]) {
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }
        nodes[childIndex] = child
    }
    
    // MARK: - Child indicies
    
    @inline(__always) internal func rightChildIndex(of index: Int) -> Int {
        return 2 * index + 2
    }
    
    @inline(__always) internal func leftChildIndex(of index: Int) -> Int {
        return 2 * index + 1
    }
    
    @inline(__always) internal func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }
    
    // MARK: - Private helpers
    
    private mutating func setup(using nodesArray: [T]) {
        self.nodes = nodesArray
        let strideCondition = stride(from: (count / 2 - 1), through: 0, by: -1)
        
        for index in strideCondition {
            shiftDown(index)
        }
    }
    
}

extension Heap: CustomStringConvertible, CustomDebugStringConvertible {
    
    // MARK: - Properties
    
    public var description: String {
        return nodes.description
    }
    
    public var debugDescription: String {
        return prettyPrint()
    }
    
    // MARK: - Helpers
    
    private func prettyPrint() -> String {
        var out = String()
        var iterator = 2
        
        var copy = Array(nodes)
        var counter = copy.count
        
        while counter > 0, copy.count > 0 {
            if counter == nodes.count {
                // remove the first element only
                out += "{ \(copy.removeFirst()) "
                counter -= 1
                
            } else {
                out += "{ "
                var temp = iterator
                
                while temp > 0, copy.count > 0 {
                    out += "\(copy.removeFirst()) "
                    temp -= 1
                }
                
                counter -= iterator
                iterator = iterator * 2
            }
            out += "} \n"
        }
        
        return out
    }
    
}

extension Heap: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        self.init(array: elements, order: >)
    }
}

extension Heap: Sequence {
    
    public func makeIterator() -> AnyIterator<T> {
        let idexedIterator = IndexingIterator(_elements: self.nodes.lazy.reversed())
        return AnyIterator(idexedIterator)
    }
}

// MARK: - Heap Sort. Should be decomposed into separete file for sorting algorithms.
// - Note that it is very similar to Selection sort approach.
// - Complexity of the sorting algorithms is O(n log n) in best, worst and average cases. The heap is traversed once (which is a list and is O(n)) and then every time the elements are swapped, a shift down operation is performed which is O(log n). As a result we have O(n log n) coomplexity.
extension Heap {
    func sorted() -> [T] {
        var heap = Heap(array: nodes, order: order)
        
        for index in self.nodes.indices.reversed() {
            heap.nodes.swapAt(0, index)
            heap.shiftDown(from: 0, until: index)
        }
        return heap.nodes
    }
}


//  MARK: - Searching
extension Heap where T: Equatable {
    
    /// Gets the index of a node from the Heap
    ///
    /// - Parameter node: is a Node of type T that is going to be searched
    /// - Returns: is an index in Heap array
    public func index(of node: T) -> Int? {
        return nodes.firstIndex(where: { $0 == node })
    }
}
