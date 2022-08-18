//
//  HttpClient.swift
//  SocialAuthSwiftUI
//
//  Created by Develop on 16/08/2022.
//

import Foundation

public class HttpClient: HttpService, Requestable {
    public func get<T>(url: String, headers: [String : String]?, reqQuery: Encodable?, reqTimeout: Float?) async throws -> ApiResponse<T> {
        let apiRequest = ApiRequest(url: url, headers: headers, reqBody: reqQuery, reqTimeout: reqTimeout, httpMethod: .GET)
        return try await self.request(apiRequest);
    }
    
    public func post<T>(url: String, headers: [String: String]?, reqBody: Encodable?, reqTimeout: Float?) async throws -> ApiResponse<T> {
        let apiRequest = ApiRequest(url: url, headers: headers, reqBody: reqBody, reqTimeout: reqTimeout, httpMethod: .POST)
        return try await self.request(apiRequest);
    }
}

public enum HttpMethod: String {
    case GET
    case POST
    case PUT
    case DELETE
}

public protocol Requestable {
    func get<T: Codable>(url: String, headers: [String: String]?, reqQuery: Encodable?, reqTimeout: Float? ) async throws -> ApiResponse<T>
    func post<T: Codable>(url: String, headers: [String: String]?, reqBody: Encodable?, reqTimeout: Float? ) async throws -> ApiResponse<T>
    // put
    // delete
}

public class HttpService {
    public func request<T>(_ req: ApiRequest) async throws -> ApiResponse<T>  {
        let sessionConfig = URLSessionConfiguration.default
        
        if req.requestTimeOut != nil {
            sessionConfig.timeoutIntervalForRequest = TimeInterval(req.requestTimeOut ?? 3)
        }
        
        guard let url = URL(string: req.url) else {
            throw NetworkError.badURL("Ivalid Url")
        }
        
        let (data, response) = try await URLSession.shared.data(for: req.buildURLRequest(with: url))
        
        guard response is HTTPURLResponse else {
            throw NetworkError.serverError(code: 0, error: "Server error")
        }
      
        let decoder = JSONDecoder()
        let apiResponse = try decoder.decode(ApiResponse<T>.self, from: data)
        
        if apiResponse.data != nil {
            return apiResponse
        } else {
            switch apiResponse.code {
            case 400:
                throw NetworkError.badRequest(code: apiResponse.code, error: apiResponse.message)
            case 401:
                throw NetworkError.unauthorized(code: apiResponse.code, error: apiResponse.message)
            case 403:
                throw NetworkError.forbidden(code: apiResponse.code, error: apiResponse.message)
            default:
                throw NetworkError.unknown(code: apiResponse.code, error: apiResponse.message)
            }
        }
    }
}
