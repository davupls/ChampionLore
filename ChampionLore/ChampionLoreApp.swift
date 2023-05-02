//
//  ChampionLoreApp.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import SwiftUI

@main
struct ChampionLoreApp: App {
    @StateObject private var champions = ChampionsModel()
    
    var body: some Scene {
        WindowGroup {
            ChampionsView()
                .environmentObject(champions)
        }
    }
}
