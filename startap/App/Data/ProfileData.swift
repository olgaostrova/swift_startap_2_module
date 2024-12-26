//
//  ProfileData.swift
//  startap
//
//  Created by Ksenia Svidunovich on 01.12.2024.
//

import SwiftUI

struct UserProfile: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var avatar: UIImage?
    var backgroundimg: UIImage?
//    var spesialisation: String
//    var vk: String
//    var behance: String
//    var dProfile: String
}
