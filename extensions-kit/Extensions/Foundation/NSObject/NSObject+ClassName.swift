//
//  NSObject+ClassName.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 02/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

extension NSObject {
    
    /// Contains name of a class
    public class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
