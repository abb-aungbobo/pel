//
//  Video.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct Video: Identifiable, Hashable {
    let id: Int
    let image: String
    let videoFile: VideoFile
    
    static var fake: Video {
        return Videos.fake.videos.randomElement()!
    }
}

extension Video {
    func toCardViewModel() -> CardViewModel {
        let url = URL(string: image)
        return CardViewModel(imageURL: url)
    }
    
    func toVideoViewModel() -> VideoViewModel {
        let url = URL(string: videoFile.link)
        return VideoViewModel(videoURL: url)
    }
}
