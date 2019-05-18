//
//  UICollectionView+Operations.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 04/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    // MARK: - Typealiases
    
    public typealias UICollectionViewCompletion = (Bool) -> ()
    
    // MARK: - Methods
    
    /// Deletes items from the collection view in the specified section
    public func delete(indices: [Int], in section: Int = 0, completion: @escaping UICollectionViewCompletion = { _ in  }) {
        guard !indices.isEmpty else { return }
        
        let indexPaths = indices.map { IndexPath(row: $0, section: section) }
        performBatchUpdates({ self.deleteItems(at: indexPaths) }, completion: completion)
    }
    
    /// Inserts new items to the collection view to the specified section
    public func insert(indices: [Int], in section: Int = 0, completion: @escaping UICollectionViewCompletion = { _ in }) {
        guard !indices.isEmpty else { return }
        
        let indexPaths = indices.map { IndexPath(row: $0, section: section) }
        performBatchUpdates({ self.insertItems(at: indexPaths) } , completion: completion)
    }
    
    /// Reloads items in the collection view
    public func reload(indices: [Int], in section: Int = 0, completion: @escaping UICollectionViewCompletion = { _ in }) {
        guard !indices.isEmpty else { return }
        
        let indexPaths = indices.map { IndexPath(row: $0, section: section) }
        performBatchUpdates({ self.reloadItems(at: indexPaths) } , completion: completion)
    }
}
