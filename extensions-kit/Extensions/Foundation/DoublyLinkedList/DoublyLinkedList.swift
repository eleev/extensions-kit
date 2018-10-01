//
//  DoublyLinkedList.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct DoublyLinkedList<T> {
    
    // MARK: - Fileprivate properties
    
    fileprivate var head: DoublyNode<T>?
    fileprivate var tail: DoublyNode<T>?
    fileprivate var current: DoublyNode<T>?
    
    fileprivate var _count: Int = 0
    
    // MARK: - Public properties
    
    public var count: Int {
        return _count
    }
    
    public var front: T? {
        return head?.data
    }
    
    public var back: T? {
        return tail?.data
    }
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    // MARK: - Initailizers
    
    public init() {
        head = nil
        tail = nil
        current = nil
    }
    
    public init<S: Sequence>(sequence: S) where S.Iterator.Element == T {
        for element in sequence {
            push(newTail: element)
        }
    }
    
    // MARK: - Methods
    
    public mutating func next() -> T? {
        current = current?.next
        return current?.data
    }
    
    public mutating func previous() -> T? {
        current = current?.previous
        return current?.data
    }
    
    public mutating func push(newHead element: T) {
        var node: DoublyNode<T>
        
        if count == 0 {
            node = DoublyNode<T>(data: element, next: nil, previous: nil)
            tail = node
        } else {
            node = DoublyNode<T>(data: element, next: head, previous: nil)
            head?.previous = node
        }
        
        head = node
        _count += 1
        
        if count == 1 {
            current = head
        } else if head === current {
            current = head?.next
        }
    }
    
    public mutating func push(newTail element: T) {
        var node: DoublyNode<T>
        
        if count == 0 {
            node = DoublyNode<T>(data: element, next: nil, previous: nil)
            head = node
        } else {
            node = DoublyNode<T>(data: element, next: nil, previous: tail)
            tail?.next = node
        }
        
        tail = node
        _count += 1
        
        if count == 1 {
            current = tail
        } else if tail === current {
            current = tail?.previous
        }
    }
    
    @discardableResult
    public mutating func removeHead() -> T? {
        if isEmpty { return nil }
        
        let element = head?.data
        head = head?.next
        _count -= 1
        
        return element
    }
    
    public mutating func removeTail() -> T? {
        if isEmpty { return nil }
        
        let element = tail?.data
        tail = tail?.previous
        _count -= 1
        return element
    }
    
    // MARK: - Private methods
    
    private mutating func reset() {
        head = nil
        tail = nil
        current = nil
    }
}

extension DoublyLinkedList: CustomStringConvertible, CustomDebugStringConvertible {
    
    // MARK: - Conformances to CustomStringConvertible & CustomDebugStringConvertible protocols
    
    public var description:String {
        return representation()
    }
    
    public var debugDescription:String {
        return representation()
    }
    
    // MARK: - Private methods
    
    private func representation() -> String {
        var output = "("
        var c = 0
        var x = head
        
        while nil !== x {
            output += "\(String(describing: x))"
            c += 1
            if c != count {
                output += ", "
            }
            x = x!.next
        }
        output += ")"
        return output
    }
}

extension DoublyLinkedList: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        for element in elements {
            push(newTail: element)
        }
    }
}

extension DoublyLinkedList: Sequence {
    
    public func makeIterator() -> AnyIterator<T> {
        var iterator = head
        
        return AnyIterator {
            defer { iterator = iterator?.next }
            return iterator?.data
        }
    }
    
}
