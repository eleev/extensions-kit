//
//  DispatchQueue+AsyncAfter.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    
    public func asyncAfter(seconds: Double, execute closure: @escaping () -> ()) {
        let deadline: DispatchTime = DispatchTime.now() + Double(Int64(seconds * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        self.asyncAfter(deadline: deadline, execute: closure)
    }
}
