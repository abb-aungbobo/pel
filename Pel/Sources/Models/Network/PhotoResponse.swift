//
//  PhotoResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct PhotoResponse: Codable {
    let id: Int
    let src: SrcResponse
}

extension PhotoResponse {
    func toPhoto() -> Photo {
        return Photo(id: id, src: src.toSrc())
    }
}

extension Array where Element == PhotoResponse {
    func toPhotos() -> [Photo] {
        return map { response in
            return response.toPhoto()
        }
    }
}
