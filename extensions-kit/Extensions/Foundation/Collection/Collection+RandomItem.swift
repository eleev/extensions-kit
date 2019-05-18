//
//  Collection+RandomItem.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Collection where Index == Int {
    
    public var randomItem: Element? {
        guard !isEmpty else { return nil }
        
        let index = Int(arc4random_uniform(UInt32(count)))
        return self[index]
    }
}
