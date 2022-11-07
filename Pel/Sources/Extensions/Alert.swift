//
//  Alert.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SwiftUI

extension Alert {
    init(error: AppError) {
        self.init(title: Text("Oops!"), message: Text(error.localizedDescription), dismissButton: .cancel(Text("Dismiss")))
    }
}
