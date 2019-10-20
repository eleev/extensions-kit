//
//  UICollectionView+ScrollingUtils.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    /// Scrolls to the bottom of the UICollectionView
    ///
    /// - Parameters:
    ///     - animated: is a boolean parameter indicating whether the scrolling should be performed with animation
    public func scrollToBottom(animated: Bool = true) {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height)
        setContentOffset(bottomOffset, animated: animated)
    }
    
    /// Scrolls to the top of the UICollectionView
    ///
    /// - Parameters:
    ///     - animated: is a boolean parameter indicating wherher the scrolling should be performed with animation
    public func scrollToTop(animated: Bool = true) {
        setContentOffset(.zero, animated: animated)
    }
    
    /// Wrapper that safely scrolls to the speficied index path
    ///
    /// - Parameters:
    ///     - indexPath: is an IndexPath type that specifies the target scrolling position
    ///     - scrollPosition: is the target scroll position of the specified index path
    ///     - animated: is a boolean value indicating whether the scrolling should be animated or not
    public func safeScrollingToCell(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool = true) {
        guard indexPath.section < numberOfSections, indexPath.row < numberOfItems(inSection: indexPath.section) else { return }
        scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
    }
}


