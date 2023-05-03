//
//  ContentView.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import SwiftUI

struct ChampionsView: View {
    @EnvironmentObject var model: ChampionsModel
    
    var body: some View {
        VStack {
            List(model.decodedChampions) { champ in
                VStack(alignment: .leading) {
                    Text(champ.name)
                        .font(.title2)
                    Text(champ.slogan)
                        .foregroundColor(.secondary).padding(.bottom)
                }
            }.listStyle(.plain)
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
