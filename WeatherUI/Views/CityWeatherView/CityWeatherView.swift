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
                        .font(.rubik(size: 18))
                    Image("city_pin")
                }
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(model.currentTemperature.description)
                            .font(.rubik(size: 64))
                        Group {
                            Text(model.conditions.description)
                            Text(model.date)
                        }
                        .font(.rubik(size: 18))
                    }
                    Spacer()
                    Image(model.conditions.imageName(.big))
                }
                HStack {
                    Label(model.windSpeed.description, image: "wind")
                    Spacer()
                    Label("\(model.humidity) %", image: "humidity")
                    Spacer()
                    Label(model.pressure.description, image: "pressure")
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
                currentTemperature: Temperature(value: 24, unit: .celsius),
                conditions: .clearSky,
                date: "Wednesday July, 6",
                windSpeed: Speed(value: 1, unit: .metersPerSecond),
                humidity: 40,
                pressure: Pressure(value: 0.533, unit: .millibars),
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
        )
    }
}
