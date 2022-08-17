//
//  OnboardingRoutes.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation
import SwiftUIRouter

enum OnboardingRoutes: String{
    case signin = "/signin"
    case welcome = "/welcome"
}

extension OnboardingRoutes {
    func navigator(argument: [String : Any]? = nil) -> NavigationRouteLink {
        switch self {
        case .signin:
            return NavigationRouteLink(path: self.rawValue)
        case .welcome:
            return NavigationRouteLink(path: self.rawValue)
        }
    }
    
   static var allRoute: [NavigationRoute] {
        let welcome = NavigationRoute(path: welcome.rawValue, destination: WelcomeScreen())
        
        let signin = NavigationRoute(path: signin.rawValue) { route in
            SignInScreen()
                .provideViewModel(
                    create: {
                        SignInViewModel(
                            usecase: SocialAuthUseCase(
                                repository: SocialAuthRepositoryImpl(
                                    socialAuthApi: SocialAuthApiImpl(networkClient: injector.get())
                                )
                            )
                        )
                    }
                )
        }
        
        return [ welcome, signin ]
    }
}
