//
//  VideoCardView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SDWebImageSwiftUI
import SwiftUI

struct VideoCardView: View {
    let viewModel: CardViewModel
    
    var body: some View {
        ZStack {
            CardView(viewModel: viewModel)
            
            Image(systemName: "play.fill")
                .font(.title)
                .foregroundColor(.secondary)
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
        }
    }
}
