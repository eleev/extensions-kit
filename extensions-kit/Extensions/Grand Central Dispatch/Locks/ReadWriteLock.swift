//
//  ReadWriteLock.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 17/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// A synchronization primitive that solves one of the readers–writers problems. An RW lock allows concurrent access for read-only operations, while write operations require exclusive access. This means that multiple threads can read the data in parallel but an exclusive lock is needed for writing or modifying data.
final public class ReadWriteLock {
    
    // MARK: - Properties
    
    private var rwLock: pthread_rwlock_t = {
        var rwLock = pthread_rwlock_t()
        pthread_rwlock_init(&rwLock, nil)
        return rwLock
    }()
    
    // MARK: - Deinit
    
    deinit {
        destroy()
    }
    
    // MARK: - Methods
    
    func readLock() {
        pthread_rwlock_rdlock(&rwLock)
    }
    
    func tryReadLock() {
        pthread_rwlock_tryrdlock(&rwLock)
    }
    
    func writeLock() {
        pthread_rwlock_wrlock(&rwLock)
    }
    
    func tryWriteLock() {
        pthread_rwlock_trywrlock(&rwLock)
    }
    
    // MARK: - Private methods
    private func destroy() {
        pthread_rwlock_destroy(&rwLock)
    }
    
    func unlock() {
        pthread_rwlock_unlock(&rwLock)
    }
}
