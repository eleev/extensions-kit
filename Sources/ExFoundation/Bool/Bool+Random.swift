//
//  Bool+Random.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Bool {
    
    public static var random: Bool {
        return arc4random_uniform(2) == 1
    }
}
