//
//  VideoSearchServiceMock.swift
//  Pel
//
//  Created by Aung Bo Bo on 06/11/2022.
//

import Foundation

class VideoSearchServiceMock: VideoSearchService {
    func searchVideos(query: String) async throws -> Videos {
        let response: VideosResponse = try JSON.decode(from: "videos")
        return response.toVideos()
    }
}
