//
//  Double+CurrencyShortcuts.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 27/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Double {
    
    public var usd: String? {
        return formatter(for: "en_US_POSIX")
    }
    
    public var ruble: String? {
        return formatter(for: "ru_RU")
    }
    
    // MARK: - Private methods
    
    private func formatter(for identifier: String) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: identifier)
        
        let number = NSNumber(value: self)
        return formatter.string(from: number)
    }
}
