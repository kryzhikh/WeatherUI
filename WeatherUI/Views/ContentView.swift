//
//  ContentView.swift
//  WeatherUI
//
//  Created by kostya on 03.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CityWeatherView(model: model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let model = CityWeather(
    cityName: "Taganrog",
    currentTemperature: Temperature(value: 24, unit: .celsius),
    conditions: .clearSky,
    date: "Wednesday July, 6",
    windSpeed: Speed(value: 1, unit: .metersPerSecond),
    humidity: 40,
    pressure: Pressure(value: 0.554, unit: .millibars),
    dayItems: [
        WeatherDayItem(
            dayName: "Monday",
            date: "July, 4",
            temperature: Temperature(value: 24, unit: .celsius),
            windSpeed: Speed(value: 4, unit: .metersPerSecond),
            condition: .clearSky
        ),
        WeatherDayItem(
            dayName: "Tuesday",
            date: "July, 5",
            temperature: Temperature(value: 24, unit: .celsius),
            windSpeed: Speed(value: 4, unit: .metersPerSecond),
            condition: .clearSky
        ),
        WeatherDayItem(
            dayName: "Wednesday",
            date: "July, 6",
            temperature: Temperature(value: 24, unit: .celsius),
            windSpeed: Speed(value: 4, unit: .metersPerSecond),
            condition: .clearSky
        ),
        WeatherDayItem(
            dayName: "Thursday",
            date: "July, 7",
            temperature: Temperature(value: 24, unit: .celsius),
            windSpeed: Speed(value: 4, unit: .metersPerSecond),
            condition: .cloudy
        )
    ]
)
