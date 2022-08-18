//
//  AppIcon.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation

protocol AppIcon {
    var google: String { get }
    var apple: String { get }
    var facebook: String { get }
}

struct AppIconLight: AppIcon {
    var google: String = "ic_google"
    var apple: String = "ic_apple"
    var facebook: String = "ic_facebook"
}

struct AppIconDark: AppIcon {
    var google: String = "ic_google"
    var apple: String = "ic_apple_dark"
    var facebook: String = "ic_facebook"
}
