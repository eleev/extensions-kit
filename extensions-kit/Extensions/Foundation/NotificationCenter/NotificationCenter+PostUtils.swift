//
//  NotificationCenter+PostUtils.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 11/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

extension NotificationCenter {
    
    /// Posts a notification by using the `default` notification center
    public static func post(notification name: Foundation.Notification.Name, object: Any? = nil) {
        NotificationCenter.default.post(name: name, object: object)
    }
}
