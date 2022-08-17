//
//  ApiResponse.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Hieu Tran on 16/08/2022.
//

import Foundation

public class ApiResponse<T: Codable>: Codable {
    public var data: T?
    public var message: String
    public var code: Int
    
    private enum CodingKeys: String, CodingKey {
        case data
        case message
        case code
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.data = try? container.decodeIfPresent(T.self, forKey: .data)
        self.message = (try? container.decodeIfPresent(String.self, forKey: .message)) ?? ""
        self.code = (try? container.decodeIfPresent(Int.self, forKey: .code)) ?? 0
    }
    
    public init(data: T? = nil, message: String, code: Int) throws {
        self.data = data
        self.message = message
        self.code = code
    }
}
