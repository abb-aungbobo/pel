//
//  VideoSearchService.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

protocol VideoSearchService {
    func searchVideos(query: String) async throws -> Videos
}
