//
//  ObservableArray.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 04/03/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Syncronous, thread-safe observable array type.
public class ObservableArray<T: Equatable>: ExpressibleByArrayLiteral {
    
    // MARK: - Enum types
    
    /// Describes a concrete operation that happened to the underlying collection
    ///
    /// - addition: an element of type `T` was added
    /// - addition: a collection of elements of type `T` was added
    /// - removal: an element of type `T` was removed for the specified index
    public enum Operation {
        case addition(element: T)
        case additions(elements: [T])
        case removal(element: T, index: Int)
    }
    
    // MARK: - Typealiases
    
    public typealias Change = (Operation) -> Void
    
    // MARK: - Private properties
    
    /// The base data source
    private(set) lazy var data: [T] = []
    private var accumulatedOperations: [Operation] = []
    private var queue = DispatchQueue(label: "observable.collection")
    
    // MARK: - Observer properties
    
    /// Notifies about all the changes that happend after the observer closure was set. Does not notify about the changes the were made to the array before the closure was set.
    public var recentChanges: Change? = nil
    
    /// Notifies about all the changes that happened to the array, even before the closure was set.
    public var allChanges: Change? {
        didSet {
            queue.sync {
                self.accumulatedOperations.forEach { self.allChanges?($0) }
                self.accumulatedOperations.removeAll()
            }
        }
    }
    
    public var trackChangesHistory: Bool = true
    
    // MARK: - Initialisers
    
    public init<S: Sequence>(sequence: S) where S.Iterator.Element == T {
        data.append(contentsOf: sequence)
    }
    
    public required convenience init(arrayLiteral elements: T...) {
        self.init(sequence: elements)
    }
    
    // MARK: - Methods
    
    public func append(element: T) {
        queue.sync {
            self.data += [element]
            let change: Operation = .addition(element: element)
            self.commit(change)
        }
    }
    
    public func append(elements: [T]) {
        queue.sync {
            self.data.append(contentsOf: elements)
            let change: Operation = .additions(elements: elements)
            self.commit(change)
        }
    }
    
    public func remove(at index: Int) {
        queue.sync {
            let element = self.data.remove(at: index)
            let change: Operation = .removal(element: element, index: index)
            self.commit(change)
        }
    }

    func removeFirst() {
        queue.sync {
            let first = self.data.removeFirst()
            let change: Operation = .removal(element: first, index: 0)
            self.commit(change)
        }
    }
    
    public func removeLast() {
        queue.sync {
            let last = self.data.removeLast()
            let change: Operation = .removal(element: last, index: self.data.count)
            self.commit(change)
        }
    }
  
    // MARK: - Private methods
    
    private func commit(_ change: Operation) {
        recentChanges?(change)
        if trackChangesHistory { accumulatedOperations += [change] }
        allChanges?(change)
    }
}

public extension ObservableArray {
    
    static func +(lhs: ObservableArray, rhs: ObservableArray) -> ObservableArray {
        lhs.append(elements: rhs.data)
        return lhs
    }
    
    static func +=(lhs: ObservableArray, rhs: T) {
        lhs.append(element: rhs)
    }
    
    static func +(lhs: ObservableArray, rhs: [T]) -> ObservableArray {
        lhs.append(elements: rhs)
        return lhs
    }
    
    static func +=(lhs: ObservableArray, rhs: [T]) {
        lhs.append(elements: rhs)
    }
}

extension ObservableArray.Operation: Equatable {
    
    public static func ==(lhs: ObservableArray.Operation, rhs: ObservableArray.Operation) -> Bool {
        switch (lhs, rhs) {
        case (let .addition(lhsElement), let .addition(rhsElement)):
            return lhsElement == rhsElement
        case (let .additions(lhsElements), let .additions(rhsElements)):
            return lhsElements == rhsElements
            case (let .removal(lhsElement, lhsIndex), let .removal(rhsElement, rhsIndex)):
            return lhsElement == rhsElement && lhsIndex == rhsIndex
        default:
            return false
        }
    }
}
