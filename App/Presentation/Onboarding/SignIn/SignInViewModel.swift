//
//  SignInViewModel.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 16/08/2022.
//

import Foundation
import SwiftUI

class SignInViewModel: ObservableObject{
    let usecase: SocialAuthUseCase
    
    @Published var userData: User? = nil
    @Published var username: String = "PuzDev@gmail.coms"
    @Published var password: String = "123456"
    @Published var isShowMessage: Bool = false
    @Published var isDone: Bool = false
    
    var messageError: String = ""
    var isLoading: Bool = false
    
    required public init(usecase: SocialAuthUseCase){
        self.usecase = usecase
    }
    
    public func login() -> Void {
        Task {
            do {
                let res = try await usecase.login(username: username, password: password)
                self.userData = res
            } catch let error as NetworkError {
                switch error {
                case .unknown(code: let code, error: let err):
                    messageError = "[#\(code)] \(err)"
                default:
                    messageError = "Something went wrong!"
                }
                isShowMessage = true
            }
        }
        
    }
}
