//
//  PhotoSearchServiceImpl.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

class PhotoSearchServiceImpl: PhotoSearchService {
    func searchPhotos(query: String) async throws -> Photos {
        let endpoint = Endpoints.searchPhotos(query: query)
        let response: PhotosResponse = try await NetworkController.shared.get(endpoint: endpoint)
        return response.toPhotos()
    }
}
