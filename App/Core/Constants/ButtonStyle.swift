//
//  ButtonStyle.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import Foundation
import SwiftUI

struct ButtonPrimary: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(AppColor.primary)
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
            .cornerRadius(12)
    }
}


struct ButtonSecondary: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(AppColor.secondary)
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
            .cornerRadius(12)
            
    }
}
