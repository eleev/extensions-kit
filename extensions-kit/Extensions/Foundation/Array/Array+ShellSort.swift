//
//  Array+ShellSort.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    // Shell sort is an improved version of insertion sort. The original list is broken into smaller sublists and then individually sorted using insertion sort.
    public mutating func shellSorted(order sign: (Element, Element) -> Bool) {
        var subcount = self.count / 2
        
        while subcount > 0 {
            for i in 0..<self.count {
                let temp = self[i]
                var j = i
                
                while j >= subcount && sign(self[j - subcount], temp) {
                    self[j] = self[j - subcount]
                    j -= subcount
                }
                self[j] = temp
            }
            subcount /= 2
        }
        
    }
}
