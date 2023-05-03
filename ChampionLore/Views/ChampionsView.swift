//
//  ContentView.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import SwiftUI

struct ChampionsView: View {
    @StateObject var champions = ChampionsModel()
    
    var body: some View {
        NavigationStack {
//            VStack {
//                List(model.decodedChampions) { champ in
//                    NavigationLink {
//                        Text("Champ Details")
//                    } label: {
//                        VStack(alignment: .leading) {
//                            Text(champ.name)
//                                .font(.title2)
//                            Text(champ.slogan)
//                                .foregroundColor(.secondary).padding(.bottom)
//                        }
//                    }
//                }
//                .listStyle(.plain)
//                .navigationTitle("Champions Lore")
//            }
            List(champions.decodedChampions) { champ in
                NavigationLink(champ.name, value: champ)
            }
            .navigationDestination(for: Champion.self) { champ in
                ChampionDetailView(champ: champ)
            }
            .listStyle(.plain)
            .navigationTitle("Champion Lores")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var model = ChampionsModel()
    
    static var previews: some View {
        ChampionsView()
            .environmentObject(model)
    }
}
