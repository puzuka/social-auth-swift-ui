//
//  MainAppFactory.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 18/08/2022.
//

import Foundation
import SwiftUI

class AppMainFactory{
    static func create<T>(_ type: T.Type, networkClient: NetworkClient, argument: [String : Any]? = nil) -> AnyView {
        if(HomeScreen.Type.self == type){
            let userInfo = argument!["userInfo"] as! User
    
            return AnyView(HomeScreen(userInfo: userInfo))
        } else if(ProfileScreen.Type.self == type){
            return AnyView(ProfileScreen())
        }
        
        return AnyView(EmptyView())
    }
}
