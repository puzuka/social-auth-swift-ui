//
//  SocialAuthUseCase.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 17/08/2022.
//

import Foundation


class SocialAuthUseCase {
    private let repository: SocialAuthRepository;
    
    init(repository: SocialAuthRepository){
        self.repository = repository
    }
    
    func login(username: String, password: String) async throws -> User {
        return try await repository.login(username: username, password: password)
    }
}
