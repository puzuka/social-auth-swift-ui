//
//  SocialAuthApi.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 16/08/2022.
//

import Foundation

protocol SocialAuthApi {
    func login(username: String, password: String) async throws -> ApiResponse<UserModel>
}

public class SocialAuthApiImpl: SocialAuthApi {
    private let networkClient: NetworkClient;
    
    required public init(networkClient: NetworkClient){
        self.networkClient = networkClient
    }
    
    func login(username: String, password: String) async throws -> ApiResponse<UserModel> {
        return try await networkClient
            .post(
                url: EndpointApi.login.rawValue,
                reqBody: LoginRequest(email: username, password: password))
            
    }
}

