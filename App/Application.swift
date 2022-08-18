//
//  Application.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import SwiftUIRouter

struct Application: View {
    let router = NavigationRouter(routes: AppRoutes.allRoute)
    
    var content: some View {
        NavigationView {
            RouterView(
                router: router,
                root: router.getNavigator(OnboardingRoutes.welcome.routeName)
            )
            .padding(.vertical, 45)
            .edgesIgnoringSafeArea(.top)
        }
        .environment(\.router, router)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    var body: some View { content }
}

struct Application_Previews: PreviewProvider {
    static var previews: some View {
        Application()
    }
}
