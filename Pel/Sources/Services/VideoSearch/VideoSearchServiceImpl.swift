//
//  VideoSearchServiceImpl.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

class VideoSearchServiceImpl: VideoSearchService {
    func searchVideos(query: String) async throws -> Videos {
        let endpoint = Endpoints.searchVideos(query: query)
        let response: VideosResponse = try await NetworkController.shared.get(endpoint: endpoint)
        return response.toVideos()
    }
}
