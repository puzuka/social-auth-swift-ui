//
//  ButtonStyle.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import Foundation
import SwiftUI

struct ButtonStyleDefault: ButtonStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(color)
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
            .cornerRadius(12)
    }
}
