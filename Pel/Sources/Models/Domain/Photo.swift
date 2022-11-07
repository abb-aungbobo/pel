//
//  Photo.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct Photo: Identifiable, Hashable {
    let id: Int
    let src: Src
    
    static var fake: Photo {
        return Photos.fake.photos.randomElement()!
    }
}

extension Photo {
    func toCardViewModel() -> CardViewModel {
        let url = URL(string: src.portrait)
        return CardViewModel(imageURL: url)
    }
    
    func toPhotoViewModel() -> PhotoViewModel {
        let url = URL(string: src.original)
        return PhotoViewModel(imageURL: url)
    }
}
