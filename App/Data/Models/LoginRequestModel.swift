//
//  LoginRequest.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Hieu Tran on 16/08/2022.
//

import Foundation


public struct LoginRequest: Codable {
    public var email: String
    public var password: String
    
    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
    private enum CodingKeys: String, CodingKey {
        case email
        case password
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.password, forKey: .password)
    }
}
