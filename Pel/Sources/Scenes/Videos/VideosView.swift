//
//  VideosView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SwiftUI

struct VideosView: View {
    private let columns = [GridItem(.adaptive(minimum: 160), spacing: 16)]
    
    @StateObject var viewModel: VideosViewModel
    
    var body: some View {
        scrollView
            .alert(item: $viewModel.error, content: Alert.init)
            .task {
                guard let query = Query.allCases.randomElement() else { return }
                await viewModel.searchVideos(query: query.rawValue)
            }
    }
    
    private var scrollView: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                videos
            }
            .padding(16)
        }
    }
    
    private var videos: some View {
        ForEach(viewModel.videos, id: \.id) { video in
            NavigationLink(value: Route.video(video)) {
                VideoCardView(viewModel: video.toCardViewModel())
            }
        }
    }
}

struct VideosView_Previews: PreviewProvider {
    static var previews: some View {
        VideosScene.mock()
    }
}
