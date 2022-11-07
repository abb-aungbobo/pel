//
//  PhotosResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct PhotosResponse: Codable {
    let photos: [PhotoResponse]
}

extension PhotosResponse {
    func toPhotos() -> Photos {
        return Photos(photos: photos.toPhotos())
    }
}
