//
//  Debouncer.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Allows an action to be performed after a delay
public final class Debouncer {
    
    // MARK: - Properties
    
    private let delay: TimeInterval
    private var workItem: DispatchWorkItem?
    
    // MARK: - Initializers
    
    init(delay: TimeInterval) {
        self.delay = delay
    }
    
    // MARK: - Methods
    
    /// Trigger the action after some delay
    
    /// Action triggerer after the specified delay
    func schedule(action: @escaping () -> Void) {
        workItem?.cancel()
        workItem = DispatchWorkItem(block: action)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: workItem!)
    }
}
