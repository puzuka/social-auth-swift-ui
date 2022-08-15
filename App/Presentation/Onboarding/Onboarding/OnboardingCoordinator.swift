//
//  OnboardingCoordinator.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import Foundation


extension View {
    func pushToSignInScreen() -> some View {
        return SignInScreen()
    }
    
    func pushToWelcomeScreen() -> some View {
        return WelcomeScreen()
    }
}


