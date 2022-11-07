//
//  PhotoView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SDWebImageSwiftUI
import SwiftUI

struct PhotoView: View {
    @State private var scale: CGFloat = 1.0
    @State private var isTapped: Bool = false
    
    let viewModel: PhotoViewModel
    
    var body: some View {
        WebImage(url: viewModel.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(scale)
            .scaleEffect(isTapped ? 2 : 1)
            .gesture(gesture)
    }
    
    private var gesture: some Gesture {
        magnificationGesture
            .simultaneously(with: tapGesture)
    }
    
    private var magnificationGesture: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                scale = value.magnitude
            }
            .onEnded { _ in
                withAnimation(.spring()) {
                    scale = 1.0
                }
            }
    }
    
    private var tapGesture: some Gesture {
        TapGesture(count: 2)
            .onEnded {
                withAnimation {
                    isTapped.toggle()
                }
            }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoScene.create(photo: .fake)
    }
}
