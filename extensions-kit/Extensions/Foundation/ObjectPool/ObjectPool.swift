//
//  ObjectPool.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

class ObjectPool<T: ObjectPoolItem> {
    
    // MARK: - States
    
    /// Determines the condition of the pool
    ///
    /// - drained: Empty state, meaning that there is nothing to dequeue from the pool.
    /// - deflated: Consumed state, meaning that some items were dequeued from the pool
    /// - full: Filled state, meaning that the full capacity of the pool is used
    /// - undefined: Intermediate state, rarely occurs when many threads modify the pool at the same time
    ///
    /// - size represents current number of elements that can stored in the pool
    enum PoolState {
        case drained(size: Int)
        case deflated(size: Int)
        case full(size: Int)
        case undefined
    }
    
    /// Defines the states of a pool's item. The state is determined by the pool
    ///
    /// - reused: Item is eligable to be reused by the pool
    /// - rejected: Item cannot be reused by the pool since the reuse policy returned rejection
    enum ItemState {
        case reused
        case rejected
    }
    
    // MARK: - Properties
    
    private var objects = [T]()
    private var semaphore: DispatchSemaphore
    private var queue = DispatchQueue(label: "objectPool.concurrentQueue", attributes: .concurrent)
    
    private var size: Int = 0
    
    var state: PoolState {
        var state: PoolState = .undefined
        let currentSize = objects.count
        
        if objects.isEmpty {
            state = .drained(size: size)
        } else if currentSize == size {
            state = .full(size: size)
        } else if currentSize < size, !objects.isEmpty {
            state = .deflated(size: currentSize)
        }
        return state
    }
    
    // MARK: - Initializers
    
    init(objects: [T]) {
        self.objects.reserveCapacity(objects.count)
        semaphore = DispatchSemaphore(value: objects.count)
        
        self.objects += objects
        size = objects.count
    }
    
    convenience init(objects: T...) {
        self.init(objects: objects)
    }
    
    deinit {
        for _ in 0..<objects.count {
            semaphore.signal()
        }
    }
    
    // MARK: - Methods
    
    func enqueue(object: T, shouldResetState: Bool = true, completion: ((ItemState)->())? = nil) {
        queue.sync(flags: .barrier) {
            var itemState: ItemState = .rejected
            
            if object.canReuse, objects.count < size {
                if shouldResetState {
                    // Reset the object state before returning it to the pool, so there will not be ambiguity when reusing familiar object but getting a different  behavior  because some other resource changed the object's state before
                    object.reset()
                }
                
                self.objects.append(object)
                self.semaphore.signal()
                
                itemState = .reused
            }
            completion?(itemState)
        }
    }
    
    func dequeue() -> T? {
        var result: T?
        
        if semaphore.wait(timeout: .distantFuture) == .success {
            queue.sync(flags: .barrier) {
                result = objects.removeFirst()
            }
        }
        return result
    }
    
    func dequeueAll() -> [T] {
        var result = [T]()
        
        if semaphore.wait(timeout: .distantFuture) == .success {
            queue.sync(flags: .barrier) {
                result = Array(objects)
                // Remove all, but keep capacity
                objects.removeAll(keepingCapacity: true)
            }
        }
        return result
    }
    
    /// Removes all the items from the pool but preserves the pool's size
    func eraseAll() {
        if semaphore.wait(timeout: .distantFuture) == .success {
            queue.sync(flags: .barrier) {
                // Remove all, but keep capacity
                objects.removeAll(keepingCapacity: true)
            }
        }
    }
    
    /// TODO: The following method needs to be tested, otherwise there might be some issues
    
    /// Reserves space for the specified number of elements
    //    func reserveSize(by number: Int) {
    //        queue.sync(flags: .barrier) {
    //            objects.reserveCapacity(objects.capacity + number)
    //            size += number
    //        }
    //    }
}
