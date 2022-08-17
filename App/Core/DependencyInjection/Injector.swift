//
//  Injector.swift
//  SocialAuthSwiftUI
//
//  Created by Hieu Tran on 18/08/2022.
//

import Foundation

protocol Injector {
    func get<T>() -> T
}

final class InjectorImpl: Injector {
    private var services: [ObjectIdentifier: Any] = [:]
    
    func register<T>(_ service: T) {
        services[key(for: T.self)] = service
    }
    
    func get<T>() -> T {
        return services[key(for: T.self)] as! T
    }

    private func key<T>(for type: T.Type) -> ObjectIdentifier {
        return ObjectIdentifier(T.self)
    }
}
