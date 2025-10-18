//
//  TimeZone.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/19
//  
//

import Foundation
import Playgrounds

#Playground("TimeZone") {
    let tz = TimeZone(identifier: "America/Los_Angeles")!
    let tzId = tz.identifier
    let tzName = tz.localizedName(for: .standard, locale: Locale(identifier: "en_US"))!
    let secondsFromGMT = tz.secondsFromGMT()

    _ = TimeZone(identifier: "UTC")
    _ = TimeZone(secondsFromGMT: 9 * 3600)
}

#Playground("test") {
    let ny = TimeZone(identifier: "America/New_York")!
    let calendar = Calendar(identifier: .gregorian)
    let winterDate = calendar.date(from: DateComponents(year: 2025, month: 1, day: 1))!
    let summerDate = calendar.date(from: DateComponents(year: 2025, month: 7, day: 1))!

    // ニューヨークの現在のオフセット（夏ならDST含む）
    let winterOffset = ny.secondsFromGMT(for: winterDate)
    let summerOffset = ny.secondsFromGMT(for: summerDate)

    let winterAb = ny.abbreviation(for: winterDate)!
    let summerAb = ny.abbreviation(for: summerDate)!

    let ofW = ny.daylightSavingTimeOffset(for: winterDate)
    // 通常の時間とのoffset(Summer Time時にはこれが足される)
    let ofS = ny.daylightSavingTimeOffset(for: summerDate)

    let isDaylightSavingTime = ny.isDaylightSavingTime(for: summerDate)
    let nextTransition = ny.nextDaylightSavingTimeTransition
}

#Playground("locale") {
    let current = Locale(identifier: "ja_JP")
    let name = current.localizedString(forIdentifier: "fr_FR")
    let calendar = current.calendar
}
