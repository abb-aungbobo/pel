//
//  NetworkController.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

class NetworkController {
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    static let shared = NetworkController()
    
    private init() {}
    
    private func request<T: Codable>(for request: URLRequest) async throws -> T {
        var request = request
        request.setValue(Constants.apiKey, forHTTPHeaderField: "Authorization")
        let (data, _)  = try await URLSession.shared.data(for: request)
        return try decoder.decode(T.self, from: data)
    }
    
    func get<ResponseType: Codable>(endpoint: Endpoint) async throws -> ResponseType {
        var urlRequest = URLRequest(url: endpoint.url)
        urlRequest.httpMethod = endpoint.httpMethod.rawValue
        return try await request(for: urlRequest)
    }
}
