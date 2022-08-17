//
//  HomeScreen.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 17/08/2022.
//

import SwiftUI

struct HomeScreen: View {
    let userInfo: User
    
    var body: some View {
        Text("Hello, \(userInfo.name)!")
    }
}
