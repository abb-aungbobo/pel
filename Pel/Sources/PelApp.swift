//
//  PelApp.swift
//  Pel
//
//  Created by Aung Bo Bo on 13/04/2022.
//

import SwiftUI

@main
struct PelApp: App {
    init() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.backgroundColor = .systemBackground
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = .systemBackground
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
