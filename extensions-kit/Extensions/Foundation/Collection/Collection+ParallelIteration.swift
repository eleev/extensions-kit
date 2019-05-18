//
//  Collection+ParallelIteration.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Collection {
    
    public func parallelForEach(_ each: (Self.Iterator.Element) -> Void) {
        let indicesArray = Array(indices)
        
        DispatchQueue.concurrentPerform(iterations: indicesArray.count) { (index) in
            let elementIndex = indicesArray[index]
            each(self[elementIndex])
        }
    }
}
