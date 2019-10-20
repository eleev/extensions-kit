//
//  Subject.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

class Subject {
    
    // MARK: - Inner classes
    
    private final class WeakObserver {
        
        // MARK: - Properties
        
        weak var value: Observer?
        
        // MARK: - Initializers
        
        init(_ value: Observer) {
            self.value = value
        }
    }
    
    // MARK: - Properties
    
    private var observers = [WeakObserver]()
    private var queue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
    
    // MARK: - Subscripts
    
    /// Convenience subscript for accessing observers by index, returns nil if there is no object found
    public subscript(index: Int) -> Observer? {
        get {
            guard index > -1, index < observers.count else {
                return nil
            }
            return observers[index].value
        }
    }
    
    /// Searches for the observer and returns its index
    public subscript(observer: Observer) -> Int? {
        get {
            guard let index = observers.firstIndex(where: { $0.value === observer }) else {
                return nil
            }
            return index
        }
    }
    
    // MARK: - Methods
    
    func add(observer: Observer) {
        // .barrier flag ensures that within the queue all reading is done before the below writing is performed and pending readings start after below writing is performed
        queue.sync(flags: .barrier) {
            self.observers.append(WeakObserver(observer))
        }
    }
    
    /// Removes an Observer. The difference between dispose(observer:) and this method is that this method immediately removes an observer.
    ///
    /// - Parameter observer: is an Observer to be removed immediately
    func remove(observer: Observer) {
        queue.sync(flags: .barrier) {
            guard let index = self[observer] else {
                return
            }
            self.observers.remove(at: index)
        }
    }
    
    /// Sends notification to all the Observers. The method is executed synchronously.
    ///
    /// - Parameter notification: is a type that conforms to Notification protocol
    func send(notification: Notification) {
        queue.sync {
            recycle()
            
            for observer in observers {
                observer.value?.notify(with: notification)
            }
        }
    }
    
    /// Disposes an observer. The difference between remove(observer:) and this method is that this method delays observer removal until the recycle method will be called (the next time when a new Notification is sent)
    ///
    /// - Parameter observer: is an Observer to be disposed
    func dispose(observer: Observer) {
        queue.sync(flags: .barrier) {
            if let index = self[observer] {
                observers[index].value = nil
            }
        }
    }
    
    // MARK: - Private
    
    private func recycle() {
        for (index, element) in observers.enumerated().reversed() where element.value == nil {
            observers.remove(at: index)
        }
    }
    
}

// Removal of Observer
infix operator --=

// Disposal of Observer
infix operator -=

extension Subject {
    static func +=(lhs: Subject, rhs: Observer) {
        lhs.add(observer: rhs)
    }
    
    static func +=(lhs: Subject, rhs: [Observer]) {
        rhs.forEach { lhs.add(observer: $0) }
    }
    
    static func --=(lhs: Subject, rhs: Observer) {
        lhs.remove(observer: rhs)
    }
    
    static func --=(lhs: Subject, rhs: [Observer]) {
        rhs.forEach { lhs.remove(observer: $0) }
    }
    
    static func -=(lhs: Subject, rhs: Observer) {
        lhs.dispose(observer: rhs)
    }
    
    static func -=(lhs: Subject, rhs: [Observer]) {
        rhs.forEach { lhs.dispose(observer: $0) }
    }
    
    static func ~>(lhs: Subject, rhs: Notification) {
        lhs.send(notification: rhs)
    }
    
    static func ~>(lhs: Subject, rhs: [Notification]) {
        rhs.forEach { lhs.send(notification: $0) }
    }
    
}
