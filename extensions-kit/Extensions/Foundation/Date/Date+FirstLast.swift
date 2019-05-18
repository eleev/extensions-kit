//
//  Date+FirstLast.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/09/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Date {
    
    public var firstDayOfWeek: Date {
        var beginningOfWeek = Date()
        var interval = TimeInterval()
        
        _ = Calendar.current.dateInterval(of: .weekOfYear, start: &beginningOfWeek, interval: &interval, for: self)
        return beginningOfWeek
    }
    
    public var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
    
    public var endOfDay: Date {
        let cal = Calendar.current
        var components = DateComponents()
        components.day = 1
        return cal.date(byAdding: components, to: self.startOfDay)!.addingTimeInterval(-1)
    }
    
    public var numberOfDaysInMonth: Int {
        let calendar = Calendar.current
        let dayRange = (calendar as NSCalendar).range(of: NSCalendar.Unit.day, in: NSCalendar.Unit.month, for: self)
        
        return dayRange.length
    }
}
