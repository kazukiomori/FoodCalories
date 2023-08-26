//
//  TimeFormatting.swift
//  FoodCalories
//
//  Created by Kazuki Omori on 2023/08/27.
//

import Foundation

func calcTimeSince(date: Date) -> String {
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 120 {
        return "\(minutes) 分前"
    } else if minutes >= 120, hours < 48 {
        return "\(hours) 時間前"
    } else {
        return "\(days) 日前"
    }
}
