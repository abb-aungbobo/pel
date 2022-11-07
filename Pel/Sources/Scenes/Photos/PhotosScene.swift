//
//  PhotosScene.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum PhotosScene {
    static func create() -> PhotosView {
        let photoSearchService = PhotoSearchServiceImpl()
        let viewModel = PhotosViewModel(photoSearchService: photoSearchService)
        let view = PhotosView(viewModel: viewModel)
        return view
    }
    
    static func mock() -> PhotosView {
        let photoSearchService = PhotoSearchServiceMock()
        let viewModel = PhotosViewModel(photoSearchService: photoSearchService)
        let view = PhotosView(viewModel: viewModel)
        return view
    }
}
