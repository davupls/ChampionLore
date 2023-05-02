//
//  ChampionsModel.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import Foundation

class ChampionsModel: ObservableObject {
    @Published var decodedChampions : [Champion] = []
    
    init() {
        loadChampionsData()
    }
    
    func loadChampionsData() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            fatalError("Could not load Json")
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([Champion].self, from: data)
            decodedChampions = decodedData
        } catch {
            print("Decode Error: \n \(error)")
        }
    }
}
