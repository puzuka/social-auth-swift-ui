//
//  MainAppFactory.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 18/08/2022.
//

import Foundation
import SwiftUI

class AppMainFactory{
    static func create<T>(_ type: T.Type, networkClient: NetworkClient, argument: [String : Any]? = nil) -> AnyView {
        switch "\(type)" {
        case "\(HomeScreen.Type.self)":
          let userInfo = argument!["userInfo"] as! User
          return  AnyView(HomeScreen(userInfo: userInfo))
        case "\(ProfileScreen.Type.self)":
            return AnyView(ProfileScreen())
        default:
            return AnyView(EmptyView())
        }
    }
}
