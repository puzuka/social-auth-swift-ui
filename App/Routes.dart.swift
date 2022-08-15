//
//  routes.dart.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUIRouter


extension NavigationRouteLink {
    static var welcome: NavigationRouteLink { "/welcome" }
    static var signin: NavigationRouteLink { "/signin" }
}

extension Array where Element == NavigationRoute {
    static var all: [NavigationRoute] {
        let welcome = NavigationRoute(path: "/welcome", destination: WelcomeScreen())
        let signin = NavigationRoute(path: "/signin", destination: SignInScreen())
        
        return [welcome, signin]
    }
}
