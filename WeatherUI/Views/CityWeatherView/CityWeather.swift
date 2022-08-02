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
    let windSpeed: Speed
    let humidity: Int
    let pressure: Pressure
    let dayItems: [WeatherDayItem]
}
