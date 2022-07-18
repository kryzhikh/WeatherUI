//
//  Temperature.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import Foundation

struct Temperature: Hashable {
    let value: Float
    let units: Units

    var stringValue: String {
        return "\(Int(round(value))) \(units.stringValue)"
    }
}

extension Temperature {
    enum Units {
        case celsius
        case fahrenheit

        var stringValue: String {
            switch self {
            case .celsius:
                return "°C"
            case .fahrenheit:
                return "°F"
            }
        }
    }
}
