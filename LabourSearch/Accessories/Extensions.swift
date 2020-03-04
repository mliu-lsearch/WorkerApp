//
//  Extensions.swift
//  LabourSearch
//
//  Created by LIN LIU on 13/12/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import Foundation

extension Date {
    
    func getDaysInMonthFC() -> Int{
        let calendar = Calendar.current
        
        let dateComponents = DateComponents(year: calendar.component(.year, from: self), month: calendar.component(.month, from: self))
        let date = calendar.date(from: dateComponents)!
        
        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count
        
        return numDays
    }
    
    func addMonthFC(month: Int) -> Date {
        return Calendar.current.date(byAdding: .month, value: month, to: self)!
    }
    
    func startOfMonthFC() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))!
    }
    
    func endOfMonthFC() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonthFC())!
    }
    
    func getDayOfWeekFC() -> Int? {
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: self)
        return weekDay
    }
    
    func getHeaderMonthTitleFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: self)
    }
    
    func getHeaderMonthTitleInNumberFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        return dateFormatter.string(from: self)
    }
    
    func getHeaderYearTitleFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY"
        return dateFormatter.string(from: self)
    }
    
    //M: showing today's date
    func getDayFC(day: Int) -> Date {
        let day = Calendar.current.date(byAdding: .day, value: day, to: self)!
        return Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: day)!
    }
    
     
    
    func getYearOnlyFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY"
        return dateFormatter.string(from: self)
    }
    
    func getTitleDateFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMM dd"
        return dateFormatter.string(from: self)
    }
    
    func getJustDateFC() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: self)
    }
    
    func getDateInNumberFC(number : String) -> String {
        if number.count != 2{
              return "0" + number
        }
        return number
    }
    
    func getWeekDay(number : Int) -> String {
        var weekDay = ""
        if number == 0{
            weekDay = "Sunday"
            return weekDay
        }
        else if number == 1{
            weekDay = "Monday"
            return weekDay
        }
        else if number == 2{
            weekDay = "Tuedays"
            return weekDay
        }
        else if number == 3{
            weekDay = "Wednesday"
            return weekDay
        }
        else if number == 4{
            weekDay = "Thursday"
            return weekDay
        }
        else if number == 5{
            weekDay = "Friday"
            return weekDay
        }
        else if number == -1{
            weekDay = "Saturday"
            return weekDay
        }
        return weekDay
    }
}


