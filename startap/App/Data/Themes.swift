//
//  Themes.swift
//  startap
//
//  Created by Ksenia Svidunovich on 02.12.2024.
//

import Foundation

struct Theme {
    var backgroundColor: Color
    var textColor: Color
    var buttonColor: Color
    var buttonTextColor: Color
}
struct Themes {
    static let light = Theme(
        backgroundColor: Color("NeavyBlue"),
        textColor: Color("BlackSuper"),
        buttonColor: Color("BlueDiva"),
        buttonTextColor: Color("WhiteSuper")
    )
    static let dark = Theme(
        backgroundColor: Color("BlackSuper"),
        textColor: Color("WhiteSuper"),
        buttonColor: Color("NeavyBlue")),
        buttonTextColor: Color("WhiteSuper")
    )
}
class ThemeManager: ObservableObject {
    @AppStorage("selectedTheme") var selectedTheme: String = "light" {
        didSet {
            switch selectedTheme {
            case "light":
                currentTheme = Themes.light
            case "dark":
                currentTheme = Themes.dark
            default:
                currentTheme = Themes.light
            }
        }
    }
    @Published var currentTheme: Theme = Themes.light
    init() {
        switch selectedTheme {
        case "light":
            currentTheme = Themes.light
        case "dark":
            currentTheme = Themes.dark
        default:
            currentTheme = Themes.light
        }
    }
}
