//
//  Badge.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Allows to easily manage the UIApplication icon badge number status
public struct Badge {
    
    private static let sharedApplication = UIApplication.shared
    
    public static var number: Int {
        set {
            sharedApplication.applicationIconBadgeNumber = newValue
        }
        get {
            return sharedApplication.applicationIconBadgeNumber
        }
    }
    
    public static func reset() {
        sharedApplication.applicationIconBadgeNumber = 0
    }
}
#endif
