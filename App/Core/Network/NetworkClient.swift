//
//  RemoteApiService.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 16/08/2022.
//

import Foundation

public class NetworkClient: Requestable, ObservableObject {
    let httpClient: HttpClient = HttpClient()
    let host: String
    var header: [String: String]
    
    required public init(host: String, header: [String:String]? = nil){
        self.host = host
        self.header = header ?? ["Content-Type": "application/json"]
    }
    
    func setToken(token: String) -> Void{
        
    }
    
    private func getEndpoint(endpoint: String) -> String {
        return host + endpoint
    }
    
    private func getHeader(_ header: [String: String]?) -> [String:String] {
        if(header != nil){
            return self.header.combile(dict: header!)
        }
        
        return self.header
    }
    
    public func get<T>(url: String, headers: [String : String]?, reqQuery: Encodable?, reqTimeout: Float?) async throws -> ApiResponse<T> {
        return try await httpClient.get(url: getEndpoint(endpoint: url), headers: getHeader(headers), reqQuery: reqQuery, reqTimeout: reqTimeout)
    }
    
    public func post<T>(url: String, headers: [String : String]? = nil, reqBody: Encodable?, reqTimeout: Float? = 3) async throws -> ApiResponse<T> {
        return try await httpClient.post(url: getEndpoint(endpoint: url), headers: getHeader(headers), reqBody: reqBody, reqTimeout: reqTimeout)
    }
    
}

extension Dictionary {
    mutating func combile(dict: [Key: Value]) -> Dictionary{
        var newDic: Dictionary = [:]
        for (k, v) in dict {
            newDic[k] = v
        }
        return newDic
    }
}
