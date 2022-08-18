//
//  routes.dart.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUIRouter

enum AppRoutes: String, RouteName{
    case home = "/home"
    case profile = "/profile"
    
    var routeName: String {
        return self.rawValue
    }
}

extension AppRoutes {
    static var allRoute: [NavigationRoute] {
        return routesScreen
        + OnboardingRoutes.allRoute
    }
    
    static var routesScreen: [NavigationRoute] {
        let homeRoute = NavigationRoute(path: home.routeName) { routeSetting in
            ViewPageRoute(
                viewBuilder: AppMainFactory.create(
                    HomeScreen.Type.self,
                    networkClient: injector.get(),
                    argument: routeSetting.link.meta
                )
            )
        }
        
        let profileRoute = NavigationRoute(path: profile.routeName) {
            ViewPageRoute(
                viewBuilder: AppMainFactory.create(
                    ProfileScreen.Type.self,
                    networkClient: injector.get()
                )
            )
        }
        
        return [ homeRoute, profileRoute ]
    }
}
