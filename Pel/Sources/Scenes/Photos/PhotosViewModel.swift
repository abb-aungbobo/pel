//
//  PhotosViewModel.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Combine

class PhotosViewModel: ObservableObject {
    @Published var error: AppError?
    @Published var photos: [Photo] = []
    
    private let photoSearchService: PhotoSearchService
    
    init(photoSearchService: PhotoSearchService) {
        self.photoSearchService = photoSearchService
    }
    
    @MainActor func searchPhotos(query: String) async {
        do {
            let photos = try await photoSearchService.searchPhotos(query: query)
            self.photos = photos.photos
        } catch {
            self.error = error.toAppError()
        }
    }
}
