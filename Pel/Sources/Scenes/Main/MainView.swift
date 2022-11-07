//
//  MainView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            tabView
                .tint(.blue)
                .navigationTitle("Pel")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: Route.self, destination: \.destination)
        }
        .tint(.clear)
    }
     
    private var tabView: some View {
        TabView {
            PhotosScene.create()
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }
            
            VideosScene.create()
                .tabItem {
                    Label("Videos", systemImage: "video")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
