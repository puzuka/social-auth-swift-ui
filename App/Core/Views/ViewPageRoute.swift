//
//  ViewPageRoute.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import SwiftUI

struct ViewPageRoute: View {
    @Environment(\.theme) var theme
    
    let viewBuilder: AnyView
    
    var body: some View {
        viewBuilder
            .frame(maxWidth: .infinity, maxHeight:.infinity)
            .background(theme.color.backgroundApp.edgesIgnoringSafeArea(.all))
    }
}
