//
//  OperationQueue+MainUtils.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

public extension OperationQueue {
    
    /// Checks whether the current queue is the main
    static var isMain: Bool {
        return main == current
    }
    
    /// Executes an operation on the main operation queue
    static func onMain(_ operation: @escaping () -> Void) {
        OperationQueue.main.addOperation(operation)
    }
}
