//
//  VideosScene.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum VideosScene {
    static func create() -> VideosView {
        let videoSearchService = VideoSearchServiceImpl()
        let viewModel = VideosViewModel(videoSearchService: videoSearchService)
        let view = VideosView(viewModel: viewModel)
        return view
    }
    
    static func mock() -> VideosView {
        let videoSearchService = VideoSearchServiceMock()
        let viewModel = VideosViewModel(videoSearchService: videoSearchService)
        let view = VideosView(viewModel: viewModel)
        return view
    }
}
