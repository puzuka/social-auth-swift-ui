//
//  AppDelegate.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import SwiftUIRouter

struct AppDelegate: View {
    let router = NavigationRouter(routes: .all)
    
    var content: some View {
        NavigationView {
            RouterView(
                router: router,
                root: .welcome
            )
            .padding(.vertical, 45)
            .edgesIgnoringSafeArea(.top)
        }
        .environment(\.router, router)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    var body: some View { content }
}

struct AppDelegate_Previews: PreviewProvider {
    static var previews: some View {
        AppDelegate()
    }
}
