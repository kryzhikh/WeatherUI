//
//  Fonts.swift
//  WeatherUI
//
//  Created by kostya on 02.08.2022.
//

import SwiftUI

extension Font {
    static func rubik(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        switch weight {
        case .ultraLight, .light, .thin:
            return Font.custom("Rubik-Light", size: size)
        case .regular:
            return Font.custom("Rubik-Regular", size: size)
        case .medium:
            return Font.custom("Rubik-Medium", size: size)
        case .semibold:
            return Font.custom("Rubik-SemiBold", size: size)
        case .bold, .black, .heavy:
            return Font.custom("Rubik-Bold", size: size)
        default:
            return Font.custom("Rubik-Regular", size: size)
        }

    }
}
