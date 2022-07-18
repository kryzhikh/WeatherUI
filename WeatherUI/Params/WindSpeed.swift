//
//  WindSpeed.swift
//  WeatherUI
//
//  Created by kostya on 04.07.2022.
//

import Foundation

struct WindSpeed: Hashable {
    let value: Float
    let units: Units

    var stringValue: String {
        return "\(Int(round(value))) \(units.stringValue)"
    }
}

extension WindSpeed {
    enum Units {
        case mps // meters per second
        case mph // miles per hour

        var stringValue: String {
            switch self {
            case .mps:
                return "m/s"
            case .mph:
                return "mph"
            }
        }
    }
}
