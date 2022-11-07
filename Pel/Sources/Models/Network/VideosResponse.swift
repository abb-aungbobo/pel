//
//  VideosResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct VideosResponse: Codable {
    let videos: [VideoResponse]
}

extension VideosResponse {
    func toVideos() -> Videos {
        return Videos(videos: videos.toVideos())
    }
}
