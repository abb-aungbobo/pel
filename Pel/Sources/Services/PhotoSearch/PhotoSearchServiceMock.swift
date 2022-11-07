//
//  PhotoSearchServiceMock.swift
//  Pel
//
//  Created by Aung Bo Bo on 06/11/2022.
//

import Foundation

class PhotoSearchServiceMock: PhotoSearchService {
    func searchPhotos(query: String) async throws -> Photos {
        let response: PhotosResponse = try JSON.decode(from: "photos")
        return response.toPhotos()
    }
}
