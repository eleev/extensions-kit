//
//  LinkedList.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public struct LinkedList<T> {
    
    // MARK: - Private properties
    
    fileprivate var head: Node<T>?
    fileprivate var _count: Int = 0
    
    // MARK: - Public properties
    
    public var count: Int {
        return _count
    }
    
    // MARK: - Initializers
    
    public init() {
        head = nil
    }
    
    public init<S: Sequence>(sequence: S) where S.Iterator.Element == T {
        for element in sequence {
            push(element: element)
        }
    }
    
    // MARK: - API Methods
    
    public mutating func push(element: T) {
        let node = Node<T>(data: element)
        node.next = head
        head = node
        _count += 1
    }
    
    public mutating func pop() -> T? {
        if isEmpty() { return nil }
        
        let element = head?.data
        head = head?.next
        _count -= 1
        
        return element
    }
    
    public func peek() -> T? {
        return head?.data
    }
    
    public func isEmpty() -> Bool {
        return _count == 0
    }
    
}

/// Node class represents a generic node element that is used to construct resursuve linked list
private class Node<T> {
    fileprivate var next: Node<T>?
    fileprivate var data: T
    
    init(data: T) {
        next = nil
        self.data = data
    }
}

// MARK: - Conformance to CusomStringConvertable and CustomDebugStringConvertable protocols
extension LinkedList: CustomStringConvertible, CustomDebugStringConvertible {
    
    // MARK: - Conformance to the protocols
    
    public var description: String {
        return composeDescription()
    }
    
    public var debugDescription: String {
        return composeDescription()
    }
    
    // MARK: - Utliity mehtods
    
    private func composeDescription() -> String {
        var description = "["
        var lastNode = head
        
        while lastNode != nil {
            description += "\(String(describing: lastNode?.data))"
            lastNode = lastNode?.next
            
            if lastNode != nil {
                description += ","
            }
        }
        description += "]"
        
        return description
    }
    
}


// MARK: - Conformance to ExpressibleByArrayLiteral protocol that allows to treat the LinkedList as an array when initializing it
extension LinkedList: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements: T...) {
        for element in elements {
            push(element: element)
        }
    }
}

/// Custom generic struct that conforms to IteratorProtocol. The structure receives an instnace of head during initialization pohase that allows us to iterate through the elements in the linked ilst.
public struct LinkedListIterator<T>: IteratorProtocol {
    
    // MARK: - Properties
    
    public typealias Element = T
    private var head: Node<Element>?
    
    // MARK: - Initializers
    
    fileprivate init(head: Node<T>?) {
        self.head = head
    }
    
    // MARK: - Conformacne to the protocol
    
    public mutating func next() -> T? {
        guard let uHead = head else { return nil }
        let item = uHead.data
        head = uHead.next
        return item
    }
}

// MARK: - Conformance to
extension LinkedList: Sequence {
    public typealias Iterator = LinkedListIterator<T>
    
    public func makeIterator() -> LinkedListIterator<T> {
        return LinkedListIterator<T>(head: head)
    }
}
