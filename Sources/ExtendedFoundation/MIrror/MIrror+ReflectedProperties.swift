//
//  Mirror+ReflectedProperties.swift
//  ExtendedFoundation
//
//  Created by Astemir Eleev on 23/02/2020.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//
import Foundation

extension Mirror {
    static func reflectProperties<T>(of target: Any,
                                     matchingType type: T.Type = T.self,
                                     recursively: Bool = false,
                                     using closure: (T) -> Void) {
        let mirror = Mirror(reflecting: target)
        
        for child in mirror.children {
            (child.value as? T).map(closure)
            
            guard recursively else { continue }
            Mirror.reflectProperties(of: child.value,
                                     recursively: true,
                                     using: closure)
        }
    }
}
