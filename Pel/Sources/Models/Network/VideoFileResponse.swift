//
//  VideoFileResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct VideoFileResponse: Codable {
    let link: String
}

extension VideoFileResponse {
    func toVideoFile() -> VideoFile {
        return VideoFile(link: link)
    }
}
