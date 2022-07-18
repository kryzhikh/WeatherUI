//
//  CityWeatherView.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import SwiftUI

struct CityWeatherView: View {
    let model: CityWeather

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0.0) {
                HStack {
                    Text(model.cityName)
                        .font(.system(size: 18, weight: .regular))
                    Image("city_pin")
                }
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(model.currentTemperature.stringValue)
                            .font(.system(size: 64, weight: .regular))
                        Group {
                            Text(model.conditions.description)
                            Text(model.date)
                        }
                        .font(.system(size: 18, weight: .regular))
                    }
                    Spacer()
                    Image(model.conditions.bigImageName)
                }
                HStack {
                    Label(model.windSpeed.stringValue, image: "wind")
                    Spacer()
                    Label("\(model.humidity) %", image: "humidity")
                    Spacer()
                    Label("\(String(format: "%.3f", model.pressure)) mBar", image: "pressure")
                }
                .padding(.top, 20)
            }
            .padding()
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(model.dayItems, id: \.self) { item in
                    WeatherDayCard(item: item)
                }
            }
            .padding()
        }
    }
}

struct CityWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CityWeatherView(
            model: CityWeather(
                cityName: "Taganrog",
                currentTemperature: Temperature(value: 24, units: .celsius),
                conditions: .clearSky,
                date: "Wednesday July, 6",
                windSpeed: WindSpeed(value: 1, units: .mps),
                humidity: 40,
                pressure: 0.533,
                dayItems: [
                    WeatherDayItem(
                        dayName: "Monday",
                        date: "July, 4",
                        temperature: Temperature(value: 24, units: .celsius),
                        windSpeed: WindSpeed(value: 4, units: .mps),
                        condition: .clearSky
                    ),
                    WeatherDayItem(
                        dayName: "Tuesday",
                        date: "July, 5",
                        temperature: Temperature(value: 24, units: .celsius),
                        windSpeed: WindSpeed(value: 4, units: .mps),
                        condition: .clearSky
                    ),
                    WeatherDayItem(
                        dayName: "Wednesday",
                        date: "July, 6",
                        temperature: Temperature(value: 24, units: .celsius),
                        windSpeed: WindSpeed(value: 4, units: .mps),
                        condition: .clearSky
                    ),
                    WeatherDayItem(
                        dayName: "Thursday",
                        date: "July, 7",
                        temperature: Temperature(value: 24, units: .celsius),
                        windSpeed: WindSpeed(value: 4, units: .mps),
                        condition: .cloudy
                    )
                ]
            )
        )
    }
}
