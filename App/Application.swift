//
//  Application.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import SwiftUIRouter

struct Application: View {
    @Environment(\.colorScheme) var colorScheme
    
    let router = NavigationRouter(routes: AppRoutes.allRoute)
    
    var content: some View {
        NavigationView {
            RouterView(
                router: router,
                root: router.getNavigator(OnboardingRoutes.welcome.routeName)
            )
            .edgesIgnoringSafeArea(.all)
        }
        .environment(\.router, router)
        .environment(\.theme, ThemeSettings(colorScheme))
        .navigationViewStyle(StackNavigationViewStyle())

    }
    
    var body: some View { content}
}
