//
//  ThemeApp.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation
import SwiftUI

public class ThemeSettings: ObservableObject{
    var color: AppColor
    var image: AppImage
    var icon: AppIcon
    @Published var colorScheme: ColorScheme
    
    init(_ colorScheme: ColorScheme){
        self.colorScheme = colorScheme
        self.image = colorScheme == .dark ? AppImageDark() : AppImageLight()
        self.color = colorScheme == .dark ? AppColorDark() : AppColorLight()
        self.icon = colorScheme == .dark ? AppIconDark() : AppIconLight()
    }
    
    public func changeTheme(_ colorScheme: ColorScheme) -> ThemeSettings{
        return ThemeSettings(colorScheme)
    }
}
