//
//  MulticastDelegation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public class MulticastDelegate<T> {
    
    // MARK: - Subscripts
    
    /// Convenience subscript for accessing delegate by index, returns nil if there is no object found
    public subscript(index: Int) -> T? {
        get {
            guard index > -1, index < delegates.count else {
                return nil
            }
            return delegates[index].value as? T
        }
    }
    
    /// Searches for the delegate and returns its index
    public subscript(delegate: T) -> Int? {
        get {
            guard let index = delegates.firstIndex(where: { $0.value  === delegate as AnyObject }) else {
                return nil
            }
            return index
        }
    }
    
    // MARK: - Properties
    
    private var delegates = [Weak]()
    
    // MARK: - Methods
    
    public func add(delegate: T) {
        delegates.append(Weak(delegate as AnyObject))
    }
    
    public func remove(delegate: T) {
        guard let index = self[delegate] else {
            return
        }
        delegates.remove(at: index)
    }
    
    func dispose(delegate: T) {
        if let index = self[delegate] {
            delegates[index].value = nil
        }
    }
    
    public func update(_ completion: @escaping(T) -> ()) {
        // Recycle the values that are nil so the completion closure is called for non nil values
        recycle()
        
        delegates.forEach { delegate in
            // Additional anti-nil check
            if let udelegate = delegate.value as? T {
                completion(udelegate)
            }
        }
    }
    
    // MARK: - Private
    
    private func recycle() {
        for (index, element) in delegates.enumerated().reversed() where element.value == nil {
            delegates.remove(at: index)
        }
    }
    
    private final class Weak {
        
        // MARK: - Properties
        
        weak var value: AnyObject?
        
        // MARK: - Initializers
        
        init(_ value: AnyObject) {
            self.value = value
        }
    }
}

// MARK: - Extension that adds custom operators for the MulticastDelegate class. The motivation behind this extension is to provide Swity-like API interface e.g.
//
// Adding new delegate:
// model.delegates += viewControllerDelegate
//
// Removes the specified delegate:
// model.delegate -= viewControllerDelegate
//
// Adds an update closure outside of the delegate caller side and notify all the delegates:
// model.delegate ~> { delegate in
//      delegate.saveModel()
// }
extension MulticastDelegate {
    static func +=(lhs: MulticastDelegate, rhs: T) {
        lhs.add(delegate: rhs)
    }
    
    static func +=(lhs: MulticastDelegate, rhs: [T]) {
        rhs.forEach { lhs.add(delegate: $0) }
    }
    
    static func -=(lhs: MulticastDelegate, rhs: T) {
        lhs.remove(delegate: rhs)
    }
    
    static func -=(lhs: MulticastDelegate, rhs: [T]) {
        rhs.forEach { lhs.remove(delegate: $0) }
    }
    
    static func ~>(lhs: MulticastDelegate, rhs: @escaping (T) -> ()) {
        lhs.update(rhs)
    }
    
    static func ~>(lhs: MulticastDelegate, rhs: [(T) -> ()]) {
        rhs.forEach { lhs.update($0) }
    }
}

extension MulticastDelegate: Sequence {
    
    public func makeIterator() -> AnyIterator<T>{
        var iterator = delegates.makeIterator()
        
        return AnyIterator {
            while let next = iterator.next() {
                if let value = next.value as? T {
                    return value
                }
            }
            return nil
        }
    }
}
