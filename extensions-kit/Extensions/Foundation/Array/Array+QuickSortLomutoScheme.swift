//
//  Array+QuickSortLomutoScheme.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public static func quickSortLomuto(array: inout [Element], lowest: Int, highest: Int)  {
        if lowest < highest {
            let pivot = Array.partitionLomuto(array: &array, lowest: lowest, highest: highest)
            
            Array.quickSortLomuto(array: &array, lowest: lowest, highest: pivot - 1)
            Array.quickSortLomuto(array: &array, lowest: pivot + 1, highest: highest)
        } else {
            debugPrint(#function + " lowest param is bigger than highest: ", lowest, highest)
        }
    }
    
    private static func partitionLomuto(array: inout [Element], lowest: Int, highest: Int) -> Int {
        let pivot = array[highest]
        var i = lowest
        
        for j in lowest..<highest {
            if array[j] <= pivot {
                array.swapAt(i, j)
                i += 1
            }
        }
        
        array.swapAt(i, highest)
        return i
    }
    
}
