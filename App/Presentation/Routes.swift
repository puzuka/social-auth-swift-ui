//
//  routes.dart.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUIRouter

extension Array where Element == NavigationRoute {
    static var all: [NavigationRoute] {
        
        return AppRoutes.allRoute
        + OnboardingRoutes.allRoute
    }
}

enum AppRoutes: String{
    case home = "/home"
    case profile = "/profile"
}

extension AppRoutes {
    func navigator(argument: [String : Any]?) -> NavigationRouteLink {
        switch self {
        case .home:
            return NavigationRouteLink(path: self.rawValue,  meta: argument!)
        case .profile:
            return NavigationRouteLink(path: self.rawValue)
        }
    }
    
    static var allRoute: [NavigationRoute] {
        let home = NavigationRoute(path: AppRoutes.home.rawValue) { routeSetting in
            HomeScreen(userInfo: routeSetting.link.meta["userInfo"] as! User)
        }
        
        let profile = NavigationRoute(path: AppRoutes.profile.rawValue, destination: ProfileScreen())
        
        return [ home, profile ]
    }
}
