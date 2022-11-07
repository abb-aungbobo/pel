//
//  AppError.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import Foundation

enum AppError: Identifiable, LocalizedError {
    var id: String { localizedDescription }
    
    case generic
    case networking
    case encoding
    case decoding
    case failure(Error)
    
    var errorDescription: String? {
        switch self {
        case .generic: return "Something went wrong"
        case .networking: return "Request to server failed"
        case .encoding: return "Failed parsing request to server"
        case .decoding: return "Failed parsing response from server"
        case let .failure(error): return error.localizedDescription
        }
    }
}
