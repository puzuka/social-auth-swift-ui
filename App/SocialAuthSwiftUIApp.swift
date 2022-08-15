//
//  SocialAuthSwiftUIApp.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI

@main
struct SocialAuthSwiftUIApp: App {
    @StateObject var appSettings = AppSettingBloc()
    let route = Routes();
    
    @ViewBuilder
    var rootView: some View {
        route.generateRoutes(route: appSettings.routeCurrent)
    }
    
    var body: some Scene {
        WindowGroup {
            rootView
                .environmentObject(appSettings)
        }
    }
}
