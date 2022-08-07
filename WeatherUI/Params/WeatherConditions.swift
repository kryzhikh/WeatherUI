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

    func imageName(_ size: ImageSize) -> String {
        return "\(imageName)\(size.imageSuffix)"
    }

    private var imageName: String {
        switch self {
        case .clearSky:
            return "sun"
        case .partlyCloudy:
            return "cloudy"
        case .cloudy:
            return "overcastClouds"
        case .rainy:
            return "rain_1"
        case .heavyRainy:
            return "rain_2"
        case .snowy:
            return "snowing"
        case .thunderStormy:
            return "storm"
        case .veryHot:
            return "hot"
        case .tooCold:
            return "cold"
        case .windy:
            return "tornado"
        }
    }
}

extension WeatherConditions {
    enum ImageSize {
        case small, big

        var imageSuffix: String {
            switch self {
            case .small:
                return "_35"
            case .big:
                return "_120"
            }
        }
    }
}
