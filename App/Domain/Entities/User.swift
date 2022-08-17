//
//  User.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 17/08/2022.
//

import Foundation

struct User {
    let id: Int
    let name: String
    let email: String
    let token: String
    
    public init(id: Int, name: String, email: String, token: String){
        self.id = id
        self.name = name
        self.email = email
        self.token = token
    }
}
