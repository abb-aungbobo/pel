//
//  VideoResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct VideoResponse: Codable {
    let id: Int
    let image: String
    let videoFiles: [VideoFileResponse]
    
    enum CodingKeys: String, CodingKey {
        case id
        case image
        case videoFiles = "video_files"
    }
}

extension VideoResponse {
    func toVideo() -> Video? {
        guard let response = videoFiles.first else { return nil }
        return Video(id: id, image: image, videoFile: response.toVideoFile())
    }
}

extension Array where Element == VideoResponse {
    func toVideos() -> [Video] {
        return compactMap { response in
            return response.toVideo()
        }
    }
}
