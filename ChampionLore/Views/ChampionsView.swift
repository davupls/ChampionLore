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
                Text(champ.name)
            }
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
