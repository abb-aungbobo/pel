//
//  SrcResponse.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

struct SrcResponse: Codable {
    let original: String
    let portrait: String
}

extension SrcResponse {
    func toSrc() -> Src {
        return Src(original: original, portrait: portrait)
    }
}
