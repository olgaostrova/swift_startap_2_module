//
//  OnBoard.swift
//  startap
//
//  Created by Ksenia Svidunovich on 02.12.2024.
//

import Foundation

struct OnboardingData: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}
