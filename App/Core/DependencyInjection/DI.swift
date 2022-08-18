//
//  DI.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 16/08/2022.
//

import Foundation

let injector = InjectorImpl()

class DependencyInjection {
    func inject() -> Void {
        let networkClient = NetworkClient(host: "http://restapi.adequateshop.com/api")
        
        injector.register(networkClient)
    }
}
