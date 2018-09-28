//
//  Observer.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

protocol Observer: class {
    func notify(with notification: Notification)
}
