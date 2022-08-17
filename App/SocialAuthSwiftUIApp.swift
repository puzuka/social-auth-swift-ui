//
//  SocialAuthSwiftUIApp.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI

@main
struct SocialAuthSwiftUIApp: App {
    init(){
        DependencyInjection().inject()
    }
    
    var body: some Scene {
        WindowGroup { Application() }
    }
}
