//
//  UICollectionView+Safety.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    /// Checks if the index path is valid
    ///
    /// - Parameter indexPath: is an IndexPath to check for
    /// - Returns: a boolean value that indicates whether the specified IndexPath is valid or not
    public func isValid(indexPath: IndexPath) -> Bool {
        return indexPath.section < numberOfSections && indexPath.row < numberOfItems(inSection: indexPath.section)
    }
}
