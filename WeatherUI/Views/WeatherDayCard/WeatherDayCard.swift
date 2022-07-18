//
//  WeatherDayCard.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import SwiftUI

struct WeatherDayCard: View {
    let item: WeatherDayItem

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(item.dayName)
                    Text(item.date)
                }
                .foregroundColor(.textPrimary)
                Spacer()
                Image(item.condition.imageName)
            }
            Spacer()
            HStack {
                Text(item.temperature.stringValue)
                Spacer()
                Text(item.windSpeed.stringValue)
            }
            .foregroundColor(.textPrimary)
        }
        .padding(14)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.cardBackground)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.cardBorder, lineWidth: 1)
        )
    }
}

struct WeatherDayCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WeatherDayCard(
                item: WeatherDayItem(
                    dayName: "Monday",
                    date: "July, 4",
                    temperature: Temperature(value: 24, units: .celsius),
                    windSpeed: WindSpeed(value: 4, units: .mps),
                    condition: .clearSky
                )
            )
            .preferredColorScheme(.light)

            WeatherDayCard(item: WeatherDayItem(
                dayName: "Monday",
                date: "July, 4",
                temperature: Temperature(value: 24, units: .celsius),
                windSpeed: WindSpeed(value: 4, units: .mps),
                condition: .clearSky)
            )
            .preferredColorScheme(.dark)

        }
        .previewLayout(PreviewLayout.fixed(width: 160, height: 102))
    }
}
