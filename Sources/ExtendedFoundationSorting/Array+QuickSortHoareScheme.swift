//
//  Array+QuickSortHoareScheme.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Array where Element: Comparable {
    
    static func quickSortHoare(array: inout [Element], lowest: Int, highest: Int) {
        
        if lowest < highest {
            let pivot = Array.partitionHoare(array: &array, lowest: lowest, highest: highest)
            
            Array.quickSortHoare(array: &array, lowest: lowest, highest: pivot)
            Array.quickSortHoare(array: &array, lowest: pivot + 1, highest: highest)
        } else {
            debugPrint(#function + " lowest param is bigger than highest: ", lowest, highest)
        }
    }
    
    private static func partitionHoare(array: inout [Element], lowest: Int, highest: Int) -> Int {
        let pivot = array[lowest]
        var i = lowest - 1
        var j = highest + 1
        
        while true {
            i += 1
            
            while array[i] < pivot { i += 1 }
            j -= 1
            
            while array[j] > pivot {j -= 1 }
            if i >= j { return j }
            
            array.swapAt(i, j)
        }
    }
    
}
