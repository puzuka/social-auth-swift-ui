//
//  routes.dart.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI


class Routes {
        
    @ViewBuilder
    func generateRoutes(route: String) -> some View {
        switch route {
        case WelcomeScreen.routeName:
            WelcomeScreen()
        default:
            SplashScreenView()
        }
    }
   
}
