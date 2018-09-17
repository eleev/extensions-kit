//
//  Mutex.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 17/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Used to proptect shared resources. A mutex is owned by the task that takes it. In a given region of code only one thread is active
final public class Mutex: LockType {
    
    // MARK: - Properties
    
    private var mutex: pthread_mutex_t = {
        var mutex = pthread_mutex_t()
        pthread_mutex_init(&mutex, nil)
        return mutex
    }()
    
    // MARK: - Deinit
    
    deinit {
        destroy()
    }
    
    // MARK: - Conformance to LockType protocol
    
    public func lock() {
        pthread_mutex_lock(&mutex)
    }
    
    public func unlock() {
        pthread_mutex_unlock(&mutex)
    }
    
    // MARK: - Private methods
    
    private func destroy() {
        pthread_mutex_destroy(&mutex)
    }
}
