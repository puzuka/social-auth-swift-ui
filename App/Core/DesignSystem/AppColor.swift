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

class AppColor {
    static let primary: Color = UIColor(red: 0.424, green: 0.365, blue: 0.827, alpha: 1).color
    static let secondary: Color = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1).color
    static let subTitle: Color = UIColor(red: 0.439, green: 0.447, blue: 0.506, alpha: 1).color
}
