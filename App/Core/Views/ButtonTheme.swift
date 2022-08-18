//
//  ThemeButton.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import SwiftUI

struct ButtonTheme<Label: View>: View {
    @Environment(\.theme) var theme
    
    let action: () -> Void
    let label: () -> Label
    let isPrimary: Bool
    
    init(label:  @escaping () -> Label, action: @escaping () -> Void, isPrimary:Bool = true){
        self.action = action
        self.label = label
        self.isPrimary = isPrimary
    }
        
    var body: some View {
        Button (
            action: action,
            label: label
        ).buttonStyle(ButtonStyleDefault(color: isPrimary ? theme.color.primary : theme.color.secondary))
    }
}
