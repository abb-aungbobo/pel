//
//  Route.swift
//  Pel
//
//  Created by Aung Bo Bo on 06/11/2022.
//

import SwiftUI

enum Route: Hashable {
    case photo(Photo)
    case video(Video)
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case let .photo(photo):
            PhotoScene.create(photo: photo)
        case let .video(video):
            VideoScene.create(video: video)
        }
    }
}
