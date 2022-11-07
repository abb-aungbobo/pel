//
//  PhotoScene.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum PhotoScene {
    static func create(photo: Photo) -> PhotoView {
        let viewModel = photo.toPhotoViewModel()
        let view = PhotoView(viewModel: viewModel)
        return view
    }
}
