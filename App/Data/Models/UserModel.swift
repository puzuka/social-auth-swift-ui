//
//  UserModel.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Hieu Tran on 16/08/2022.
//

import Foundation

struct UserModel: Codable{
    let name: String
    let id: Int
    let email: String
    let token: String
    
    init(name: String, id: Int, email: String, token:String) {
        self.name = name
        self.id = id
        self.email = email
        self.token = token
    }
    
    private enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case email = "Email"
        case token = "Token"
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.token, forKey: .token)
    }
    public func toEntity() -> User {
        return User(id: id, name: name, email: email, token: token);
    }
}
