//
//  OnboardingFactory.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 18/08/2022.
//

import Foundation
import SwiftUI

class OnboardingFactory{
    static func create<T>(_ type: T.Type, networkClient: NetworkClient, argument: [String : Any]? = nil) -> AnyView {
        if(WelcomeScreen.Type.self == type){
            return AnyView(WelcomeScreen())
        } else if(SignInScreen.Type.self == type){
            return AnyView(SignInScreen()
                  .provideViewModel(
                      create: {
                          SignInViewModel(
                              usecase: SocialAuthUseCase(
                                  repository: SocialAuthRepositoryImpl(
                                      socialAuthApi: SocialAuthApiImpl(networkClient: networkClient)
                                  )
                              )
                          )
                      }
                  )
              )
        }
        
        return AnyView(EmptyView())
        
    }
}

