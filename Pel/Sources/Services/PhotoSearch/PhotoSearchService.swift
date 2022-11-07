//
//  PhotoSearchService.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

protocol PhotoSearchService {
    func searchPhotos(query: String) async throws -> Photos
}
