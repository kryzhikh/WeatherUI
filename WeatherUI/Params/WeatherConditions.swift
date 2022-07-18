//
//  WeatherConditions.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import Foundation

enum WeatherConditions: Hashable {
    case clearSky
    case partlyCloudy
    case cloudy
    case rainy
    case heavyRainy
    case snowy
    case thunderStormy
    case veryHot
    case tooCold
    case windy
}

extension WeatherConditions {
    var description: String {
        switch self {
        case .clearSky:
            return "It's clear sky"
        case .partlyCloudy:
            return "It's partly cloudy"
        case .cloudy:
            return "It's cloudy"
        case .rainy:
            return "It's rainy"
        case .heavyRainy:
            return "It's VERY rainy"
        case .snowy:
            return "It's snowy"
        case .thunderStormy:
            return "It's THUNDERSTORM!"
        case .veryHot:
            return "It's very hot"
        case .tooCold:
            return "It's too cold"
        case .windy:
            return "It's windy"
        }
    }
    var imageName: String {
        switch self {
        case .clearSky:
            return "sun_35"
        case .partlyCloudy:
            return "cloudy_35"
        case .cloudy:
            return "overcastClouds_35"
        case .rainy:
            return "rain_1_35"
        case .heavyRainy:
            return "rain_2_35"
        case .snowy:
            return "snowing_35"
        case .thunderStormy:
            return "storm_35"
        case .veryHot:
            return "hot_35"
        case .tooCold:
            return "cold_35"
        case .windy:
            return "tornado_35"
        }
    }

    var bigImageName: String {
        switch self {
        case .clearSky:
            return "sun_120"
        case .partlyCloudy:
            return "cloudy_120"
        case .cloudy:
            return "overcastClouds_120"
        case .rainy:
            return "rain_1_120"
        case .heavyRainy:
            return "rain_2_120"
        case .snowy:
            return "snowing_120"
        case .thunderStormy:
            return "storm_120"
        case .veryHot:
            return "hot_120"
        case .tooCold:
            return "cold_120"
        case .windy:
            return "tornado_120"
        }
    }
}
