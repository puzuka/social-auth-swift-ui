//
//  NetworkError.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 16/08/2022.
//

import Foundation

public enum NetworkError: Error, Equatable {
    case badURL(_ error: String)
    case unauthorized(code: Int, error: String)
    case badRequest(code: Int, error: String)
    case forbidden(code: Int, error: String)
    case serverError(code: Int, error: String)
    case unknown(code: Int, error: String)
}
