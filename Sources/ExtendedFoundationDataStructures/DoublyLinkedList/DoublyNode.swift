//
//  DoublyNode.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

class DoublyNode<T>: CustomStringConvertible, CustomDebugStringConvertible {
    
    // MARK: - Conformances to CustomStringConvertible & CustomDebugStringConvertible protocols
    
    var description: String {
        return representation()
    }
    
    var debugDescription: String {
        return representation()
    }
    
    private func representation() -> String {
        return "\(String(describing: data))"
    }
    
    // MARK: - Properties
    
    var next: DoublyNode<T>?
    var data: T
    var previous: DoublyNode<T>?
    
    // MARK: - Initailziers
    
    init(data: T, next: DoublyNode<T>?, previous: DoublyNode<T>?) {
        self.data = data
        self.next = next
        self.previous = previous
    }
}
