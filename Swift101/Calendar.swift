//
//  Calendar.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/19
//  
//

import SwiftUI
import Playgrounds

#Playground("Calendar") {
    let cal = Calendar(identifier: .gregorian)
    var format = DateFormatter()
    format.locale = Locale(identifier: "en_US")
    format.timeZone = TimeZone(identifier: "America/New_York")
    format.dateStyle = .full
    format.timeStyle = .medium
    let iso = ISO8601DateFormatter()

    let isoString = iso.string(from: Date())
    let dateString = format.string(from: Date())
}


#Playground("今日/昨日/明日") {
    let calendar = Calendar(identifier: .gregorian)
    let today = Date()
    let day = today.addingTimeInterval(60 * 60 * 24)
    let isToday = calendar.isDateInToday(day)
}

#Playground("DateComponentから生成") {
    let calendar = Calendar(identifier: .gregorian)
    let day = calendar.date(from: .init(year: 2025, month: 5, day: 21))
    let aDay = calendar.date(bySettingHour: 9, minute: 24, second: 30, of: Date())
}

#Playground("DateComponents") {
    let calendar = Calendar(identifier: .gregorian)
    let day = calendar.date(bySettingHour: 10, minute: 20, second: 30, of: Date())
    let newDay = calendar.dateComponents([.year, .hour], from: day!)
    let hour = newDay.hour
}
