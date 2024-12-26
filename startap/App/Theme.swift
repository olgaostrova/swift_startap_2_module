//
//  Theme.swift
//  startap
//
//  Created by Ksenia Svidunovich on 23.12.2024.
//

import SwiftUI

struct Theme {
    var backgroundColor: Color
    var textColor: Color
}

struct Themes {
    static let light = Theme(
        backgroundColor: Color("WhiteKnowlage"),
        textColor: Color("BlackSuper")
    )
    
    static let dark = Theme(
        backgroundColor: Color("BlackSuper"),
        textColor: Color("WhiteKnowlage")
    )
    
    static let blue = Theme(
        backgroundColor: Color.blue.opacity(0.1),
        textColor: Color("BlackSuper")
    )
}
