//
//  OnboardingData.swift
//  startap
//
//  Created by Ksenia Svidunovich on 17.12.2024.
//

import Foundation

struct OnboardingData: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var descriptionsec: String
    var backimg: String
}
