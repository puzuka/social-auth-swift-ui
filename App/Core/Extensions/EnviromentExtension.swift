//
//  EnviromentExtension.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation
import SwiftUI

private struct ThemeSettingsKey: EnvironmentKey {
    static var defaultValue = ThemeSettings(.light)
}

public extension EnvironmentValues {
  var theme: ThemeSettings {
    get { self[ThemeSettingsKey.self] }
    set { self[ThemeSettingsKey.self] = newValue }
  }
}
