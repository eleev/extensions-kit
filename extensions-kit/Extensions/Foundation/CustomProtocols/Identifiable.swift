//
//  Identifiable.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Identifiable protocol supposed to be used with types that need identification, such as UITableViewCell, UITableViewHeaderFooterView, UICollectionReusableView etc.
/// The current implementation does not add the protocol extension for the aforementioned types, since it's up to you, the developer to decide which types should receive such functionality.
public protocol Identifiable {
    static var reuseIdentifier: String { get }
}

extension Identifiable {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
