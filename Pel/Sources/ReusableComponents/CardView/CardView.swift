//
//  CardView.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SDWebImageSwiftUI
import SwiftUI

struct CardView: View {
    let viewModel: CardViewModel
    
    var body: some View {
        WebImage(url: viewModel.imageURL)
            .resizable()
            .placeholder {
                Rectangle().foregroundColor(.secondary.opacity(0.3))
            }
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 160, minHeight: 240)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}
