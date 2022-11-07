//
//  PhotosView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SwiftUI

struct PhotosView: View {
    private let columns = [GridItem(.adaptive(minimum: 160), spacing: 16)]
    
    @StateObject var viewModel: PhotosViewModel
    
    var body: some View {
        scrollView
            .alert(item: $viewModel.error, content: Alert.init)
            .task {
                guard let query = Query.allCases.randomElement() else { return }
                await viewModel.searchPhotos(query: query.rawValue)
            }
    }
    
    private var scrollView: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                photos
            }
            .padding(16)
        }
    }
    
    private var photos: some View {
        ForEach(viewModel.photos, id: \.id) { photo in
            NavigationLink(value: Route.photo(photo)) {
                CardView(viewModel: photo.toCardViewModel())
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosScene.mock()
    }
}
