//
//  Endpoints.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum Endpoints {
    static func searchPhotos(query: String) -> Endpoint {
        let path = "/v1/search"
        let query = URLQueryItem(name: "query", value: query)
        let orientation = URLQueryItem(name: "orientation", value: "portrait")
        return .apiPexels(path: path, queryItems: [query, orientation])
    }
    
    static func searchVideos(query: String) -> Endpoint {
        let path = "/videos/search"
        let query = URLQueryItem(name: "query", value: query)
        let orientation = URLQueryItem(name: "orientation", value: "portrait")
        return .apiPexels(path: path, queryItems: [query, orientation])
    }
}
