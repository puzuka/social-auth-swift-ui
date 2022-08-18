//
//  OnboardingRoutes.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 18/08/2022.
//

import Foundation
import SwiftUIRouter

public enum OnboardingRoutes: String, RouteName{
    case signin = "/signin"
    case welcome = "/welcome"
    
    var routeName: String {
        return self.rawValue
    }
}

extension OnboardingRoutes {
   static var allRoute: [NavigationRoute] {
        let welcomeRoute = NavigationRoute(path: welcome.routeName){
           ViewPageRoute(
                viewBuilder: OnboardingFactory.create(
                    WelcomeScreen.Type.self,
                    networkClient: injector.get()
                )
           )
        }
        
        let signinRoute = NavigationRoute(path: signin.routeName) {
            ViewPageRoute(
                viewBuilder: OnboardingFactory.create(
                    SignInScreen.Type.self,
                    networkClient: injector.get()
                )
            )
        }
        
        return [ welcomeRoute, signinRoute ]
    }
}
