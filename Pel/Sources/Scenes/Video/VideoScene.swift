//
//  VideoScene.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum VideoScene {
    static func create(video: Video) -> VideoView {
        let viewModel = video.toVideoViewModel()
        let view = VideoView(viewModel: viewModel)
        return view
    }
}
