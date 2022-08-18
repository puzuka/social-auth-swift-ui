//
//  AppColor.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI

extension UIColor {
    public var color: Color {
        return Color(self)
    }
}

protocol AppColor {
    var backgroundApp: Color { get }
    var primary: Color { get }
    var secondary: Color { get }
    var subTitle: Color { get }
}

struct AppColorDark: AppColor {
    var backgroundApp: Color = UIColor(red: 0.067, green: 0.078, blue: 0.176, alpha: 1).color
    var primary: Color = UIColor(red: 0.424, green: 0.365, blue: 0.827, alpha: 1).color
    var secondary: Color = UIColor(red: 0.126, green: 0.139, blue: 0.234, alpha: 1).color
    var subTitle: Color = UIColor(red: 0.627, green: 0.631, blue: 0.671, alpha: 1).color
}

struct AppColorLight: AppColor {
    var backgroundApp: Color = UIColor(red: 1, green: 1, blue: 1, alpha: 1).color
    var primary: Color = UIColor(red: 0.424, green: 0.365, blue: 0.827, alpha: 1).color
    var secondary: Color = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1).color
    var subTitle: Color = UIColor(red: 0.439, green: 0.447, blue: 0.506, alpha: 1).color
}
