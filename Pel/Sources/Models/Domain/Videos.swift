//
//  Videos.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct Videos {
    let videos: [Video]
    
    static var fake: Videos {
        let response: VideosResponse = try! JSON.decode(from: "videos")
        return response.toVideos()
    }
}
