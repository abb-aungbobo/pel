//
//  VideosViewModel.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Combine

class VideosViewModel: ObservableObject {
    @Published var error: AppError?
    @Published var videos: [Video] = []
    
    private let videoSearchService: VideoSearchService
    
    init(videoSearchService: VideoSearchService) {
        self.videoSearchService = videoSearchService
    }
    
    @MainActor func searchVideos(query: String) async {
        do {
            let videos = try await videoSearchService.searchVideos(query: query)
            self.videos = videos.videos
        } catch {
            self.error = error.toAppError()
        }
    }
}
