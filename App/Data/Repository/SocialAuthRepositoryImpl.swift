//
//  SocialAuthRepository.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 17/08/2022.
//

import Foundation

class SocialAuthRepositoryImpl: SocialAuthRepository {
    let socialAuthApi: SocialAuthApi
    
    public init(socialAuthApi: SocialAuthApi){
        self.socialAuthApi = socialAuthApi
    }
    
    func login(username: String, password: String) async throws -> User {
        let response = try await socialAuthApi.login(username: username, password: password)
        
        return response.data!.toEntity()
    }
}
