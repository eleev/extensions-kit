//
//  UndoManager+Replace.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/02/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

public extension UndoManager {
    
    /// Recursively stores and restores the state of any `class` or `struct`
    func replace<T: Codable>(item oldItem: T, with newItem: T, title: String? = nil, handler: ((T) -> Void)?) {
        guard let oldItem = copy(item: oldItem) else { return }
        guard let newItem = copy(item: newItem) else { return }
        
        registerUndo(withTarget: self) {
            handler?(oldItem)
            $0.replace(item: newItem, with: oldItem, title: title, handler: handler)
        }
        guard let title = title else { return }
        setActionName(title)
    }
    
    private func copy<T: Codable>(item: T) -> T? {
        guard let data = try? JSONEncoder().encode(item) else { return nil }
        return try? JSONDecoder().decode(T.self, from: data)
    }
    
}
