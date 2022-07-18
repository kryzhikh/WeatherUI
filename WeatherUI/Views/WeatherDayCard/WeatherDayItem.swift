//
//  WeatherDayItem.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import Foundation

struct WeatherDayItem: Hashable {
    let dayName: String
    let date: String
    let temperature: Temperature
    let windSpeed: WindSpeed
    let condition: WeatherConditions
}
