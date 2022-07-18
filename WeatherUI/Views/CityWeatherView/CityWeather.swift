//
//  CityWeather.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import Foundation

struct CityWeather {
    let cityName: String
    let currentTemperature: Temperature
    let conditions: WeatherConditions
    let date: String
    let windSpeed: WindSpeed
    let humidity: Int
    let pressure: Float
    let dayItems: [WeatherDayItem]
}
