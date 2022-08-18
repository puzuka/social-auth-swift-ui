//
//  SocialAuthRepository.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 17/08/2022.
//

import Foundation

protocol SocialAuthRepository {
    func login(username: String, password: String) async throws -> User
}
