//
//  Photos.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct Photos {
    let photos: [Photo]
    
    static var fake: Photos {
        let response: PhotosResponse = try! JSON.decode(from: "photos")
        return response.toPhotos()
    }
}
