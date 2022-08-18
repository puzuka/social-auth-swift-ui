//
//  AppImage.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation

protocol AppImage {
    var logo: String { get }
    var google: String { get }
    var splashscreen: String { get }
    var signin: String { get }
}

class AppImageDark: AppImage {
    var logo: String = "logo_dark"
    var google: String = "img_google"
    var splashscreen: String = "splashscreen_img"
    var signin: String = "signin_img_dark"
}

class AppImageLight: AppImage {
    var logo: String = "logo_light"
    var google: String = "img_google"
    var splashscreen: String = "splashscreen_img"
    var signin: String = "signin_img_light"
}
