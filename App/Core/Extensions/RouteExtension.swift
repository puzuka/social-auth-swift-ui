//
//  RouteExtension.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation
import SwiftUIRouter

protocol RouteName {
    var routeName: String { get }
}

extension  NavigationRouter {
    func pushNamed(_ route: String, argument: [String : Any]? = [:]) -> Void {
        self.push(link: getNavigator(route, argument: argument))
    }
    
    func getNavigator(_ route: String, argument: [String : Any]? = [:]) -> NavigationRouteLink {
        return NavigationRouteLink(path: route, meta: argument ?? [:])
    }
}
