//
//  Then.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Protocol for object configuration
/// https://github.com/JetBrains/kotlin/blob/master/libraries/stdlib/src/kotlin/util/Standard.kt
///
/// For instnace you can extend a type and be able to repeadadly call `then` in order to configure it. It's a "sort of" Builder design pattern, but more modern reincarnation.
///
/// Example:
/// var imageView = UIImageView().then {
///     $0.layer.cornerRadius = 10
///     $0.contentMode = .scaleAspectFill
///     $0.clipsToBounds = true
/// }
///
public protocol Then { /* empty implementation */ }

extension Then {
    public func then(configure: (Self) -> Void) -> Self {
        configure(self)
        return self
    }
}
