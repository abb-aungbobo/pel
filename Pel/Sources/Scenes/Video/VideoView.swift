//
//  VideoView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import AVKit
import SwiftUI

struct VideoView: View {
    @State private var player = AVPlayer()
    
    let viewModel: VideoViewModel

    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                guard let url = viewModel.videoURL else { return }
                player = AVPlayer(url: url)
                player.play()
            }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoScene.create(video: .fake)
    }
}
